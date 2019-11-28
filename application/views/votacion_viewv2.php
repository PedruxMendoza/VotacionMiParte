<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link rel="stylesheet" href="<?php echo base_url('props/bootstrap/css/bootstrap.min.css') ?>">
	<link rel="stylesheet" type="text/css" href="<?php echo base_url('props/bootstrap/css/datatables.min.css') ?>">
	<script src="<?php echo base_url('props/bootstrap/js/jquery.min.js') ?>"></script> 
	<script src="<?php echo base_url('props/js/votacion.js');?>"></script>
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>  
</head>
<body>
	<?php date_default_timezone_set('America/El_Salvador'); ?>
	<form  method="POST" action="<?php echo base_url('votacion_controller/ingresar') ?>" onsubmit="return validar()">
		<table>
			<tr>
				<td>Descripcion de la Votacion</td>
				<td><textarea placeholder="Escriba una descripcion de la votacion" rows="2" cols="75" maxlength="255" name="descripcion" id="descripcion"></textarea></td>
			</tr>
			<tr>
				<td>Fecha de Inicio</td>
				<td>
					<?php $date = new DateTime(); // Date object using current date and time
					$dt= $date->format('Y-m-d\TH:i'); ?>
					<input type="datetime-local" name="finicial" id="date_start" value="<?php echo $dt ?>">
				</td>
			</tr>
			<tr>
				<td>Fecha de Finalizacion</td>
				<td>
					<input type="datetime-local" name="ffinal" id="date_end" value="<?php echo $dt ?>">
				</td>
			</tr>
			<script type="text/javascript">

				var start=document.querySelector('input[type="datetime-local"]#date_start'), end = document.querySelector('input[type="datetime-local"]#date_end');

				start.value = start.value;
				end.stepUp(540);

				$("#date_start").on("click keyup", function(){
					end.value =  start.value;
					end.stepUp(540);
				});

			</script>
			<tr>
				<td>Cantidad de Votos</td>
				<td><input type="number" name="cantvoto" id="cantvoto"></td>
			</tr>
			<tr>
				<td>Estado</td>
				<td>
					<select name="estado" id="estado" class="form-control">
						<option value="">seleccione estado</option>
						<?php foreach($estado as $e) { ?>
							<option value="<?= $e->id_estado ?>"><?= $e->nombre_estado ?></option>
						<?php } ?>
					</select>
				</td>				
			</tr>
		</table>
		<input type="submit" name="guardar">		
	</form>
	<br>
	<table class="table table-dark" id="voto">
		<thead>
			<tr>
				<th>Descripcion</th>
				<th>Fecha de Inicio</th>
				<th>Fecha de Finalizacion</th>
				<th>Cantidad de Votos</th>
				<th>Estado</th>
				<th>Eliminar</th>
				<th>Modificar</th>
				<th>Cancelar</th>
			</tr>
		</thead>
		<tbody>
			<?php foreach ($votacion as $v) { ?>
				<tr>
					<td><?= $v->descripcion ?></td>
					<td><?= $v->fecha_inicio ?></td>
					<td><?= $v->fecha_final ?></td>
					<td><?= $v->cantidadvotos ?></td>
					<td><?= $v->nombre_estado ?></td>
					<td><a onclick="alerta_eliminar(<?= $v->id_votacion ?>)" class="btn btn-block btn-danger">Eliminar
					</a></td>
					<td><a href="<?php echo base_url('votacion_controller/get_datos/'.$v->id_votacion) ?>" class="btn btn-block btn-info">Modificar
					<td><a href="<?php echo base_url('votacion_controller/cancelar/'.$v->id_votacion) ?>" class="btn btn-block btn-info">Modificar
					</a></td>
				</tr>
			<?php } ?>
		</tbody>
	</table>
	<?php $this->load->view('utils/alertas_votacion') ?>        
	<script src="<?php echo base_url('props/bootstrap/js/datatables.min.js') ?>"></script>
	<script type="text/javascript">
		$(document).ready(function () {
			$('#voto').DataTable();
			$('.dataTables_length').addClass('bs-select');
		});
	</script> 
</body>
</html>