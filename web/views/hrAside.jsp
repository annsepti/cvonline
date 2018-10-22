<%-- 
    Document   : hrAside
    Created on : Oct 22, 2018, 2:55:13 AM
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
                    <a class="navbar-brand" href="hr.jsp"><img src="../images/mii-logo.png" alt="Logo"></a>
                    <a class="navbar-brand hidden" href="hr.jsp"><img src="../images/mii-logo.png" alt="Logo"></a>
                </div>

                <div id="main-menu" class="main-menu collapse navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li class="active">
                            <a href="hr.jsp"> <i class="menu-icon fa fa-dashboard"></i>BERANDA </a>
                        </li>
                        <h3 class="menu-title">KANDIDAT</h3><!-- /.menu-title -->
                        <li>
                            <a href="hrKandidat.jsp" > <i class="menu-icon fa fa-suitcase"></i>Daftar Kandidat</a>

                        </li>
                        <h3 class="menu-title">PEKERJAAN</h3><!-- /.menu-title -->
                        <li>
                            <a href="hrLowongan.jsp"> <i class="menu-icon fa fa-tasks"></i>Daftar Pekerjaan</a>
                        </li>
                    </ul>
                </div><!-- /.navbar-collapse -->
            </nav>
        </aside><!-- /#left-panel -->
</html>
