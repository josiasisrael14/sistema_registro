<?PHP
class Acceso extends CI_Controller
{	
	public function __construct()
	{
		parent::__construct();

    $this->load->model("empleados_model");
    $this->load->model("usuarios_model");
    $this->load->model("departamento_model");
    $this->load->model("tipos_usuarios_model");
    $this->load->model("asistencia_model");

   
		 
		
	}



public function index(){
    
 $this->load->view('templates/header_administrador');
  $this->load->view("acceso/login");
$this->load->view('templates/footer');


  

}


public function  validar(){
 
 $login=$_POST['login'];
 $password=$_POST['password'];

 

 if ($this->empleados_model->login($login,$password)) {

 	redirect(base_url(). "index.php/acceso/escritorio");
 }
 else{

 	redirect("acceso");
 }



}

public function escritorio(){



 $this->load->view("templates/header_administrador");
 $this->load->view("layouts1/header");
$this->load->view("acceso/escritorio");
 $this->load->view("layouts1/footer");

}


public  function usuario(){

   

$this->load->view("templates/header_administrador");
 $this->load->view("layouts1/header");
 $data['usuario']=$this->usuarios_model->select();
$this->load->view("acceso/index",$data);
$this->load->view("layouts1/footer");

}


public  function nuevo(){
//$data['departamento']=$this->empleados_model->login();
$data['tipousuario']=$this->tipos_usuarios_model->select();  
//$data['usuarios']=$this->usuarios_model->select();
$data['departamento']=$this->departamento_model->select();
$data['titulo']='subir imagen';
	//$data=$this->usuarios_model->select1();
	//var_dump($data);exit;
 $this->load->view("acceso/modal_crear",$data);
 
}


public function guardar(){

//var_dump ($_POST);
//var_dump ($_FILES);
$result=$this->usuarios_model->guardar();



if ($result) {
	echo  json_encode(['status'=>STATUS_OK]);
	exit();


}else{
   
   echo json_encode(['status'=>STATUS_FAIL]);
   exit();

}



}


/*public function subirImagen(){
   $nombreCompleto = $_FILES['archivoImagen']['name'];
        $config['upload_path']          = 'imagenes1/';
        $config['allowed_types']        = 'gif|jpg|png|jpeg';
        $config['max_size']             = 2000;
        $config['max_width']            = 2000;
        $config['max_height']           = 2000;
        $config['file_name'] = $nombreCompleto;
        $this->load->library('upload', $config);

         if(!$this->upload->do_upload('archivoImagen')) {
            $data['titulo'] = 'Subir imagen | Error';
            $data['error'] = array('error' => $this->upload->display_errors());
       $this->load->view('templates/header_administrador',$data);
      $this->load->view('img/formulario_error');
       $this->load->view('templates/footer');
        
     
        } else {
            $data['titulo'] = 'Subir imagen | Éxito';
            $data['infoImagen'] = $this->upload->data();
          $this->load->view('templates/header_administrador',$data);
            $this->load->view('img/formulario_exito');
            $this->load->view('templates/footer');
           

      
        }




}
*/



public function cerrar(){

  redirect("acceso");
}


public function tipousuario(){
$this->load->view("templates/header_administrador");
 $this->load->view("layouts1/header");
 $data['tipousuario']=$this->tipos_usuarios_model->select();
$this->load->view("tipo_usuario/index",$data);
$this->load->view("layouts1/footer");


} 


public  function nuevotipousuario(){

$this->load->view("tipo_usuario/modal_crear");

}

public function guardartipousuario(){

  $res=$this->tipos_usuarios_model->guardar_tipo();
  if ($res) {
  echo json_encode(['status'=>STATUS_OK]);
  exit();
  }else{

echo json_encode(['status'=>STATUS_FAIL]);
  exit();

  }
}

public  function modificar_tipousuario(){

$result=$this->uri->segment(3);
//var_dump($result);exit;
$data['idtipousuario']=$this->tipos_usuarios_model->select($result);

$this->load->view("tipo_usuario/modal_crear",$data);

}

public  function eliminar_tipousuario($idtipousuario){

$result=$this->tipos_usuarios_model->eliminar($idtipousuario);


if ($result) {
  echo json_encode(['status' => STATUS_OK]);
  exit();
}else{

  echo json_encode(['status' => STATUS_FAIL]);
  exit();
}

}

public function registro(){

$this->load->view("templates/header_administrador");

$this->load->view("acceso/registro");
$this->load->view('templates/footer');



}


public  function asistencia_g(){


   $res=$this->input->post("codigo_persona");

  $result=$this->asistencia_model->select1($res);
  //var_dump($result); 
  


   if ($result) {
     echo json_encode(['status' => STATUS_OK]);
     exit();
   }else{

    echo json_encode(['status' => STATUS_FAIL]);
    exit();
   }
    
 //redirect("acceso/registro");
  
   //var_dump($res);


  
}

public function asistencia_salida(){

$res=$this->input->post("codigo_persona");

//var_dump($res);
$result=$this->asistencia_model->salida($res);



if ($result) {
     echo json_encode(['status' => STATUS_OK]);
     exit();
   }else{

    echo json_encode(['status' => STATUS_FAIL]);
    exit();
   }




}


public function modificar_usuario(){
$usuarios=$this->uri->segment(3);
//var_dump($id);
$data['departamento']=$this->departamento_model->select();
$data['tipousuario']=$this->tipos_usuarios_model->select(); 
$data['usuarios']=$this->usuarios_model->select($usuarios);
//$this->load->view("templates/header_administrador");
$this->load->view("acceso/modal_crear",$data);
//$this->load->view('templates/footer');

/*$data['usuarios']=$this->usuarios_model->select($productos);  
$this->load->view("usuarios/modal_crear",$data);*/


}

public  function eliminar($idusuario){

//$idusuario=$this->uri->segment(3);

//var_dump($idusuario);exit();
$result=$this->usuarios_model->eliminar($idusuario);


if ($result) {
  echo json_encode(['status' => STATUS_OK]);
  exit();
}else{

  echo json_encode(['status' => STATUS_FAIL]);
  exit();
}

}









}