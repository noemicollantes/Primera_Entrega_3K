<?php

    class AccessModel{
    
        private $connection;

        function __construct($connection){
            $this->connection = $connection;
        }

        //Metodo para validar un inicio de session
        function validateLogin($usser_name,$password){
            $sql = "SELECT USSER.id_usser,ROL.name_role,STA.state_type FROM TRIPLEKKK.USSER USSER 
            INNER JOIN TRIPLEKKK.ROLE ROL ON USSER.id_role = ROL.id_role
            INNER JOIN TRIPLEKKK.STATE STA ON USSER.id_state = STA.id_state
            WHERE usser.usser_name = '$usser_name' AND usser.usser_password = '$password'";
            $this->connection->query($sql);
            return $this->connection->fetchAll();
        }

        //Metodo para traer el id de la persona que inicio session
        function selecPersonLogin($id_usser){
            $sql = "SELECT PER.id_person FROM TRIPLEKKK.ACCESS ACCE
            INNER JOIN TRIPLEKKK.PERSON PER ON PER.ID_PERSON = ACCE.ID_PERSON
            WHERE ACCE.ID_USSER = '$id_usser'";
            $this->connection->query($sql);
            return $this->connection->fetchAll();
        }

    }


?>