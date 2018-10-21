<%-- 
    Document   : keluargaForm
    Created on : Oct 19, 2018, 12:38:55 AM
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
                                <li class="active">Data Keluarga</li>
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
                                                        </div>
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
                        </html>
