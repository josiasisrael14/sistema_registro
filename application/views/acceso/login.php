

  

    

    <p class="bg-info" align="center">
<?PHP echo $this->session->flashdata('mensaje');?>
</p>
<div class="container" style="padding-top: 100px">
<!--<img src="<?PHP echo base_url()?>images/logomininter.jpeg">-->
<h3>Sistema de Asistencia</h3>

	<form method="post" action="<?php echo base_url()?>index.php/acceso/validar">
	<div class="col-md-6" style="padding-top: 60px">				
		<div class="form-group" style="padding-top: 40px">
			<div class="col-md-3">
				<label>Usuario</label>
			</div>
			<div class="col-md-9">
				<input type="text" class="form-control" name="login" id="login">
			</div>
		</div>	
        <div class="form-group" style="padding-top: 40px">
			<div class="col-md-3">
				<label>Password</label>
			</div>
			<div class="col-md-9">
				<input type="password" class="form-control" name="password" id="password">
			</div>
		</div>
		



	<div class="form-group text-center" style="padding-top: 40px">
	<input type="submit" class="btn btn-success btn-block" value="INGRESAR" style="border:0;">
	<a href="<?php echo base_url()?>index.php/acceso/registro">Registrar Asistencia</a>
		</div>
	<div class="col-md-6"></div>
</form>
</div>





