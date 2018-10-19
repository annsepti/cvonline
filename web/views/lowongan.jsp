<%-- 
    Document   : lowonganForm
    Created on : Oct 19, 2018, 12:46:18 AM
    Author     : USER
--%>

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
        <link rel="shortcut icon" href="../favicon.ico">

        <link rel="stylesheet" href="../assets/css/normalize.css">
        <link rel="stylesheet" href="../assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="../assets/css/font-awesome.min.css">
        <link rel="stylesheet" href="../assets/css/themify-icons.css">
        <link rel="stylesheet" href="../assets/css/flag-icon.min.css">
        <link rel="stylesheet" href="../assets/css/cs-skin-elastic.css">
        <!-- <link rel="stylesheet" href="assets/css/bootstrap-select.less"> -->
        <link rel="stylesheet" href="../assets/scss/style.css">
        <link rel="stylesheet" href="../assets/css/lib/chosen/chosen.min.css">

        <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>

        <!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.min.js"></script> -->

    </head>
    <body>
        <!-- Left Panel -->
            <% InterfaceController<Lowongan> ic = new GeneralController<Lowongan>(HibernateUtil.getSessionFactory(), Lowongan.class);
            List<Lowongan> datas = (List<Lowongan>) session.getAttribute("dataLowongan");
            String message = (String) session.getAttribute("PESAN");
            if (message != null) {
                out.println(message);
            }%>

        <aside id="left-panel" class="left-panel">
            <nav class="navbar navbar-expand-sm navbar-default">

                <div class="navbar-header">
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#main-menu" aria-controls="main-menu" aria-expanded="false" aria-label="Toggle navigation">
                        <i class="fa fa-bars"></i>
                    </button>
                    <a class="navbar-brand" href="a-cv.html"><img src="images/cv-online-logo.png" alt="Logo"></a>
                    <a class="navbar-brand hidden" href="a-cv.html"><img src="images/logo2.png" alt="Logo"></a>
                </div>

                <div id="main-menu" class="main-menu collapse navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li class="active">
                            <a href="a-cv.html"> <i class="menu-icon fa fa-dashboard"></i>BERANDA </a>
                        </li>
                        <h3 class="menu-title">CURRICULUM VITAE</h3><!-- /.menu-title -->
                        <li class="menu-item-has-children dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-laptop"></i>Data CV</a>
                            <ul class="sub-menu children dropdown-menu">
                                <li><i class="fa fa-user"></i><a href="a-datapribadi.html">Data Pribadi</a></li>
                                <li><i class="fa fa-heart"></i><a href="a-keluarga.html">Keluarga</a></li>
                                <li><i class="fa fa-bookmark"></i><a href="a-pendidikanformal.html">Pendidikan Formal</a></li>
                                <li><i class="fa fa-bookmark-o"></i><a href="a-pendidikannonformal.html">Pendidikan Non Formal</a></li>
                                <li><i class="fa fa-building-o"></i><a href="a-pengalamankerja.html">Pengalaman Kerja</a></li>
                                <li><i class="fa fa-group"></i><a href="a-referensi.html">Referensi</a></li>
                                <li><i class="fa fa-asterisk"></i><a href="a-lainlain.html">Lain-lain</a></li>
                            </ul>
                        </li>
                        <li class="menu-item-has-children dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-folder-open-o "></i>Lihat CV</a>
                            <ul class="sub-menu children dropdown-menu">
                                <li><i class="fa fa-print"></i><a href="a-lihatcv.html">CV Online</a></li>
                                <li><i class="fa fa-upload"></i><a href="a-unggahcv.html">Unggah CV</a></li>
                            </ul>
                        </li>

                        <h3 class="menu-title">LOWONGAN</h3><!-- /.menu-title -->

                        <li>
                            <a href="a-lowongan.html" > <i class="menu-icon fa fa-suitcase"></i>Lihat Lowongan Tersedia</a>

                        </li>
                        <li>
                            <a href="a-daftarpekerjaan.html"> <i class="menu-icon fa fa-tasks"></i>Daftar Pekerjaan</a>
                        </li>
                    </ul>
                </div><!-- /.navbar-collapse -->
            </nav>
        </aside><!-- /#left-panel -->

        <!-- Left Panel -->

        <!-- Right Panel -->

        <div id="right-panel" class="right-panel">

            <!-- Header-->
            <header id="header" class="header">

                <div class="header-menu">

                    <div class="col-sm-7">
                        <a id="menuToggle" class="menutoggle pull-left"><i class="fa fa fa-tasks"></i></a>
                        <div class="header-left">
                            <button class="search-trigger"><i class="fa fa-search"></i></button>
                            <div class="form-inline">
                                <form class="search-form">
                                    <input class="form-control mr-sm-2" type="text" placeholder="Search ..." aria-label="Search">
                                    <button class="search-close" type="submit"><i class="fa fa-close"></i></button>
                                </form>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-5">
                        <div class="user-area dropdown float-right">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <img class="user-avatar rounded-circle" src="images/user.png" alt="User Avatar">
                            </a>

                            <div class="user-menu dropdown-menu">
                                <a class="nav-link" href="a-ubahpassword.html"><i class="fa fa -cog"></i>Settings</a>

                                <a class="nav-link" href=""><i class="fa fa-power -off"></i>Logout</a>
                            </div>
                        </div>

                    </div>
                </div>

            </header><!-- /header -->
            <!-- Header-->

            <div class="breadcrumbs">
                <div class="col-sm-4">
                    <div class="page-header float-left">
                        <div class="page-title">
                            <h1>Lowongan Pekerjaan</h1>
                        </div>
                    </div>
                </div>
            </div>
            <div class="content mt-3">
                <div class="animated fadeIn">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="card">
                                <div class="card-header">
                                    <strong class="card-title">Data Table</strong>
                                </div>
                                <div class="card-body">
                                    <table id="bootstrap-data-table" class="table table-striped table-bordered">
                                        <thead>
                                            <tr>
                                                <th>Aksi</th>
                                                <th>Posisi</th>
                                                <th>Syarat</th>
                                                <th>Batas Akhir</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                             <% for (Lowongan lowongan : datas) {%> 
                                            <tr>
                                                <td><a class="menu-icon fa fa-edit" href="./editBahasa?id=<%= lowongan.getIdLowongan()%>"></a> |
                                                    <a class="menu-icon fa fa-trash" href="./deleteBahasa?id=<%= lowongan.getIdLowongan()%>"></a></td>
                                                <td><%= lowongan.getNamaPosisi()%></td>
                                                <td><%= lowongan.getSyarat()%></td>
                                                <td><%= lowongan.getBatasAkhir()%></td>
                                            </tr>
                                            <% }%>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>


                    </div>
                </div><!-- .animated -->
            </div><!-- .content -->


        </div><!-- /#right-panel -->

        <!-- Right Panel -->


        <script src="../assets/js/vendor/jquery-2.1.4.min.js"></script>
        <script src="../assets/js/popper.min.js"></script>
        <script src="../assets/js/plugins.js"></script>
        <script src="../assets/js/main.js"></script>
        <script src="../assets/js/lib/chosen/chosen.jquery.min.js"></script>

        <script src="../assets/js/lib/data-table/datatables.min.js"></script>
        <script src="../assets/js/lib/data-table/dataTables.bootstrap.min.js"></script>
        <script src="../assets/js/lib/data-table/dataTables.buttons.min.js"></script>
        <script src="../assets/js/lib/data-table/buttons.bootstrap.min.js"></script>
        <script src="../assets/js/lib/data-table/jszip.min.js"></script>
        <script src="../assets/js/lib/data-table/pdfmake.min.js"></script>
        <script src="../assets/js/lib/data-table/vfs_fonts.js"></script>
        <script src="../assets/js/lib/data-table/buttons.html5.min.js"></script>
        <script src="../assets/js/lib/data-table/buttons.print.min.js"></script>
        <script src="../assets/js/lib/data-table/buttons.colVis.min.js"></script>
        <script src="../assets/js/lib/data-table/datatables-init.js"></script>


        <script type="text/javascript">
            $(document).ready(function () {
                $('#bootstrap-data-table-export').DataTable();
            });
        </script>


    </body>
</html>
