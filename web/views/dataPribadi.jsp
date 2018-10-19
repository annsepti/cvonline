<%-- 
    Document   : datapribadiForm
    Created on : Oct 19, 2018, 12:12:09 AM
    Author     : USER
--%>

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
                            <h1>Dashboard</h1>
                        </div>
                    </div>
                </div>
                <div class="col-sm-8">
                    <div class="page-header float-right">
                        <div class="page-title">
                            <ol class="breadcrumb text-right">
                                <li><a href="#">Beranda</a></li>
                                <li><a href="#">Curriculum Vitae</a></li>
                                <li class="active">Data Pribadi</li>
                            </ol>
                        </div>
                    </div>
                </div>
            </div>

            <div class="content mt-3">
                <div class="animated fadeIn">

                    <div class="row">

                        <div class="col-xs-6 col-sm-12">
                            <div class="card">
                                <div class="card-header">
                                    <strong>Profil</strong> <small>  </small>
                                </div>
                                <div class="card-body card-block">
                                    <div class="row form-group">
                                        <div class="col col-md-3"><label for="text-input" class=" form-control-label">Nama</label></div>
                                        <div class="col-12 col-md-9"><input type="text" id="text-input" name="text-input" placeholder="" class="form-control"><small class="form-text text-muted">Nama lengkap sesuai KTP</small></div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-3"><label for="text-input" class=" form-control-label">Tempat Lahir</label></div>
                                        <div class="col-12 col-md-9"><input type="text" id="text-input" name="text-input" placeholder="" class="form-control"></div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-3"><label for="text-input" class=" form-control-label">Tanggal Lahir</label></div>
                                        <div class="col-12 col-md-9"><input type="text" id="text-input" name="text-input" placeholder="" class="form-control"><small class="form-text text-muted">Format DD/MM/YYY</small></div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-3"><label for="text-input" class=" form-control-label">NIK (No. KTP)</label></div>
                                        <div class="col-12 col-md-9"><input type="text" id="text-input" name="text-input" placeholder="" class="form-control"></div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-3"><label class=" form-control-label">Jenis Kelamin</label></div><br>
                                        <div class="col col-md-9">
                                            <div class="form-check">
                                                <div class="radio">
                                                    <label for="radio1" class="form-check-label ">
                                                        <input type="radio" id="radio1" name="radios" value="option1" class="form-check-input">Laki-laki
                                                    </label>
                                                </div>
                                                <div class="radio">
                                                    <label for="radio2" class="form-check-label ">
                                                        <input type="radio" id="radio2" name="radios" value="option2" class="form-check-input">Perempuan
                                                        </div>
                                                        </div>
                                                        </div>
                                                        </div>
                                                        <div class="row form-group">
                                                            <div class="col col-md-3"><label for="select" class=" form-control-label">Status Perkawinan</label></div><br>
                                                            <div class="col-12 col-md-9">
                                                                <select name="select" id="select" class="form-control">
                                                                    <option value="0">Silahkan Pilih</option>
                                                                    <option value="1">Belum Menikah</option>
                                                                    <option value="2">Sudah Menikah</option>
                                                                    <option value="3">Single Parent</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <div class="row form-group">
                                                            <div class="col col-md-3"><label for="select" class=" form-control-label">Agama</label></div><br>
                                                            <div class="col-12 col-md-9">
                                                                <select name="select" id="select" class="form-control">
                                                                    <option value="0">Silahkan Pilih</option>
                                                                    <option value="1">Islam</option>
                                                                    <option value="2">Kristen</option>
                                                                    <option value="3">Katolik</option>
                                                                    <option value="1">Budha</option>
                                                                    <option value="2">Hindu</option>
                                                                    <option value="3">Lainnya</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <div class="row form-group">
                                                            <div class="col col-md-3"><label for="textarea-input" class=" form-control-label">Alamat Sesuai KTP</label></div>
                                                            <div class="col-12 col-md-9"><textarea name="textarea-input" id="textarea-input" rows="9" placeholder="" class="form-control"></textarea></div>
                                                        </div>
                                                        <div class="row form-group">
                                                            <div class="col col-md-3"><label for="textarea-input" class=" form-control-label">Alamat Sekarang</label></div>
                                                            <div class="col-12 col-md-9"><textarea name="textarea-input" id="textarea-input" rows="9" placeholder="" class="form-control"></textarea></div>
                                                        </div>
                                                        <div class="row form-group">
                                                            <div class="col col-md-3"><label for="text-input" class=" form-control-label">NPWP</label></div>
                                                            <div class="col-12 col-md-9"><input type="text" id="text-input" name="text-input" placeholder="" class="form-control"></div>
                                                        </div>
                                                        <div class="row form-group">
                                                            <div class="col col-md-3"><label for="text-input" class=" form-control-label">Ponsel</label></div>
                                                            <div class="col-12 col-md-9"><input type="text" id="text-input" name="text-input" placeholder="" class="form-control"></div>
                                                        </div>
                                                        <div class="row form-group">
                                                            <div class="col col-md-3"><label for="text-input" class=" form-control-label">Telepon Rumah</label></div>
                                                            <div class="col-12 col-md-9"><input type="text" id="text-input" name="text-input" placeholder="" class="form-control"></div>
                                                        </div>
                                                        <div class="row form-group">
                                                            <div class="col col-md-3"><label for="text-input" class=" form-control-label">Telepon Kerabat</label></div>
                                                            <div class="col-12 col-md-4"><input type="text" id="text-input" name="text-input" placeholder="" class="form-control"></div>
                                                            <div class="col col-md-2"><label for="text-input" class=" form-control-label">Atas Nama</label></div>
                                                            <div class="col-12 col-md-3"><input type="text" id="text-input" name="text-input" placeholder="" class="form-control"></div>

                                                        </div>
                                                        <div class="row form-group">
                                                            <div class="col col-md-3"><label for="select" class=" form-control-label">Pendidikan Terakhir</label></div><br>
                                                            <div class="col-12 col-md-9">
                                                                <select name="select" id="select" class="form-control">
                                                                    <option value="0">Silahkan Pilih</option>
                                                                    <option value="1">S3</option>
                                                                    <option value="2">S2</option>
                                                                    <option value="3">S1</option>
                                                                    <option value="1">D4</option>
                                                                    <option value="2">D3</option>
                                                                    <option value="3">D2</option>
                                                                    <option value="1">D1</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <div class="row form-group">
                                                            <div class="col col-md-3"><label for="file-input" class=" form-control-label">Unggah Foto</label></div>
                                                            <div class="col-12 col-md-9"><input type="file" id="file-input" name="file-input" class="form-control-file"></div>
                                                        </div>
                                                </div>
                                                <div class="card-footer">
                                                    <button type="submit" class="btn btn-primary btn-sm">
                                                        <i class="fa fa-dot-circle-o"></i> Simpan
                                                    </button>
                                                    <button type="reset" class="btn btn-danger btn-sm">
                                                        <i class="fa fa-ban"></i> Reset
                                                    </button>
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

                        <script>
                            jQuery(document).ready(function () {
                                jQuery(".standardSelect").chosen({
                                    disable_search_threshold: 10,
                                    no_results_text: "Oops, nothing found!",
                                    width: "100%"
                                });
                            });
                        </script>

                        </body>
                        </html>
