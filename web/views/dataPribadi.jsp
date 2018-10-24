<%-- 
    Document   : datapribadiForm
    Created on : Oct 19, 2018, 12:12:09 AM
    Author     : USER
--%>

<%@page import="java.lang.String"%>
<%@page import="models.Kandidat"%>
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
                                <li class="active">Data Pribadi</li>
                            </ol>
                        </div>
                    </div>
                </div>
            </div>
            <% Kandidat kandidat = (Kandidat) session.getAttribute("dataKandidat");%>
            <div class="content mt-3">
                <div class="animated fadeIn">

                    <div class="row">

                        <div class="col-xs-6 col-sm-12">
                            <div class="card">
                                <form action="./soukandidat" name="edit" method="POST">
                                    <div class="card-header">
                                        <strong>Profil</strong> <small>  </small>
                                    </div>
                                    <div class="card-body card-block">
                                        <input name="idkandidat" value="<%= kandidat.getIdKandidat()%>" hidden="hidden">
                                        <input name="password" value="<%= kandidat.getPassword()%>" hidden="hidden">
                                        <input name="email" value="<%= kandidat.getEmail()%>" hidden="hidden">

                                        <div class="row form-group">
                                            <div class="col col-md-3"><label for="text-input" class=" form-control-label">Nama</label></div>
                                            <div class="col-12 col-md-9"><input type="text" id="text-input" name="namakandidat" placeholder="" class="form-control" value="<%= kandidat.getNamaKandidat()%>"><small class="form-text text-muted">Nama lengkap sesuai KTP</small></div>
                                        </div>
                                        <div class="row form-group">
                                            <div class="col col-md-3"><label for="text-input" class=" form-control-label">Tempat Lahir</label></div>
                                            <div class="col-12 col-md-9"><input type="text" id="text-input" name="tempatlahir" placeholder="" class="form-control" value="<%= kandidat.getTempatLahir()%>"></div>
                                        </div>
                                        <div class="row form-group">
                                            <%
                                                String date = kandidat.getTglLahir().toString();
                                                String[] dates = date.split("-");
                                                date = dates[0] + "/" + dates[1] + "/" + dates[2];
                                            %>
                                            <div class="col col-md-3"><label for="text-input" class=" form-control-label">Tanggal Lahir</label></div>
                                            <div class="col-12 col-md-9"><input type="text" id="text-input" name="tgllahir" placeholder="" class="form-control" value="<%= date%>"><small class="form-text text-muted">Format YYYY/MM/DD</small></div>
                                        </div>
                                        <div class="row form-group">
                                            <div class="col col-md-3"><label for="text-input" class=" form-control-label">NIK (No. KTP)</label></div>
                                            <div class="col-12 col-md-9"><input type="text" id="text-input" name="nik" placeholder="" class="form-control" value="<%= kandidat.getNik()%>"></div>
                                        </div>
                                        <div class="row form-group">
                                            <div class="col col-md-3"><label class=" form-control-label">Jenis Kelamin</label></div><br>
                                            <div class="col col-md-9">
                                                <div class="form-check">
                                                    <div class="radio">
                                                        <label for="radio1" class="form-check-label ">
                                                            <input type="radio" id="radio1" name="jeniskelamin" <% if (kandidat.getJenisKelamin().equals("laki")) {%> checked="true" <%}%>  class="form-check-input" value="laki">laki
                                                        </label>
                                                    </div>
                                                    <div class="radio">
                                                        <label for="radio2" class="form-check-label ">
                                                            <input type="radio" id="radio2" name="jeniskelamin"  <% if (kandidat.getJenisKelamin().equals("perempuan")) {%> checked="true" <%}%> class="form-check-input" value="perempuan">perempuan
                                                        </label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <div class="col col-md-3"><label for="select" class=" form-control-label">Status Perkawinan</label></div><br>
                                            <div class="col-12 col-md-9">
                                                <select name="statusnikah" id="select" class="form-control">
                                                    <option value="0">Silahkan Pilih</option>
                                                    <option value="1" <% if (kandidat.getStatusNikah().equals("belum menikah")) {%> selected="selected" <%}%> >Belum menikah</option>
                                                    <option value="2" <% if (kandidat.getStatusNikah().equals("menikah")) {%> selected="selected" <%}%>>Sudah Menikah</option>
                                                    <option value="3" <% if (kandidat.getStatusNikah().equals("single parent")) {%> selected="selected" <%}%>>Single Parent</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <div class="col col-md-3"><label for="select" class=" form-control-label">Agama</label></div><br>
                                            <div class="col-12 col-md-9">
                                                <select name="agama" id="select" class="form-control">
                                                    <option value="0">Silahkan Pilih</option>
                                                    <option value="1" <% if (kandidat.getAgama().equals("islam")) {%> selected="selected" <%}%> >Islam</option>
                                                    <option value="2" <% if (kandidat.getAgama().equals("kristen")) {%> selected="selected" <%}%>>Kristen</option>
                                                    <option value="3" <% if (kandidat.getAgama().equals("katolik")) {%> selected="selected" <%}%>>Katolik</option>
                                                    <option value="1" <% if (kandidat.getAgama().equals("budha")) {%> selected="selected" <%}%>>Budha</option>
                                                    <option value="2" <% if (kandidat.getAgama().equals("hindu")) {%> selected="selected" <%}%>>Hindu</option>
                                                    <option value="3" <% if (kandidat.getAgama().equals("lainnya")) {%> selected="selected" <%}%>>Lainnya</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <div class="col col-md-3"><label for="textarea-input" class=" form-control-label">Alamat Sesuai KTP</label></div>
                                            <div class="col-12 col-md-9"><textarea name="alamatktp" id="textarea-input" rows="9" placeholder="" class="form-control" name="alamatktp" ><%= kandidat.getAlamatKtp()%></textarea></div>
                                        </div>
                                        <div class="row form-group">
                                            <div class="col col-md-3"><label for="textarea-input" class=" form-control-label">Alamat Sekarang</label></div>
                                            <div class="col-12 col-md-9"><textarea name="alamatskrg" id="textarea-input" rows="9" placeholder="" class="form-control" name="alamatskrg" ><%= kandidat.getAlamatSekarang()%></textarea></div>
                                        </div>
                                        <div class="row form-group">
                                            <div class="col col-md-3"><label for="text-input" class=" form-control-label">NPWP</label></div>
                                            <div class="col-12 col-md-9"><input type="text" id="text-input" name="npwp" placeholder="" class="form-control" name="npwp" value="<%= kandidat.getNpwp()%>" ></div>
                                        </div>
                                        <div class="row form-group">
                                            <div class="col col-md-3"><label for="text-input" class=" form-control-label">Ponsel</label></div>
                                            <div class="col-12 col-md-9"><input type="text" id="text-input" name="nope" placeholder="" class="form-control" name="nope" value="<%= kandidat.getNoHp()%>" ></div>
                                        </div>
                                        <div class="row form-group">
                                            <div class="col col-md-3"><label for="text-input" class=" form-control-label">Telepon Rumah</label></div>
                                            <div class="col-12 col-md-9"><input type="text" id="text-input" name="notelp" placeholder="" class="form-control" name="notelp" value="<%= kandidat.getNoTelp()%>" ></div>
                                        </div>
                                        <div class="row form-group">
                                            <div class="col col-md-3"><label for="text-input" class=" form-control-label">Telepon Kerabat</label></div>
                                            <div class="col-12 col-md-4"><input type="text" id="text-input" name="nopekerabat" placeholder="" class="form-control" name="nopekerabat" value="<%= kandidat.getNoTelpkerabat()%>" ></div>
                                            <div class="col col-md-2"><label for="text-input" class=" form-control-label">Atas Nama</label></div>
                                            <div class="col-12 col-md-3"><input type="text" id="text-input" name="namakerabat" placeholder="" class="form-control" name="namakerabat" value="<%= kandidat.getNamaKerabat()%>" ></div>

                                        </div>
                                        <div class="row form-group">
                                            <div class="col col-md-3"><label for="file-input" class=" form-control-label">   Unggah Foto</label></div>
                                            <div class="col-12 col-md-9"><input type="file" id="file-input" name="foto" class="form-control-file"></div>
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
                                </form>
                            </div>
                        </div>
                    </div><!-- .animated -->
                </div>
            </div>
            <%@include file="footer.jsp" %>
    </body>
</html>
