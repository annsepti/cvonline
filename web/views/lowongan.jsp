<%-- 
    Document   : lowonganForm
    Created on : Oct 19, 2018, 12:46:18 AM
    Author     : USER
--%>

<%@page import="tools.HibernateUtil"%>
<%@page import="controllers.GeneralController"%>
<%@page import="controllers.InterfaceController"%>
<%@page import="models.Lowongan"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="header.jsp" %>
    <body>
        <!-- Left Panel -->
            <% InterfaceController<Lowongan> ic = new GeneralController<Lowongan>(HibernateUtil.getSessionFactory(), Lowongan.class);
            List<Lowongan> datas = (List<Lowongan>) session.getAttribute("dataLowongan");
            String message = (String) session.getAttribute("PESAN");
            if (message != null) {
                out.println(message);
            }%>
<%@include file="aside.jsp" %>
        <div id="right-panel" class="right-panel">
<%@include file="header2.jsp" %>
            <div class="breadcrumbs">
                <div class="col-sm-4">
                    <div class="page-header float-left">
                        <div class="page-title">
                            <h1>Lowongan Pekerjaan</h1>
                        </div>
                    </div>
                </div>
            </div>
            <div class="content mt-3">
                <div class="animated fadeIn">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="card">
                                <div class="card-header">
                                    <strong class="card-title">Data Table</strong>
                                </div>
                                <div class="card-body">
                                    <table id="bootstrap-data-table" class="table table-striped table-bordered">
                                        <thead>
                                            <tr>
                                                <th>Aksi</th>
                                                <th>Posisi</th>
                                                <th>Syarat</th>
                                                <th>Batas Akhir</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                             <% for (Lowongan lowongan : datas) {%> 
                                            <tr>
                                                <td><a class="menu-icon fa fa-edit" href="./editBahasa?id=<%= lowongan.getIdLowongan()%>"></a> |
                                                    <a class="menu-icon fa fa-trash" href="./deleteBahasa?id=<%= lowongan.getIdLowongan()%>"></a></td>
                                                <td><%= lowongan.getNamaPosisi()%></td>
                                                <td><%= lowongan.getSyarat()%></td>
                                                <td><%= lowongan.getBatasAkhir()%></td>
                                            </tr>
                                            <% }%>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>


                    </div>
                </div><!-- .animated -->
            </div><!-- .content -->


        </div><!-- /#right-panel -->

        <!-- Right Panel -->


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
        <script src="assets/js/lib/data-table/datatables-init.js"></script>


        <script type="text/javascript">
            $(document).ready(function () {
                $('#bootstrap-data-table-export').DataTable();
            });
        </script>


    </body>
</html>
