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
        <link rel="icon" href="../images/logomii.PNG" type="image/png">
        <title>MII-CV ONLINE</title>
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="../home/css/bootstrap.css">
        <link rel="stylesheet" href="../home/vendors/linericon/style.css">
        <link rel="stylesheet" href="../home/css/font-awesome.min.css">
        <link rel="stylesheet" href="../home/vendors/owl-carousel/owl.carousel.min.css">
        <link rel="stylesheet" href="../home/vendors/lightbox/simpleLightbox.css">
        <link rel="stylesheet" href="../home/vendors/nice-select/css/nice-select.css">
        <link rel="stylesheet" href="../home/vendors/animate-css/animate.css">
        <link rel="stylesheet" href="../home/vendors/swiper/css/swiper.min.css">
        <!-- main css -->
        <link rel="stylesheet" href="../home/css/style.css">
        <link rel="stylesheet" href="../home/css/responsive.css">
       
    </head>
    <body>

        <!--================Header Menu Area =================-->
        <header class="header_area">
            <div class="main_menu">
                <nav class="navbar navbar-expand-lg navbar-light">
                    <div class="container box_1620">
                        <!-- Brand and toggle get grouped for better mobile display -->
                        <a class="navbar-brand logo_h" href="index.jsp"><img src="../images/logomii.PNG" WIDTH="150px" alt=""></a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <!-- Collect the nav links, forms, and other content for toggling -->
                        <div class="collapse navbar-collapse offset" id="navbarSupportedContent">
                            <ul class="nav navbar-nav menu_nav justify-content-center">
                                <li class="nav-item"><a class="nav-link" href="../index.jsp">Beranda</a></li> 
                                <li class="nav-item"><a class="nav-link" href="indexTentang.jsp">Tentang</a></li> 
                                <li class="nav-item active"><a class="nav-link" href="indexLowongan.jsp">Lowongan</a>
                            </ul>
                        </div> 
                    </div>
                </nav>
            </div>
        </header>
        <!--================Header Menu Area =================-->
        <section class="banner_area">
            <div class="banner_inner d-flex align-items-center">
				<div class="container">
					<div class="banner_content">
						<h2>Tentang Kami</h2>
						<div class="page_link">
							<a href="../index.jsp">Beranda</a>
							<a href="indexLowongan.jsp">Lowongan</a>
						</div>
					</div>
				</div>
            </div>
        </section>
        <!--================Home Banner Area =================-->
        
        <!--================End Home Banner Area =================-->

        <!--================Success Area =================-->
       
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

<!--         Optional JavaScript 
         jQuery first, then Popper.js, then Bootstrap JS 
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
        <script src="assets/js/lib/data-table/datatables-init.js"></script>-->


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
        <script src="../home/js/jquery-3.2.1.min.js"></script>
        <script src="../home/js/popper.js"></script>
        <script src="../home/js/bootstrap.min.js"></script>
        <script src="../home/js/stellar.js"></script>
        <script src="../home/vendors/lightbox/simpleLightbox.min.js"></script>
        <script src="../home/vendors/nice-select/js/jquery.nice-select.min.js"></script>
        <script src="../home/vendors/isotope/imagesloaded.pkgd.min.js"></script>
        <script src="../home/vendors/isotope/isotope-min.js"></script>
        <script src="../home/vendors/owl-carousel/owl.carousel.min.js"></script>
        <script src="../home/js/jquery.ajaxchimp.min.js"></script>
        <script src="../home/vendors/counter-up/jquery.waypoints.min.js"></script>
        <script src="../home/vendors/counter-up/jquery.counterup.js"></script>
        <script src="../home/js/mail-script.js"></script>
        <script src="../home/vendors/popup/jquery.magnific-popup.min.js"></script>
        <script src="../home/vendors/swiper/js/swiper.min.js"></script>
        <script src="../home/js/theme.js"></script>
    </body>
</html>