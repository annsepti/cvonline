<%-- 
    Document   : organisasi
    Created on : Oct 25, 2018, 10:24:49 AM
    Author     : USER
--%>

<%@page import="java.util.List"%>
<%@page import="models.Pengalamankerja"%>
<%@page import="models.Organisasi"%>
<%@page import="models.Kandidat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="header.jsp" %>
    <body>
        <% Kandidat kandidat = (Kandidat) session.getAttribute("dataKandidat");
            List<Organisasi> organisasis = (List<Organisasi>) session.getAttribute("dataOrganisasi");
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
                                    <strong> Pengalaman Organisasi</strong>
                                </div>
                                <div class="card-body card-block">
                                    <div class="limiter">
                                        <div class="container-table100">
                                            <div class="wrap-table100">
                                                <div class="table100">

                                                    <%
                                                        int o = 1;
                                                    %>
                                                    <div class="col-xs-6 col-sm-2">
                                                        <button type="button" class="btn btn-primary btn-sm fa fa-pencil" data-toggle="modal" data-target="#tambahOrganisasiModal">&nbsp; Tambah</button>
                                                    </div>
                                                    <table id="bootstrap-data-table" class="table table-striped table-bordered">
                                                        <thead>
                                                            <tr>
                                                                <th>Opsi</th>
                                                                <th>No</th>
                                                                <th>Nama Organisasi</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <%
                                                                for (Organisasi organisasi : organisasis) {
                                                            %>
                                                            <tr>
                                                                <td>
                                                                    <button type="text" class="fa fa-recycle" data-toggle="modal" data-target="#tambahModal">Ubah</button> |
                                                                    <button type="text" class="fa fa-trash" href="#?id=<%= organisasi.getIdOrganisasi()%>">Hapus</button>
                                                                </td>
                                                                <td><%= o%></td>
                                                                <td><%= organisasi.getNamaOrganisasi()%></td>
                                                            </tr>
                                                            <% o++;
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
