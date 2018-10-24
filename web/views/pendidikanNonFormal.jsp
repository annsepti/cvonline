<%-- 
    Document   : pendidikanNonFormalForm
    Created on : Oct 19, 2018, 12:51:17 AM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="header.jsp" %>
    <body>
        <%@include file="aside.jsp" %>
        <div id="right-panel" class="right-panel">
            <%@include file="header2.jsp" %>
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
                                <li class="active">Pendidikan Non Formal</li>
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
                                    <strong>Pelatihan</strong> <small>  </small>
                                </div>
                                <div class="col-xs-6 col-sm-5">
                                    <button type="button" class="btn btn-primary btn-sm"><i class="fa fa-pencil"></i>&nbsp; Tambah</button>
                                </div>
                                <div class="card-body">
                                    <table id="bootstrap-data-table" class="table table-striped table-bordered">
                                        <thead>
                                            <tr>
                                                <th>Lembaga</th>
                                                <th>Nama Pelatihan</th>
                                                <th>Sertifikat</th>
                                                <th>Tanggal</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>Tiger Nixon</td>
                                                <td>System Architect</td>
                                                <td>Tiger Nixon</td>
                                                <td>System Architect</td>
                                            </tr>

                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header">
                                    <strong>Pelatihan</strong> <small>  </small>
                                </div>
                                <div class="col-xs-6 col-sm-5">
                                    <button type="button" class="btn btn-primary btn-sm"><i class="fa fa-pencil"></i>&nbsp; Tambah</button>
                                </div>
                                <div class="card-body">
                                    <table id="bootstrap-data-table" class="table table-striped table-bordered">
                                        <thead>
                                            <tr>
                                                <th>Bahasa</th>
                                                <th>Skor</th>
                                                <th>Speaking</th>
                                                <th>Reading</th>
                                                <th>Writing</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>Tiger Nixon</td>
                                                <td>System Architect</td>
                                                <td>Tiger Nixon</td>
                                                <td>System Architect</td>
                                                <td>System Architect</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div><!-- .animated -->
            </div><!-- .content -->

        </div><!-- /#right-panel -->
        <%@include file="footer.jsp" %>
    </body>
</html>