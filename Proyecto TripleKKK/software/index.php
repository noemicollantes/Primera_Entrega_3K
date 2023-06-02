<?php

    //Requerir archivos basicos para el  index
    require_once "lib/session.php";
    require_once "lib/Connection.php";

    if(isset($_SESSION,$_SESSION['id_person'])){
        
        require_once "lib/FrontController.php";

        if(isset($_GET['route'])) {
        
            $route = $_GET['route'];
    
        } else { //Cuando recien se hace el inicio de session la ruta es vacia
            $route='';
        } 
        //Actualizar la ruta
        $FrontController = new FrontController($route);


    } else if(isset($_POST['usser_name'],$_POST['password'])) {
    
        require_once "controller/AccessController.php";
    
        $AccessController = new AccessController(); 
        //Envia al metodo un array con los datos enviados a traves
        //del POST para que sean validados
        $AccessController->validateLogin($_POST);
        

    } else { //Cuando no se ah iniciado sesion
        require_once "controller/AccessController.php";

        $AccessController = new AccessController();
        $AccessController->showLogin();

    }



?>