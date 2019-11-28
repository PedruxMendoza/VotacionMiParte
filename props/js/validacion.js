function validar(){

	var nombre = document.getElementById('nombre').value;
	var direccion = document.getElementById('direccion').value;
	var municipio = document.getElementById('municipio').selectedIndex;


	if(nombre.length == 0){
		document.getElementById('nombre').style.boxShadow = '0 0 15px red';
		document.getElementById('nombre').placeholder = 'Este campo es obligatorio';
		
		return false;
	}else{
		document.getElementById('nombre').style.boxShadow = '0 0 15px green';
		
	}

	if(direccion.length == 0){
		document.getElementById('direccion').style.boxShadow = '0 0 15px red';
		document.getElementById('direccion').placeholder = 'Este campo es obligatorio';
		
		return false;
	}else{
		document.getElementById('direccion').style.boxShadow = '0 0 15px green';
		document.getElementById('direccion').style.backgroundColor = 'white';
	}

	if(municipio == 0){
		document.getElementById('municipio').style.boxShadow = '0 0 15px red';
		document.getElementById('municipio').placeholder = 'Este campo es obligatorio';
		

		return false;
	}else{
		document.getElementById('municipio').style.boxShadow = '0 0 15px green';
		document.getElementById('municipio').style.backgroundColor = 'white';
	}
	return true;
}