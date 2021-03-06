<%-- 
    Document   : index
    Created on : Oct 22, 2018, 8:31:37 AM
    Author     : 680183
--%>

<%@page import="models.Kandidat"%>
<%@page import="tools.HibernateUtil"%>
<%@page import="tools.HibernateUtil"%>
<%@page import="controllers.GeneralController"%>
<%@page import="controllers.GeneralController"%>
<%@page import="controllers.InterfaceController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="icon" href="images/logomii.PNG" type="image/png">
        <title>MII-CV ONLINE</title>
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="home/css/bootstrap.css">
        <link rel="stylesheet" href="home/css/font-awesome.min.css">
        <link rel="stylesheet" href="home/vendors/owl-carousel/owl.carousel.min.css">
        <link rel="stylesheet" href="home/vendors/lightbox/simpleLightbox.css">
        <link rel="stylesheet" href="home/vendors/nice-select/css/nice-select.css">
        <link rel="stylesheet" href="home/vendors/animate-css/animate.css">
        <link rel="stylesheet" href="home/vendors/swiper/css/swiper.min.css">
        <!-- main css -->
        <link rel="stylesheet" href="home/css/style.css">
        <link rel="stylesheet" href="home/css/responsive.css">
        <link rel="stylesheet" href="assets/css/normalize.css">
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/font-awesome.min.css">
        <link rel="stylesheet" href="assets/css/themify-icons.css">
        <link rel="stylesheet" href="assets/css/flag-icon.min.css">
        <link rel="stylesheet" href="assets/css/cs-skin-elastic.css">
        <link rel="stylesheet" href="assets/css/lib/datatable/dataTables.bootstrap.min.css">

        <!-- <link rel="stylesheet" href="assets/css/bootstrap-select.less"> -->
        <!--<link rel="stylesheet" href="assets/scss/style.css">-->
        <link rel="stylesheet" href="assets/css/lib/chosen/chosen.min.css">


        <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <!--<link rel="stylesheet" href="/resources/demos/style.css">-->   
    </head>
    <body>

        <!--================Header Menu Area =================-->
        <header class="header_area">
            <div class="main_menu">
                <nav class="navbar navbar-expand-lg navbar-light">
                    <div class="container box_1620">
                        <!-- Brand and toggle get grouped for better mobile display -->
                        <a class="navbar-brand logo_h" href="index.jsp"><img src="images/logomii.PNG" WIDTH="150px" alt=""></a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <!-- Collect the nav links, forms, and other content for toggling -->
                        <div class="collapse navbar-collapse offset" id="navbarSupportedContent">
                            <ul class="nav navbar-nav menu_nav justify-content-center">
                                <li class="nav-item active"><a class="nav-link" href="index.jsp">Beranda</a></li> 
                                <li class="nav-item"><a class="nav-link" href="views/indexTentang.jsp">Tentang</a></li> 
                                <li class="nav-item"><a class="nav-link" href="views/indexLowongan.jsp">Lowongan</a>
                            </ul>
                        </div> 
                    </div>
                </nav>
            </div>
        </header>
        <!--================Header Menu Area =================-->

        <!--================Home Banner Area =================-->
        <section class="home_banner_area">
            <div class="swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide"><img src="home/img/slider/slider-2.jpg" width="2000px" alt="">
                        <div class="slider_text_inner">
                            <div class="container">
                                <div class="row">
                                    <div class="col-lg-7">
                                        <div class="slider_text">
                                            <h2>AYO BERGABUNG <br />DENGAN MII</h2>
                                            <p>Ikut andil dalam solusi IT terlengkap dengan puluhan tahun pengalaman dan raihlah mimpi anda bersama kami.</p>
                                            <button type="button" class="btn btn-secondary mb-1" data-toggle="modal" data-target="#loginModal">
                                                Masuk
                                            </button>
                                            <button type="button" class="btn btn-secondary mb-1" data-toggle="modal" data-target="#registerModal">
                                                Daftar
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--================End Home Banner Area =================-->

        <!--================Success Area =================-->
        <section class="success_area">
            <div class="row m0">
                <div class="col-lg-6 p0">
                    <div class="mission_text">
                        <h4>Integritas</h4>
                        <p>Konsistensi dalam tindakan sesuai dengan norma moral, etika, dan hukum serta komitmen untuk selalu menjunjung dan mempertahankannya</p>
                    </div>
                </div>
                <div class="col-lg-6 p0">
                    <div class="success_img">
                        <img src="home/img/success-1.jpg" alt="">
                    </div>
                </div>
            </div>
            <div class="row m0 right_dir">
                <div class="col-lg-6 p0">
                    <div class="success_img">
                        <img src="home/img/success-2.jpg" alt="">
                    </div>
                </div>
                <div class="col-lg-6 p0">
                    <div class="mission_t   ext">
                        <h4>Profesionalitas</h4>
                        <p>Sebuah sikap, perilaku, dan tindakan yang menunjukkan pengetahuan, kompetensi, dan keterampilan unggul yang terus dikembangkan untuk menghadapi tantangan dan membawa kesuksesan bagi perusahaan.</p>
                    </div>
                </div>
            </div>
            <div class="row m0">
                <div class="col-lg-6 p0">
                    <div class="mission_text">
                        <h4>Enterpreneurship</h4>
                        <p>semangat untuk terus melakukan perbaikan, mampu mengubah ide menjadi kenyataan, berani mengambil inisiatif yang berani, tidak gentar oleh kegagalan dan mampu mengelola hubungan yang harmonis dengan para pemangku kepentingan.</p>
                    </div>
                </div>
                <div class="col-lg-6 p0">
                    <div class="success_img">
                        <img src="home/img/success-1.jpg" alt="">
                    </div>
                </div>
            </div>

        </section>
        <div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="staticModalLabel" aria-hidden="true" data-backdrop="static">
            <div class="modal-dialog" role="document">
                <form name="loginfrm" action="./login" method="POST">
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
                                <span aria-hidden="true" title="Close">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <div class="login-form">
                                <div class="form-group">
                                    <% InterfaceController<Kandidat> ick = new GeneralController<Kandidat>(HibernateUtil.getSessionFactory(), Kandidat.class);
                                        Kandidat k = ick.getLastId();
                                        int idBaru = k.getIdKandidat();
                                    %>
                                    <input type="text" class="form-control" readonly="readonly" hidden="hidden" value="<%= idBaru %>" name="idkandidat">
                                    <br>
                                    <input type="text" class="form-control" placeholder="Nama Lengkap" name="namakandidat">
                                    <br>
                                    <input type="email" class="form-control" placeholder="Email" name="email">
                                    <br>
                                    <input type="text" class="form-control" placeholder="Tanggal Lahir" id="datepicker" name="tgllahir">
                                    <br>
                                    <div class="row form-group">
                                        <div class="col col-md-6"><label class=" form-control-label">Jenis Kelamin</label></div><br>
                                        <div class="col col-md-9">
                                            <div class="form-check">
                                                <div class="radio">
                                                    <label for="radio1" class="form-check-label ">
                                                        <input type="radio" id="radio1" name="jeniskelamin"  class="form-check-input" value="laki">Laki-laki
                                                    </label>
                                                </div>
                                                <div class="radio">
                                                    <label for="radio2" class="form-check-label ">
                                                        <input type="radio" id="radio2" name="jeniskelamin"  class="form-check-input" value="perempuan">Perempuan
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <br>
                                    <div class="row form-group">
                                        <div class="col col-md-6"><label for="select" class=" form-control-label">Status Perkawinan</label></div><br>
                                        <div class="col-12 col-md-9">
                                            <select name="statusnikah" id="select" class="form-control">
                                                <option value="0">Silahkan Pilih</option>
                                                <option value="1">Belum menikah</option>
                                                <option value="2">Sudah Menikah</option>
                                                <option value="3">Single Parent</option>
                                            </select>
                                            <br>
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-6"><label for="select" class=" form-control-label">Agama</label></div><br>
                                        <div class="col-12 col-md-9">
                                            <select name="agama" id="select" class="form-control">
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
                                </div>
                                <button type="submit" class="btn btn-primary btn-flat m-b-30 m-t-30">Daftar</button>

                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
        <!--================End Success Area =================-->

        <!--================ start footer Area  =================-->	
        <footer class="footer-area">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3  col-md-6 col-sm-6">
                        <div class="single-footer-widget">
                            <h6 class="footer_title">Tentang MII</h6>
                            <p>PT Mitra Integrasi Informatika ("MII") merupakan garda terdepan bisnis solusi teknologi informasi komunikasi kelompok usaha METRODATA.</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="single-footer-widget">
                            <h6 class="footer_title">Link Navigasi</h6>
                            <div class="row">
                                <div class="col-4">
                                    <ul class="list">
                                        <li><a href="#">Beranda</a></li>
                                        <li><a href="#">Tentang</a></li>
                                        <li><a href="#">Pekerjaan</a></li>
                                    </ul>
                                </div>
                                <div class="col-4">
                                    <ul class="list">
                                        <li><a href="#">Masuk</a></li>
                                        <li><a href="#">Daftar</a></li>
                                    </ul>
                                </div>										
                            </div>							
                        </div>
                    </div>							
                    <div class="col-lg-6 col-md-12 col-sm-12">
                        <div class="single-footer-widget">
                            <h6 class="footer_title">PT Mitra Integrasi Informatika</h6>
                            <p>APL Tower Lantai 37 Jl. Letjen S. Parman Kav. 28 Jakarta 11470 </p>		
                            <p>Telp: +62 21 29345 777 / Fax: +62 21 29345 700 </p>		
                            <p>Email: contact@mii.co.id </p>
                        </div>
                    </div>					
                </div>
            </div>
            <div class="container">
                <div class="row footer-bottom d-flex justify-content-between align-items-center">
                    <p class="col-lg-8 col-md-8 footer-text m-0"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made by <a href="https://colorlib.com" target="_blank">Colorlib</a>
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>

                </div>
            </div>
        </footer>
        <!--================ End footer Area  =================-->

        <script src="assets/js/vendor/jquery-2.1.4.min.js"></script>
        <script src="assets/js/popper.min.js"></script>
        <script src="assets/js/plugins.js"></script>
        <script src="assets/js/main.js"></script>
        <script src="assets/js/lib/chosen/chosen.jquery.min.js"></script>

        <script src="home/js/jquery-3.2.1.min.js"></script>
        <script src="home/js/popper.js"></script>
        <script src="home/js/bootstrap.min.js"></script>
        <script src="home/js/stellar.js"></script>
        <script src="home/vendors/lightbox/simpleLightbox.min.js"></script>
        <script src="home/vendors/nice-select/js/jquery.nice-select.min.js"></script>
        <script src="home/vendors/isotope/imagesloaded.pkgd.min.js"></script>
        <script src="home/vendors/isotope/isotope-min.js"></script>
        <script src="home/vendors/owl-carousel/owl.carousel.min.js"></script>
        <script src="home/js/jquery.ajaxchimp.min.js"></script>
        <script src="home/vendors/counter-up/jquery.waypoints.min.js"></script>
        <script src="home/vendors/counter-up/jquery.counterup.js"></script>
        <script src="home/js/mail-script.js"></script>
        <script src="home/vendors/popup/jquery.magnific-popup.min.js"></script>
        <script src="home/vendors/swiper/js/swiper.min.js"></script>
        <script src="home/js/theme.js"></script>
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <script>
                            $(function () {
                                $("#datepicker").datepicker();
                            });
        </script>
    </body>
</html>
