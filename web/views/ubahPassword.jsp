<%-- 
    Document   : cvForm
    Created on : Oct 19, 2018, 12:04:45 AM
    Author     : USER
--%>

<%@page import="models.Kandidat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="header.jsp" %>
    <body>
        <%--<%@include file="aside.jsp" %>--%>
        <% Kandidat kandidat = (Kandidat) session.getAttribute("dataKandidat");%>
        <jsp:include page="aside.jsp">
            <jsp:param name="id" value="<%= kandidat.getIdKandidat()%>"></jsp:param>
        </jsp:include>
        <div id="right-panel" class="right-panel">
            <%@include file="header2.jsp" %>
            <div class="breadcrumbs">
                <div class="col-sm-4">
                    <div class="page-header float-left">
                        <div class="page-title">
                            <h1>Beranda</h1>
                        </div>
                    </div>
                </div>
            </div>
            <div class="content mt-3">
                <div class="animated fadeIn">
                    <div class="row">
                        <div class="col-md-3">
                        </div>
                        <div class="col-md-6">
                            <div class="card">
                                <div class="card-header">Ganti Password Baru</div>
                                <div class="card-body card-block">
                                    <form action="" method="post" class="">
                                        <div class="form-group">
                                            <div class="form-group">
                                                <div class="input-group">
                                                    <div class="input-group-addon">Password Lama</div>
                                                    <input type="password" id="password3" name="password3" class="form-control">
                                                    <div class="input-group-addon"><i class="fa fa-asterisk"></i></div>
                                                </div>
                                            </div>
                                            <div class="form-group"> 
                                                <div class="input-group">
                                                    <div class="input-group-addon">Password Baru</div>
                                                    <input type="password" id="password3" name="password3" class="form-control">
                                                    <div class="input-group-addon"><i class="fa fa-asterisk"></i></div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="input-group">
                                                    <div class="input-group-addon">Konfirmasi Password</div>
                                                    <input type="password" id="password3" name="password3" class="form-control">
                                                    <div class="input-group-addon"><i class="fa fa-asterisk"></i></div>
                                                </div>
                                            </div>
                                            <div class="form-actions form-group">
                                                <button type="submit" class="btn btn-primary btn-sm">Simpan</button>
                                            </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                    </div>
                </div>
            </div><!-- .animated -->
        </div><!-- .content -->
    </div>
    <%@include file="footer.jsp" %>
</body>
</html>
