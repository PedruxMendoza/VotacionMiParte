
function validar(){

	var jrv = document.getElementById('jrv').value;
	var nombre = document.getElementById('nombre').value;
	var sede = document.getElementById('sede').selectedIndex;


//se crea un if para validar el campo obligatorio

if(jrv.length == 0){
	document.getElementById('jrv').style.boxShadow = '0 0 15px red';
	document.getElementById('jrv').placeholder = 'ESTE CAMPO ES OBLIGATORIO';
	

	return false;
}else{
	document.getElementById('jrv').style.boxShadow = '0 0 15px green';
	document.getElementById('jrv').style.backgroundColor = 'white';
}

if(nombre.length == 0){
	document.getElementById("nombre").style.boxShadow = '0 0 15px red'; 
	document.getElementById("nombre").placeholder = "Este campo es obligatorio";

	return false;
}else{
	document.getElementById("nombre").style.boxShadow = '0 0 15px green';
	document.getElementById("nombre").style.backgroundColor= 'white'; 
}



if(sede == 0){
	document.getElementById('sede').style.boxShadow = '0 0 15px red';
	document.getElementById('sede').placeholder = 'Este campo es obligatorio';

		return false;
	}else{
		document.getElementById('sede').style.boxShadow = '0 0 15px green';
		document.getElementById('municipio').style.backgroundColor = 'white';
	}

	return true;
}