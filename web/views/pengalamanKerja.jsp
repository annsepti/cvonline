<%-- 
    Document   : pengalamanKerja
    Created on : Oct 19, 2018, 12:59:34 AM
    Author     : USER
--%>

<%@page import="models.Pengalamankerja"%>
<%@page import="models.Organisasi"%>
<%@page import="java.util.List"%>
<%@page import="models.Kandidat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="header.jsp" %>
    <body>
        <% Kandidat kandidat = (Kandidat) session.getAttribute("dataKandidat");
            List<Organisasi> organisasis = (List<Organisasi>) session.getAttribute("dataOrganisasi");
            List<Pengalamankerja> pengalamankerjas = (List<Pengalamankerja>) session.getAttribute("dataPengalaman");
        %>
        <jsp:include page="aside.jsp">
            <jsp:param name="id" value="<%= kandidat.getIdKandidat()%>"></jsp:param>
        </jsp:include>
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
                                <li class="active">Pengalaman Kerja</li>
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
                                    <strong>Pengalaman Kerja Profesional</strong> <small> Dimulai dengan pekerjaan saat ini hingga pekerjaan pertama anda</small>
                                </div>
                                <div class="card-body card-block">
                                    <div class="limiter">
                                        <div class="container-table100">
                                            <div class="wrap-table100">
                                                <div class="table100">

                                                    <%
                                                        int k = 1;
                                                    %>
                                                    <div class="col-xs-6 col-sm-3">
                                                        <button type="button" class="btn btn-primary btn-sm fa fa-pencil" data-toggle="modal" data-target="#tambahPengalamanModal">&nbsp; Tambah</button>
                                                    </div>
                                                    <table id="bootstrap-data-table" class="table table-striped table-bordered">
                                                        <thead>
                                                            <tr>
                                                                <th>Opsi</th>
                                                                <th>No</th>
                                                                <th>Nama PT</th>
                                                                <th>Bidang</th>
                                                                <th>Tgl Masuk</th>
                                                                <th>Tgl Keluar</th>
                                                                <th>Posisi</th>
                                                                <th>Uraian Jabatan</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <%
                                                                for (Pengalamankerja pengalamankerja : pengalamankerjas) {
                                                            %>
                                                            <tr>
                                                                <td>
                                                                    <button type="text" class="fa fa-recycle" data-toggle="modal" data-target="#tambahModal">Ubah</button> |
                                                                    <button type="text" class="fa fa-trash" href="#?id=<%= pengalamankerja.getIdPengalamankerja()%>">Hapus</button>
                                                                </td>
                                                                <td><%= k%></td>
                                                                <td><%= pengalamankerja.getNamaPt()%></td>
                                                                <td><%= pengalamankerja.getBidang()%></td>
                                                                <td><%= pengalamankerja.getTglAwal()%></td>
                                                                <td><%= pengalamankerja.getTglAkhir()%></td>
                                                                <td><%= pengalamankerja.getPosisi()%></td>
                                                                <td><%= pengalamankerja.getUraianJabatan()%></td>
                                                            </tr>
                                                            <% k++;
                                                                }%>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
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

