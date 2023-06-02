<?php
    require_once "view/DashboardView.php";
    require_once "model/DashboardModel.php";

    class DashboardController{


        function showDashboard(){

            $Connection = new Connection();
            $DashboardModel = new DashboardModel($Connection);
            $Person = $DashboardModel->selecPerson($_SESSION['id_person']);
            //Crear la vista
            $DashboardView = new DashboardView();
            $DashboardView->showDashboard($Person);
            

        }

        
    }

?>