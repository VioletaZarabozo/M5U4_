var express = require('express');
var router = express.Router();
var nodemailer = require('nodemailer');
var novedadesModel = require('../models/novedadesModel');
var cloudinary = require('cloudinary').v2;

/* GET home page. */
router.get('/', async function(req, res, next) {
  novedades = await novedadesModel.getNovedades();

  novedades = novedades.splice(0, 5);
  novedades = novedades.map(novedad => {
    if(novedad.img_id) {
      const imagen = cloudinary.url(novedad.img_id, {
        width: 460,
        crop: 'fill'
      });
      return{
        ...novedad,
        imagen
      }
    } else {
      return{
        ...novedad,
        imagen: '/images/noimage.jpg'
      }
    }
  });

  res.render('index',{
    novedades
  });
});

router.post('/', async function(req, res, next) {

  var novedades = await novedadesModel.getNovedades();
  var nombre = req.body.nombre;
  var mail = req.body.mail;

  var obj = {
    to: 'violetaa.zarabozo@gmail.com',
    subject: 'SUSCRIPCIÓN WEB',
    html: nombre + " se suscribió en 'Tu mundo Argentino' para recibir info. a su correo: " + mail 
  }

  var transporter = nodemailer.createTransport({
    host: process.env.SMTP_HOST,
    port: process.env.SMTP_PORT,
    auth:{
      user: process.env.SMTP_USER,
      pass: process.env.SMTP_PASS
    }
  })

  var info = await transporter.sendMail(obj);

console.log(req.body)
  res.render('index',{
    message: 'Te has suscrito correctamente, muchas gracias! ♡',
    novedades
  });
});


module.exports = router;