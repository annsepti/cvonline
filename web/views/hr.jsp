<%-- 
    Document   : hrdForm
    Created on : Oct 19, 2018, 12:33:54 AM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <%@include file="hrHeader.jsp" %>
    <body>
        <%@include file="hrAside.jsp" %>
        <div id="right-panel" class="right-panel">
            <%@include file="hrHeader2.jsp" %>
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
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3">
                        </div>
                    </div>
                </div><!-- .animated -->
            </div>
        </div>
        <%@include file="hrFooter.jsp" %>
    </body>
</html>
