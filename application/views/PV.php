<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
	<h1>PUEDE VOTAR</h1>
	<?= "Usuario: ".$this->session->userdata('Nombre') ?>
	<br>
	<?= "Vencimiento: ".$this->session->userdata('Vencimiento') ?>
	<br>
	<?php date_default_timezone_set('America/El_Salvador');
	echo "Fecha Actual: ".date("Y-m-d");  ?>
	<br>
	<a href="<?php echo base_url().'LoginVotante_controller/cerrar';?>"><button class="btn btn-primary btn-sm"><i>Cerrar sesion</i></button></a>
</body>
</html>