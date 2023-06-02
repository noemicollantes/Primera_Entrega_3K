<?php
    //Archivos requeridos para el programa
    require_once "model/AccessModel.php";
    require_once "view/AccessView.php";
    require_once "lib/Connection.php";

    class AccessController{
        
        //Constructor
        function __construct(){
        }

        //Funcion para mostrar un login
        function showLogin(){

            //Crear una vista
            $AccessView = new AccessView();
            $AccessView->showLogin();

        }

        //Funcion para validar inicio de sesion
        function validateLogin($post){
        
            $usser_name = $post['usser_name'];
            $password = $post['password'];

            $Connection = new Connection();
            $AccessModel = new AccessModel($Connection);

            $usser_login = $AccessModel->validateLogin($usser_name,$password);
            
            $person_login = $AccessModel->selecPersonLogin($usser_login[0]->id_usser);

            if($usser_login){
                if($usser_login[0]->state_type == 'ACTIVO'){
                    $_SESSION['id_person'] = $person_login[0]->id_person; //Obtener el id del usuario encontrado
                   
                }
            }

            header('Location: index.php');

        }


        //Metodo para cerrar session
        function closeSession() {

            session_unset();
            session_destroy();
            $_SESSION = array();
            $response['message'] = "Ten buen dia";
            exit(json_encode($response));

        }
    }

   
?>

