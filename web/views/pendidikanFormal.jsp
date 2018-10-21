<%-- 
    Document   : pendidikanFormalForm
    Created on : Oct 19, 2018, 12:50:21 AM
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
                                <li class="active">Pendidikan Formal</li>
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
                                    <strong>Pendidikan</strong> <small>  </small>
                                </div>
                                <div class="card-body card-block">
                                    <div class="row form-group">
                                        <div class="col col-md-3"><label for="select" class=" form-control-label">Jenjang Pendidikan</label></div><br>
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
                                        <div class="col col-md-3"><label for="text-input" class=" form-control-label">Nama Sekolah</label></div>
                                        <div class="col-12 col-md-9"><input type="text" id="text-input" name="text-input" placeholder="" class="form-control"></div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-3"><label for="text-input" class=" form-control-label">Jurusan</label></div>
                                        <div class="col-12 col-md-9"><input type="text" id="text-input" name="text-input" placeholder="" class="form-control"></div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-3"><label for="text-input" class=" form-control-label">Nilai Akhir</label></div>
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
                            <div class="card">
                                <div class="card-header">
                                    <strong>Penghargaan</strong> <small>  </small>
                                </div>
                                <div class="card-body card-block">
                                    <div class="row form-group">
                                        <div class="col col-md-3"><label for="text-input" class=" form-control-label">Nama Penghargaan</label></div>
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
            </div>
        </div><!-- /#right-panel -->
        <%@include file="footer.jsp" %>
    </body>
</html>