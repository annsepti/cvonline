<%-- 
    Document   : keluargaForm
    Created on : Oct 19, 2018, 12:38:55 AM
    Author     : USER
--%>

<%@page import="java.util.List"%>
<%@page import="models.Keluarga"%>
<%@page import="models.Kandidat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="header.jsp" %>
    <body>
        <% Kandidat kandidat = (Kandidat) session.getAttribute("dataKandidat");
            List<Keluarga> keluargas = (List<Keluarga>) session.getAttribute("dataKeluarga");
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
                                <li class="active">Data Keluarga</li>
                            </ol>
                        </div>
                    </div>
                </div>
            </div>

            <div class="content mt-3">
                <div class="animated fadeIn">

                    <div class="row">
                        <div class="limiter">
                            <div class="container-table100">
                                <div class="wrap-table100">
                                    <div class="table100">

                                        <%
                                            int i = 1;
                                        %>
                                        <table border="0">
                                            <thead>
                                                <tr>
                                                    <th>No</th>
                                                    <th>Hubungan</th>
                                                    <th>Nama Lengkap</th>
                                                    <th>Jenis Kelamin</th>
                                                    <th>Tanggal Lahir</th>
                                                    <th>Pendidikan</th>
                                                    <th>Pekerjaan</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <%
                                                    for (Keluarga keluarga : keluargas) {
                                                %>
                                                <tr>
                                                    <td><a href="#">Edit</a>
                                                        || <a href="./deleteLain?id=<%= keluarga.getIdKeluarga()%>">Delete</a></td>
                                                    <td><%= i%></td>
                                                    <td><%= keluarga.getHubungan()%></td>
                                                    <td><%= keluarga.getNamaKeluarga()%></td>
                                                    <td><%= keluarga.getJenisKelamin()%></td>
                                                    <td><%= keluarga.getTglLahir()%></td>
                                                    <td><%= keluarga.getPendidikan()%></td>
                                                    <td><%= keluarga.getPekerjaan()%></td>
                                                </tr>
                                                <% i++;
                                                    }%>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-6 col-sm-12">
                            <div class="card">
                                <div class="card-header">
                                    <strong>Keluarga</strong> <small>  </small>
                                </div>
                                <div class="card-body card-block">
                                    <div class="row form-group">
                                        <div class="col col-md-3"><label for="select" class=" form-control-label">Hubungan</label></div><br>
                                        <div class="col-12 col-md-9">
                                            <select name="select" id="select" class="form-control">
                                                <option value="0">Silahkan Pilih</option>
                                                <option value="1">Ayah</option>
                                                <option value="2">Ibu</option>
                                                <option value="3">Saudara</option>
                                                <option value="1">Suami</option>
                                                <option value="2">Istri</option>
                                                <option value="3">Anak</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-3"><label for="text-input" class=" form-control-label">Nama Lengkap</label></div>
                                        <div class="col-12 col-md-9"><input type="text" id="text-input" name="text-input" placeholder="" class="form-control"></div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-3"><label class=" form-control-label">Jenis Kelamin</label></div><br>
                                        <div class="col col-md-9">
                                            <div class="form-check">
                                                <div class="radio">
                                                    <label for="radio1" class="form-check-label ">
                                                        <input type="radio" id="radio1" name="radios" value="option1" class="form-check-input">Laki-laki
                                                    </label>
                                                </div>
                                                <div class="radio">
                                                    <label for="radio2" class="form-check-label ">
                                                        <input type="radio" id="radio2" name="radios" value="option2" class="form-check-input">Perempuan
                                                    </label></div>
                                            </div>
                                        </div>
                                    </div> 
                                    <div class="row form-group">
                                        <div class="col col-md-3"><label for="text-input" class=" form-control-label">Tanggal Lahir</label></div>
                                        <div class="col-12 col-md-9"><input type="text" id="text-input" name="text-input" placeholder="" class="form-control"><small class="form-text text-muted">Format DD/MM/YYY</small></div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-3"><label for="text-input" class=" form-control-label">Pendidikan</label></div>
                                        <div class="col-12 col-md-9"><input type="text" id="text-input" name="text-input" placeholder="" class="form-control"></div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-3"><label for="text-input" class=" form-control-label">Pekerjaan</label></div>
                                        <div class="col-12 col-md-9"><input type="text" id="text-input" name="text-input" placeholder="" class="form-control"></div>
                                    </div>
                                </div>
                                <div class="card-footer">
                                    <button type="submit" class="btn btn-primary btn-sm">
                                        <i class="fa fa-dot-circle-o"></i> Simpan
                                    </button>
                                    <button type="reset" class="btn btn-danger btn-sm">
                                        <i class="fa fa-ban"></i> Reset
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div><!-- .animated -->
            </div><!-- .content -->
        </div>
        <%@include file="footer.jsp" %>
    </body>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#bootstrap-data-table-export').DataTable();

        });
        $('#mediumModal').on('show.bs.modal', function (event) {
            var myVal = $(event.relatedTarget).data('val');
            var a = myVal.split(",");
            $(this).find('input[id="hubungan"]').val(a[0]);
            $(this).find('input[id="nama"]').val(a[1]);
            $(this).find('input[id="jeniskelamin"]').val(a[2]);
            $(this).find('input[id="tgllahir"]').val(a[3]);
            $(this).find('input[id="pendidikan"]').val(a[4]);
            $(this).find('input[id="pekerjaan"]').val(a[5]);
        });

    </script>
</html>
