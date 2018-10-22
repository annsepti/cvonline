<%-- 
    Document   : home
    Created on : Oct 19, 2018, 12:01:10 AM
    Author     : USER
--%>

<%@page import="models.Kandidat"%>
<%@page import="tools.HibernateUtil"%>
<%@page import="controllers.GeneralController"%>
<%@page import="controllers.InterfaceController"%>
<%@page import="models.Lowongan"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CV Online MII</title>
        <meta name="description" content="Sufee Admin - HTML5 Admin Template">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="apple-touch-icon" href="apple-icon.png">
        <link rel="shortcut icon" href="favicon.ico">

        <link rel="stylesheet" href="assets/css/normalize.css">
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/font-awesome.min.css">
        <link rel="stylesheet" href="assets/css/themify-icons.css">
        <link rel="stylesheet" href="assets/css/flag-icon.min.css">
        <link rel="stylesheet" href="assets/css/cs-skin-elastic.css">
        <link rel="stylesheet" href="assets/css/lib/datatable/dataTables.bootstrap.min.css">

        <!-- <link rel="stylesheet" href="assets/css/bootstrap-select.less"> -->
        <link rel="stylesheet" href="assets/scss/style.css">
        <link rel="stylesheet" href="assets/css/lib/chosen/chosen.min.css">


        <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>

        <!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.min.js"></script> -->
        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <link rel="stylesheet" href="/resources/demos/style.css">   
    </head>
    <body>
        <% InterfaceController<Lowongan> ic = new GeneralController<Lowongan>(HibernateUtil.getSessionFactory(), Lowongan.class);
            List<Lowongan> datas = ic.getAll();
            String message = (String) session.getAttribute("PESAN");
            if (message != null) {
                out.println(message);
            }%>
        <!-- Right Panel -->

        <div id="right-panel" class="right-panel">

            <!-- Header-->
            <header id="header" class="header">

                <div class="header-menu">
                    <div class="col-sm-6">
                        <div class="page-header float-left">
                            <div class="page-title">
                                <a href="home.jsp"> BERANDA </a> |
                                <a href="#"> LOWONGAN </a> |
                                <a href="#"> HUBUNGI KAMI </a>
                            </div>
                        </div>
                    </div>
                </div>

            </header><!-- /header -->
            <!-- Header-->

            <div class="breadcrumbs">
                <div class="col-sm-10">
                    <a class="navbar-brand" href="home.jsp"><img src="images/mii-logo.png" width="70px" alt="Logo"></a>
                </div>
                <div class="col-sm-2">
                    <button type="button" class="btn btn-secondary mb-1" data-toggle="modal" data-target="#loginModal">
                        Masuk
                    </button>
                    <button type="button" class="btn btn-secondary mb-1" data-toggle="modal" data-target="#registerModal">
                        Daftar
                    </button>

                </div>
            </div>
            <div class="content mt-3">
                <div class="animated fadeIn">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="card">
                                <div class="card-header">
                                    <strong class="card-title">Daftar Lowongan</strong>
                                </div>
                                <div class="card-body">
                                    <table id="bootstrap-data-table" class="table table-striped table-bordered">
                                        <thead>
                                            <tr>
                                                <th>ID Lowongan</th>
                                                <th>Nama Posisi</th>
                                                <th>Syarat</th>
                                                <th>Batas Akhir</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <% for (Lowongan l : datas) {%> 
                                            <tr>
                                                <td><%= l.getIdLowongan()%></td>
                                                <td><%= l.getNamaPosisi()%></td>
                                                <td><%= l.getSyarat()%></td>
                                                <td><%= l.getBatasAkhir()%></td>
                                            </tr>
                                            <%}%>

                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div><!-- .animated -->
            </div><!-- .content -->

            <div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="staticModalLabel" aria-hidden="true" data-backdrop="static">
                <div class="modal-dialog" role="document">
                    <form name="login" action="./login" method="POST">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="staticModalLabel">Kandidat Masuk</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true" title="Close">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <!--Div Login-->
                                <div class="login-form">
                                    <div class="form-group">

                                        <input type="email" class="form-control" placeholder="Email" name="username">
                                        <br>
                                        <input type="password" class="form-control" placeholder="Kata Sandi" name="password">

                                    </div>
                                    <button type="submit" class="btn btn-success btn-flat m-b-30 m-t-30">Masuk</button>
                                    <!--Div Daftar-->
                                    <div class="register-link m-t-15 text-center" id="masuk">
                                        <p>Kandidat Baru ? <a href="views/register.jsp"> Daftar Sekarang Juga...</a></p>
                                        <!--                                        Kandidat Baru ? 
                                                                                <a class="link-align link-drop sign-up-drop" id="masukBtn" 
                                                                                   href="#" data-toggle="modal" data-target="#registerModal"
                                                                                   onclick="$('#loginModal').modal('close');"> Daftar Sekarang Juga... </a>-->
                                    </div>

                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <div class="modal fade" id="registerModal" tabindex="-1" role="dialog" aria-labelledby="staticModalLabel" aria-hidden="true" data-backdrop="static">
                <form name="register" action="./soukandidat" method="POST" >
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="staticModalLabel">Kandidat Daftar</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <div class="login-form">
                                    <form name="register" action="views/register.jsp" >
                                        <div class="form-group">
                                            <% InterfaceController<Kandidat> ick = new GeneralController<Kandidat>(HibernateUtil.getSessionFactory(), Kandidat.class);  %>
                                            <input type="text" class="form-control" readonly="readonly" hidden="hidden" value="<%= ick.getNewId()  %>" name="idkandidat">
                                            <br>
                                            <input type="text" class="form-control" placeholder="Nama Lengkap" name="namakandidat">
                                            <br>
                                            <input type="email" class="form-control" placeholder="Email" name="email">
                                            <br>
                                            <input type="text" class="form-control" placeholder="Tanggal Lahir" id="datepicker" name="tgllahir">
                                        </div>
                                        <button type="submit" class="btn btn-primary btn-flat m-b-30 m-t-30">Daftar</button>
                                        <div class="register-link m-t-15 text-center">
                                            <p>Sudah menjadi Kandidat ? <a href="views/login.jsp"> Masuk </a></p>
                                            <!--Sudah menjadi Kandidat ?
                                                <a class="link-align link-drop sign-up-drop" id="registerBtn" 
                                                href="#" data-toggle="modal" data-target="#loginModal"
                                                onclick="$('#registerModal').modal('hide');return false;"> Masuk </a>-->
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>

        </div><!-- /#right-panel -->

        <!-- Right Panel -->
        <script src="assets/js/vendor/jquery-2.1.4.min.js"></script>
        <script src="assets/js/popper.min.js"></script>
        <script src="assets/js/plugins.js"></script>
        <script src="assets/js/main.js"></script>
        <script src="assets/js/lib/chosen/chosen.jquery.min.js"></script>

        <script src="assets/js/lib/data-table/datatables.min.js"></script>
        <script src="assets/js/lib/data-table/dataTables.bootstrap.min.js"></script>
        <script src="assets/js/lib/data-table/dataTables.buttons.min.js"></script>
        <script src="assets/js/lib/data-table/buttons.bootstrap.min.js"></script>
        <script src="assets/js/lib/data-table/jszip.min.js"></script>
        <script src="assets/js/lib/data-table/pdfmake.min.js"></script>
        <script src="assets/js/lib/data-table/vfs_fonts.js"></script>
        <script src="assets/js/lib/data-table/buttons.html5.min.js"></script>
        <script src="assets/js/lib/data-table/buttons.print.min.js"></script>
        <script src="assets/js/lib/data-table/buttons.colVis.min.js"></script>
        <script src="assets/js/lib/data-table/datatables-init.js"></script>


        
        <script type="text/javascript">
            $(document).ready(function () {
                $('#bootstrap-data-table-export').DataTable();
            });
        </script>
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <script>
            $(function () {
                $("#datepicker").datepicker();
            });
        </script>

    </body>
</html>
