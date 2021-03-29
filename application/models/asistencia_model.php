<?php

/**
 * 
 */
class Asistencia_model extends CI_Model 
{
	
	function __construct()
	{
		parent::__construct();
	}

	public function select(){

 $res=$this->db->select("as.codigo_persona_as,us.nombre_usuario,dep.nombre,as.fecha_hora,as.tipo,as.fecha")
                   ->from("asistencia as")
                   ->join("usuarios us","as.codigo_persona_as=us.codigo_persona")
                   ->join("departamento dep","dep.iddepartamento=us.iddepartamento")
                   ->where("us.estado",ST_ACTIVO)
                   ->get()
                   ->result();

              //var_dump($res);
     return $res;

	}


  public function select1($codigo_persona='',$tipo='',$tipo1=''){


      # code...

    
 $res=$this->db->select("us.codigo_persona,   us.nombre_usuario,dep.nombre,as.fecha_hora,as.tipo,as.fecha")

                    ->from("usuarios us")
                     ->from(" asistencia as")
                  // ->join("asistencia as","as.codigo_persona=us.codigo_persona")
                   ->join("departamento dep","dep.iddepartamento=us.iddepartamento")
                   ->where("us.codigo_persona",$codigo_persona)
                   ->where("us.estado",ST_ACTIVO)
                   ->get()
                   ->row();

                  // $contar=$res->codigo_persona;
                    //$contar1=mysqli_num_rows($contar);

                    //var_dump($contar1);

                  // $par=abs($contar%2);

                    //var_dump($par);
                   
                     # code...
                   
                     # code..
                   

              if ($res) {
               
                  $tipo='entrada';
                   $fecha=date('Y-m-d H:i:s');
        $fecha1=date('Y-m-d');
              $datas=['codigo_persona_as'=>$_POST['codigo_persona'],
                     'fecha_hora'=>$fecha,
                     'tipo'=>$tipo,
                     'fecha'=>$fecha1
                      ];

    $this->db->insert("asistencia",$datas);
    //$this->session->set_flashdata('mensaje','inciando session');
     $this->session->set_userdata($datas);
      return true; 

                }
                 
                else{

                 return false;

              }


 

              }
            
  public function salida($codigo_persona='',$tipo='',$tipo1=''){

      $res=$this->db->select("     us.codigo_persona,us.nombre_usuario,dep.nombre,as.fecha_hora,as.tipo,as.fecha")
                    ->from("usuarios us")
                     ->from(" asistencia as")
                  // ->join("asistencia as","as.codigo_persona=us.codigo_persona")
                   ->join("departamento dep","dep.iddepartamento=us.iddepartamento")
                   ->where("us.codigo_persona",$codigo_persona)
                   ->where("us.estado",ST_ACTIVO)
                   ->get()
                   ->row();
         if ($res) {
               
                  $tipo='salida';
                   $fecha=date('Y-m-d H:i:s');
        $fecha1=date('Y-m-d');
              $data=['codigo_persona_as'=>$_POST['codigo_persona'],
                     'fecha_hora'=>$fecha,
                     'tipo'=>$tipo,
                     'fecha'=>$fecha1
                      ];

     $this->db->insert("asistencia",$data);
     //$this->session->set_userdata($data);
      return true; 

                }
                 
                else{

                 return false;

              }





  }

             
  
              
       
     

  }


 /* public function select1(){
 $res=$this->db->select("as.codigo_persona,us.nombre,dep.nombre,as.fecha_hora,as.tipo,as.fecha")
                    ->from("asistencia as")
                   ->join("usuarios us","as.codigo_persona=us.codigo_persona")
                   ->join("departamento dep","dep.iddepartamento=us.iddepartamento")
                   ->get()
                   ->row();
  //var_dump($res);              
             


    if ($res->codigo_persona==$_POST['codigo_persona']) {

    	
        $fecha=date('Y-m-d H:i:s');
        $fecha1=date('Y-m-d');
    	$data=['codigo_persona'=>$_POST['codigo_persona'],
    	       //'nombre'=>$res->nombre,
    	       //'nombre'=>$res->nombre,
               'fecha_hora'=>$fecha,
               'tipo'=>$res->tipo,
               'fecha'=>$fecha1

              ];
     $this->db->insert("asistencia",$data);
     $this->session->set_userdata($data);
    

     return true; 

    }else{

     //$this->session->set_flashdata('mensaje','no existe ');
      
        $this->session->set_flashdata('mensaje','No podras entrar por tonto ');

                  return false;
    }
               


	}
*/








