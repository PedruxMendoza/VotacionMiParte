
<ul class="sidebar navbar-nav">
  <?php if ($this->session->userdata('rol') == 1) { ?>
    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        <i class="fas fa-fw fa-table"></i>
        <span>CRUDS</span>
      </a>
      <div class="dropdown-menu" aria-labelledby="pagesDropdown">
        <h6 class="dropdown-header">Pedro:</h6>
        <a class="dropdown-item" href="<?php echo base_url('votacion_controller/index');?>">Votaciones</a>
        <a class="dropdown-item" href="<?php echo base_url('DV_controller/index');?>">Detalles_Votaciones</a>
        <div class="dropdown-divider"></div>
        <h6 class="dropdown-header">William:</h6>
        <a class="dropdown-item" href="#">Usuario</a>
        <a class="dropdown-item" href="#">Padron</a>
        <div class="dropdown-divider"></div>
        <h6 class="dropdown-header">Ariel:</h6>
        <a class="dropdown-item" href="#">Personas</a>
        <a class="dropdown-item" href="#">Urnas_Votacion</a>
        <div class="dropdown-divider"></div>
        <h6 class="dropdown-header">Rocio:</h6>
        <a class="dropdown-item" href="<?php echo base_url('urnas_controller/index');?>">Urnas</a>
        <a class="dropdown-item" href="<?php echo base_url('sede_controller/index');?>">Sede</a>
        <div class="dropdown-divider"></div>       
        <h6 class="dropdown-header">Irvin:</h6>
        <a class="dropdown-item" href="#">Partidos Politicos</a>
        <a class="dropdown-item" href="#">Candidatos</a>                    
      </div>
    </li>
  <?php } ?>
  <li class="nav-item">
    <a class="nav-link" href="#">
      <i class="fas fa-fw fa-chart-area"></i>
      <span>Resultados</span></a>
    </li>
    </ul>