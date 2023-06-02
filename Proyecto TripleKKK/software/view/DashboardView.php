<?php

class DashboardView
{


    function showDashboard($person)
    {
        $email = $person[0]->email_person;
        $phone_number = $person[0]->phone_person;
        $name_person = $person[0]->name_person;
        $last_name_person = $person[0]->last_name_person;
        $document_type_name = $person[0]->document_type_name;
        $number_document = $person[0]->number_document;

?>
        <!DOCTYPE html>
        <html lang="es">

        <head>

            <title>DashBoard</title>
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <!-- Estilo propio -->
            <link rel="stylesheet" href="css/StyleDashboar.css">

            <!-- Favicon -->
            <link rel="shortcut icon" href="img/Logo TripleKKK.png" type="image/x-icon">
            <!-- Toastr -->
            <link rel="stylesheet" href="plugins/toastr/toastr.min.css">
            <!-- Theme style -->
            <script src="https://kit.fontawesome.com/d2ec2ed15a.js" crossorigin="anonymous"></script>

            <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/admin-lte@3.2/dist/css/adminlte.min.css">


        </head>

        <body class="hold-transition sidebar-mini">

            <div class="wrapper fondo">
                <!------------------------------------------- Barra de navegacion ----------------------------------------->
                <nav class="main-header navbar navbar-expand navar-superior">

                    <!-- Botones izquierdos -->
                    <ul class="navbar-nav botones-navar-superior ">
                        <li class="nav-item">
                            <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
                        </li>
                        <li class="nav-item d-none d-sm-inline-block">
                            <a class="nav-link">Inicio</a>
                        </li>
                    </ul>


                    <!--  Botones de la derecha -->
                    <ul class="navbar-nav ml-auto botones-navar-superior">

                        <!-- COLOCAR LA PANTALLA GRANDE -->
                        <li class="nav-item">
                            <a class="nav-link" data-widget="fullscreen" href="#" role="button">
                                <i class="fas fa-expand-arrows-alt"></i>
                            </a>
                        </li>

                        <!-- Boton para cerrar sesion -->
                        <li class="nav-item">
                            <a class="nav-link" href="#" role="button" onclick="Dashboard.closeSession()">
                                <i class="fas fa-power-off"></i>
                            </a>
                        </li>
                    </ul>
                </nav>
                <!-- /.navbar -->

                <!------------------------------------------- contenedor MENU  ----------------------------------------->
                <aside class="main-sidebar elevation-4 contenedor-botones">
                    <!-- Brand Logo -->

                    <!-- Perfil -->
                    <div class="sidebar">
                        <!-- Sidebar user panel (optional) -->

                        <div class="user-panel mt-5 pb-3 mb-3 d-flex align-items-center justify-content-center">

                            <div class="info text-center ">
                                <a href="#" class="d-block text-center"></a>
                            </div>
                        </div>

                        <!-- Opciones  Menu -->
                        <nav class="mt-5">
                            <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">


                            </ul>
                        </nav>
                        <!-- /.sidebar-menu -->
                    </div>
                    <!-- /.sidebar -->
                </aside>

                <!-- Content Wrapper. Contains page content -->
                <div class="content-wrapper">
                    <!-- Content Header (Page header) -->
                    <div class="content-header">
                        <div class="container-fluid">

                            <div class="row mb-2">
                                <div class="col-sm-6">

                                </div><!-- /.col -->
                            </div><!-- /.row -->
                        </div><!-- /.container-fluid -->
                    </div>
                    <!-- /.content-header -->

                    <!-- CONTENIDO PRINCIPAL----------------------------------- -->
                    <div class="">
                        <div class="container-fluid contenido">

                            <!-- Aqui se carga el contenido que es requerido -->
                            <div id="content" class="">

                                <div class="row">
                                    <div class="card carta col">
                                        <div class="card-header">
                                            Bienvenido
                                        </div>
                                        <div class="card-body">
                                            <ul class="list-group list-group-flush">
                                                <li class="list-group-item ">
                                                    <div class="row">
                                                        <div class="col">
                                                            <h3>Nombres</h3>
                                                            <p><?php echo $name_person; ?></p>
                                                        </div>
                                                        <div class="col">
                                                            <h3>Apellidos</h3>
                                                            <p><?php echo $last_name_person; ?></p>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li class="list-group-item ">
                                                    <div class="row">
                                                        <div class="col">
                                                            <h3>Tipo de identificacion</h3>
                                                            <p><?php echo $document_type_name; ?></p>
                                                        </div>
                                                        <div class="col">
                                                            <h3>Numero de identificacion</h3>
                                                            <p><?php echo $number_document; ?></p>
                                                        </div>
                                                    </div>
                                                </li>

                                                <li class="list-group-item">
                                                    <h3>Correo electronico</h3>
                                                    <p><?php echo $email; ?></p>
                                                </li>
                                                <li class="list-group-item">
                                                    <h3>Numero telefonico</h3>
                                                    <p><?php echo $phone_number; ?></p>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="col">
                                        

                                            <div class="small-box bg-success tarjeta">
                                                <div class="inner">
                                                    <h3>#</sup></h3>
                                                    <p>Número de uniformes</p>
                                                </div>
                                                <div class="icon">
                                                <i class="fa-solid fa-warehouse"></i>
                                                </div>
                                                <a href="#" class="small-box-footer">Ver detalles  <i class="fas fa-arrow-circle-right"></i></a>
                                            </div>
                                        <div class="small-box bg-info tarjeta">
                                            <div class="inner">
                                                <h3>#</h3>
                                                <p>Número de piezas</p>
                                            </div>
                                            <div class="icon">
                                            <i class="fa-solid fa-shirt"></i>
                                            </div>
                                            <a href="#" class="small-box-footer">Ver detalles  <i class="fas fa-arrow-circle-right"></i></a>
                                        </div>
                                    </div>



                                </div>

                            </div><!-- /.container-fluid -->
                        </div>
                        <!-- /.content -->
                    </div>
                    <!-- /.content-wrapper -->

                    <!-- MODAL DONDE SE CARGARA TODO EL CONTENIDO -->
                    <div id="my_modal" class="modal" tabindex="-1">
                        <div class="modal-dialog modal-xl">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="modal_title"></h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div id="modal_content" class="modal-body">

                                </div>
                            </div>
                        </div>
                    </div>



                    <!-- Main Footer -->
                    <footer class="main-footer">

                    </footer>
                </div>

                <!-- jQuery -->
                <script src="plugins/jquery/jquery.min.js"></script>
                <!-- Bootstrap 4 -->
                <script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
                <!-- Toastr -->
                <script src="plugins/toastr/toastr.min.js"></script>
                <!-- Sweet alert -->
                <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
                <!-- AdminLTE -->
                <script src="https://cdn.jsdelivr.net/npm/admin-lte@3.2/dist/js/adminlte.min.js"></script>
                <script src="js/Dashboard.js"></script>


        </body>

        </html>





<?php
    }
}


?>