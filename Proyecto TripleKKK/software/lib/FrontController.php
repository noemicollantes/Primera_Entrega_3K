<?php

    class FrontController{

        //Clase destinada a llevar el control de las rutas
        function __construct($route){
            
            if($route){ //Si la ruta no esta vacia
                list($class,$method) = explode('/',$route);
            }else{
                //Ruta de la interfaz principal
                $class = "DashboardController";
                $method = "ShowDashboard";
            }

            require_once "controller/$class.php"; //Requiere automaticamente el archivo

            $instance = new $class(); //Crea la clase

            $instance->$method(); //Llama el metodo

        } 
    }

?>