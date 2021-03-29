<?php
session_start();
?>
<script src="https://kit.fontawesome.com/74a6435741.js" crossorigin="anonymous"></script>

<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>



<!-- Automatic element centering -->
<div class="lockscreen-wrapper">
<?php 
 //include '../ajax/asistencia.php' ?>
    <div name="movimientos" id="movimientos">
    </div> 



  <div class="lockscreen-logo">
    <a href="#"><b>SISTEMA ASISTENCIA</b> </a>
  </div>
  <!-- User name -->
  <!--<div class="lockscreen-name">ASISTENCIA</div>-->

  <!-- START LOCK SCREEN ITEM -->
  <div class="lockscreen-item">
    <!-- lockscreen image -->
    <div class="lockscreen-image">
      <img src="<?php echo base_url()?>imagenes1/madre_jairo.jpg" heigth="50px" width="50px" alt="User Image">
    </div>
    <!-- /.lockscreen-image -->

    <!-- lockscreen credentials (contains the form) -->
    <form id="enviar" class="lockscreen-credentials">
      <div class="input-group">
        <input type="password" class="form-control" name="codigo_persona" id="codigo_persona" placeholder="ID de asistencia">

       <!-- <div class="input-group-btn">
       <button id="guardar" class="btn btn-primary" ><i class="fa fa-arrow-right text-muted"></i></button>

        </div>-->
       
       
      </div>
    </form>
    <!-- /.lockscreen credentials -->

  </div>
  <!-- /.lockscreen-item -->
  <div class="help-block text-center">
    Ingresa tu ID de asistencia

  </div>

  <div class="text-center">
   <div class="input-group-btn">
  <button id="guardar" class="btn btn-danger" value="entrada" >entrada</button>
  <button id="salida" class="btn btn-danger" value="salida" >salida</button>

        </div>
  </div>
 <!-- <div class="lockscreen-footer text-center">
    <a href="../admin/">Iniciar Sesión</a>
  </div>-->
  <a href="<?php echo base_url()?>index.php/acceso/index">volver a login</a>
  <div id="container"></div>
</div>

<script type="text/javascript">
  $("#guardar").click(function(e){
  
    e.preventDefault();

    $.ajax({
      url:'<?= base_url()?>index.php/acceso/asistencia_g',
      dataType:'json',
      method:'post',
      data:$("#enviar").serialize(),
      success:function(response){




      if (response.status==2) {

        alert("registrado entrada");
          /* var container=document.getElementById('container');
        container.innerHTML='<h3 class="text-center"><div class="alert alert-success"><?php echo $this->session->userdata('codigo_persona_as'); ?></div></h3>';*/
        
       //alert("asistencia registrada");
        /*var container=document.getElementById('container');
        container.innerHTML='<h3 class="text-center"><div class="alert alert-success">holaaa</div></h3>'; */
      
      
 
        
  
      }else{

        if (response.status==1) {

         alert("error");
        }
      }



      }
    });
  });


$("#salida").click(function(e){
  
    e.preventDefault();

    $.ajax({
      url:'<?= base_url()?>index.php/acceso/asistencia_salida',
      dataType:'json',
      method:'post',
      data:$("#enviar").serialize(),
      success:function(response){
      if (response.status==2) {
       alert(" registrado salida");
  
      }else{

        if (response.status==1) {

         alert("error");
        }
      }

      }
    });
  });









</script>