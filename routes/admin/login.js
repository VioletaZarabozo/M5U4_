var express = require('express');
var router = express.Router();
var suscripcionModel = require('./../../models/suscripcionModel');

router.get('/', function(req,res,next) {
	res.render('admin/login', {
	layout:'admin/layout',
	});
});

router.post('/', async (req, res, next) => {
	try{
		var nombre = req.body.nombre;
		var mail = req.body.mail;
		var password = req.body.password;

		var data = await suscripcionModel.getUserAndPassword(nombre, mail, password);
		
		if (data != undefined) {
			req.session.id_nombre = data.id;
			req.session.nombre = data.nombre;

		    res.redirect('/admin/novedades');
		} else {
			res.render('admin/login', {
				layout: 'admin/layout',
				error: true 
			});
		}

	} catch (error) {
		console.log(error);
	}
});

router.get('/logout', function(req, res, next) {
	req.session.destroy();
	res.render('admin/login', {
		layout: 'admin/layout'
	});
});

module.exports = router;