var pool = require('./bd');
var md5 = require('md5');


async function getUserAndPassword(nombre, mail, password) {
	try{
		var query = "select * from suscripcion where nombre = ? and mail = ? and password = ? limit 1";

		var rows = await pool.query(query, [nombre, mail, md5(password)]);
		return rows[0];
	

	} catch (error) {
		console.log(error)
	}
}

module.exports = { getUserAndPassword }