<%-- 
    Document   : datapribadiForm
    Created on : Oct 19, 2018, 12:12:09 AM
    Author     : USER
--%>

<%@page import="models.Kandidat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="header.jsp" %>
    <body>
        <%@include file="aside.jsp" %>
        <div id="right-panel" class="right-panel">r-->
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
                                <form action="./soukandidat" name="edit">
                                    <div class="card-header">
                                        <strong>Profil</strong> <small>  </small>
                                    </div>
                                    <div class="card-body card-block">
                                        <input name="idkandidat" value="<%= kandidat.getIdKandidat() %>" hidden="hidden">
                                        <div class="row form-group">
                                            <div class="col col-md-3"><label for="text-input" class=" form-control-label">Nama</label></div>
                                            <div class="col-12 col-md-9"><input type="text" id="text-input" name="namakandidat" placeholder="" class="form-control" value="<%= kandidat.getNamaKandidat()%>"><small class="form-text text-muted">Nama lengkap sesuai KTP</small></div>
                                        </div>
                                        <div class="row form-group">
                                            <div class="col col-md-3"><label for="text-input" class=" form-control-label">Tempat Lahir</label></div>
                                            <div class="col-12 col-md-9"><input type="text" id="text-input" name="tempatlahir" placeholder="" class="form-control" value="<%= kandidat.getTempatLahir()%>"></div>
                                        </div>
                                        <div class="row form-group">
                                            <div class="col col-md-3"><label for="text-input" class=" form-control-label">Tanggal Lahir</label></div>
                                            <div class="col-12 col-md-9"><input type="text" id="text-input" name="tgllahir" placeholder="" class="form-control" value="<%= kandidat.getTglLahir()%>"><small class="form-text text-muted">Format DD/MM/YYY</small></div>
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
                                                            <input type="radio" id="radio1" name="jeniskelamin" value="<%= kandidat.getJenisKelamin()%>" class="form-check-input">laki
                                                        </label>
                                                    </div>
                                                    <div class="radio">
                                                        <label for="radio2" class="form-check-label ">
                                                            <input type="radio" id="radio2" name="jeniskelamin" value="<%= kandidat.getJenisKelamin()%>" class="form-check-input">perempuan
                                                            </div>
                                                            </div>
                                                            </div>
                                                            </div>
                                                            <div class="row form-group">
                                                                <div class="col col-md-3"><label for="select" class=" form-control-label">Status Perkawinan</label></div><br>
                                                                <div class="col-12 col-md-9">
                                                                    <select name="statusnikah" id="select" class="form-control">
                                                                        <option value="0">Silahkan Pilih</option>
                                                                        <option value="1">Belum Menikah</option>
                                                                        <option value="2">Sudah Menikah</option>
                                                                        <option value="3">Single Parent</option>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                            <div class="row form-group">
                                                                <div class="col col-md-3"><label for="select" class=" form-control-label">Agama</label></div><br>
                                                                <div class="col-12 col-md-9">
                                                                    <select name="agama" id="select" class="form-control">
                                                                        <option value="0">Silahkan Pilih</option>
                                                                        <option value="1">Islam</option>
                                                                        <option value="2">Kristen</option>
                                                                        <option value="3">Katolik</option>
                                                                        <option value="1">Budha</option>
                                                                        <option value="2">Hindu</option>
                                                                        <option value="3">Lainnya</option>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                            <div class="row form-group">
                                                                <div class="col col-md-3"><label for="textarea-input" class=" form-control-label">Alamat Sesuai KTP</label></div>
                                                                <div class="col-12 col-md-9"><textarea name="textarea-input" id="textarea-input" rows="9" placeholder="" class="form-control" name="alamatktp" value="<%= kandidat.getAlamatKtp()%>"></textarea></div>
                                                            </div>
                                                            <div class="row form-group">
                                                                <div class="col col-md-3"><label for="textarea-input" class=" form-control-label">Alamat Sekarang</label></div>
                                                                <div class="col-12 col-md-9"><textarea name="textarea-input" id="textarea-input" rows="9" placeholder="" class="form-control" name="alamatskrg" value="<%= kandidat.getAlamatSekarang()%>"></textarea></div>
                                                            </div>
                                                            <div class="row form-group">
                                                                <div class="col col-md-3"><label for="text-input" class=" form-control-label">NPWP</label></div>
                                                                <div class="col-12 col-md-9"><input type="text" id="text-input" name="text-input" placeholder="" class="form-control" name="npwp" value="<%= kandidat.getNpwp()%>" ></div>
                                                            </div>
                                                            <div class="row form-group">
                                                                <div class="col col-md-3"><label for="text-input" class=" form-control-label">Ponsel</label></div>
                                                                <div class="col-12 col-md-9"><input type="text" id="text-input" name="text-input" placeholder="" class="form-control" name="nope" value="<%= kandidat.getNoHp()%>" ></div>
                                                            </div>
                                                            <div class="row form-group">
                                                                <div class="col col-md-3"><label for="text-input" class=" form-control-label">Telepon Rumah</label></div>
                                                                <div class="col-12 col-md-9"><input type="text" id="text-input" name="text-input" placeholder="" class="form-control" name="notelp" value="<%= kandidat.getNoTelp()%>" ></div>
                                                            </div>
                                                            <div class="row form-group">
                                                                <div class="col col-md-3"><label for="text-input" class=" form-control-label">Telepon Kerabat</label></div>
                                                                <div class="col-12 col-md-4"><input type="text" id="text-input" name="text-input" placeholder="" class="form-control" name="nopekerabat" value="<%= kandidat.getNoTelpkerabat()%>" ></div>
                                                                <div class="col col-md-2"><label for="text-input" class=" form-control-label">Atas Nama</label></div>
                                                                <div class="col-12 col-md-3"><input type="text" id="text-input" name="text-input" placeholder="" class="form-control" name="namakerabat" value="<%= kandidat.getNamaKerabat()%>" ></div>

                                                            </div>
                                                            <div class="row form-group">
                                                                <div class="col col-md-3"><label for="select" class=" form-control-label">Pendidikan Terakhir</label></div><br>
                                                                <div class="col-12 col-md-9">
                                                                    <select name="select" id="select" class="form-control">
                                                                        <option value="0">Silahkan Pilih</option>
                                                                        <option value="1">S3</option>
                                                                        <option value="2">S2</option>
                                                                        <option value="3">S1</option>
                                                                        <option value="1">D4</option>
                                                                        <option value="2">D3</option>
                                                                        <option value="3">D2</option>
                                                                        <option value="1">D1</option>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                            <div class="row form-group">
                                                                <div class="col col-md-3"><label for="file-input" class=" form-control-label">Unggah Foto</label></div>
                                                                <div class="col-12 col-md-9"><input type="file" id="file-input" name="foto" class="form-control-file"></div>
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
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </div><!-- .animated -->
                            </div>
                        </div>
                        <%@include file="footer.jsp" %>
                        </body>
                        </html>
