<%-- 
    Document   : aside
    Created on : Oct 21, 2018, 6:55:33 PM
    Author     : 680183
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <aside id="left-panel" class="left-panel">
            <nav class="navbar navbar-expand-sm navbar-default">

                <div class="navbar-header">
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#main-menu" aria-controls="main-menu" aria-expanded="false" aria-label="Toggle navigation">
                        <i class="fa fa-bars"></i>
                    </button>
                    <a class="navbar-brand" href="cv.jsp"><img src="images/mii-logo.png" alt="Logo"></a>
                    <a class="navbar-brand hidden" href="cv.jsp"><img src="images/mii-logo.png" alt="Logo"></a>
                </div>

                
                    
                        <li class="active">
                            <a href="cv.jsp"> <i class="menu-icon fa fa-dashboard"></i>BERANDA </a>
                        </li>
                        <h3 class="menu-title">CURRICULUM VITAE</h3><!-- /.menu-title -->
                        <li class="menu-item-has-children dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-laptop"></i>Data CV</a>
                            <ul class="sub-menu children dropdown-menu">
                                <li><i class="fa fa-user"></i><a method="POST" href="./kandidat?idKandidat=${param.id}">Data Pribadi</a></li>
                                <li><i class="fa fa-heart"></i><a href="keluarga.jsp">Keluarga</a></li>
                                <li><i class="fa fa-bookmark"></i><a href="pendidikanFormal.jsp">Pendidikan Formal</a></li>
                                <li><i class="fa fa-bookmark-o"></i><a href="pendidikanNonFormal.jsp">Non Formal</a></li>
                                <li><i class="fa fa-building-o"></i><a href="pengalamanKerja.jsp">Pengalaman Kerja</a></li>
                                <li><i class="fa fa-group"></i><a href="referensi.jsp">Referensi</a></li>
                                <li><i class="fa fa-asterisk"></i><a href="lainlain.jsp">Lain-lain</a></li>
                            </ul>
                        </li>
                        <% String id = "${param.id}"; %> 
                        <li class="menu-item-has-children dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-folder-open-o "></i>Lihat CV</a>
                            <ul class="sub-menu children dropdown-menu">
                                <li><i class="fa fa-print"></i><a href="./${param.id}">CV Online</a></li>
                                <li><i class="fa fa-upload"></i><a href="unggahCv.jsp">Unggah CV</a></li>
                            </ul>
                        </li>

                        <h3 class="menu-title">LOWONGAN</h3><!-- /.menu-title -->

                        <li>
                            <a href="lowongan.jsp" > <i class="menu-icon fa fa-suitcase"></i>Lihat Lowongan Tersedia</a>

                        </li>
                        <li>
                            <a href="daftarPekerjaan.jsp"> <i class="menu-icon fa fa-tasks"></i>Daftar Pekerjaan</a>
                        </li>
                    
                <!-- /.navbar-collapse -->
            </nav>
        </aside><!-- /#left-panel -->
</html>
