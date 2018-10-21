<%-- 
    Document   : cvForm
    Created on : Oct 19, 2018, 12:04:45 AM
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
                                <div class="card-header">
                                    <strong class="card-title mb-3">Profil Singkat</strong>
                                </div>
                                <div class="card-body">
                                    <div class="mx-auto d-block">
                                        <img class="rounded-circle mx-auto d-block" src="../images/admin.jpg" alt="Card image cap">
                                        <h5 class="text-sm-center mt-2 mb-1">Steven Lee</h5>
                                        <div class="location text-sm-center"><i class="fa fa-map-marker"></i> California, United States</div>
                                    </div>
                                    <hr>
                                    <div class="card-text text-sm-center">
                                        <h8>Status Tersedia</h8>
                                        <label class="switch switch-text switch-success switch-pill"><input type="checkbox" class="switch-input" checked="true"> <span data-on="On" data-off="Off" class="switch-label"></span> <span class="switch-handle"></span></label>
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
