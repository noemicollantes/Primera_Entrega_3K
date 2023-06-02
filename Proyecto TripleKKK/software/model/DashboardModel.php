<?php

    class DashboardModel{

        private $Connection;

        function __construct($Connection)
        {
            $this->Connection = $Connection;
        }


        function selecPerson($id_person){
            $SQL = "SELECT DOC.DOCUMENT_TYPE_NAME,PER.NUMBER_DOCUMENT,PER.NAME_PERSON,PER.LAST_NAME_PERSON,PER.PHONE_PERSON,PER.EMAIL_PERSON
            FROM TRIPLEKKK.PERSON PER 
            INNER JOIN TRIPLEKKK.DOCUMENT_TYPE DOC ON PER.ID_DOCUMENT_TYPE = DOC.ID_DOCUMENT_TYPE
            WHERE PER.ID_PERSON = '$id_person'";
            $this->Connection->query($SQL);
            return $this->Connection->fetchAll();
        }


    }

?>