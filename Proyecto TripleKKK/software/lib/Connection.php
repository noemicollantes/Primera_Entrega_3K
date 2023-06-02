<?php
    //Requerir los datos para configurar la conexion
    require_once "../private_files/setting_connection.php";

    class Connection{

        //Atributos
        private $statement;
        private $result;

        //Constructor
        function __construct() {
            
            //Obtener los datos para la conexion
            $ip = IP;
            $data_base_name = DATA_BASE_NAME;
            $port = PORT;
            $user = USER;
            $password = PASSWORD;

            //Realizar la conexion a la base de datos
            try{
                //Link para la conexion a la base de datos.
                $this->statement = new PDO("pgsql:host=$ip;port=$port;dbname=$data_base_name",$user,$password);
                $this->statement->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            }catch(PDOException $e){
                exit("Error para conectarse");
            }
        }

        //Funcion para ejecutar operaciones de sql
        function query($sql){
            $this->result = $this->statement->query($sql) 
            or exit('Consulta mal estructurada');
        }

        //Funcion utilizada en conjunto con la funcion query cuando se trata de
        //selects
        function fetchAll() {
            return $this->result->fetchAll(PDO::FETCH_OBJ);
        }

    }


?>