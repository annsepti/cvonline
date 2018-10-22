<%-- 
    Document   : lainlainForm
    Created on : Oct 19, 2018, 12:44:07 AM
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
                                    <li class="active">Lain-lain</li>
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
                                    <strong>Pertanyaan</strong> <small>  </small>
                                </div>
                                <div class="card-body card-block">
                                    <div class="row form-group">
                                        <div class="col col-md-12"><label for="text-input" class=" form-control-label">
                                            Apakah Anda bersedia ditempatkan di customer bank atau lembaga financial lainnya ? </label></div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-9">
                                            <div class="form-check">
                                                <div class="radio">
                                                    <label for="radio1" class="form-check-label ">
                                                        <input type="radio" id="radio1" name="radios" value="option1" class="form-check-input">Ya
                                                    </label>
                                                </div>
                                                <div class="radio">
                                                    <label for="radio2" class="form-check-label ">
                                                        <input type="radio" id="radio2" name="radios" value="option2" class="form-check-input">Tidak
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-12"><label for="text-input" class=" form-control-label">
                                            Apakah anda keberatan jika kami meminta referensi dari tempat anda bekerja dahulu atau sekarang?</label></div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-9">
                                            <div class="form-check">
                                                <div class="radio">
                                                    <label for="radio1" class="form-check-label ">
                                                        <input type="radio" id="radio1" name="radios" value="option1" class="form-check-input">Ya
                                                    </label>
                                                </div>
                                                <div class="radio">
                                                    <label for="radio2" class="form-check-label ">
                                                        <input type="radio" id="radio2" name="radios" value="option2" class="form-check-input">Tidak
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-12"><label for="text-input" class=" form-control-label">
                                            Apakah sebelumnya anda pernah melamar di METRODATA Group?</label></div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-9">
                                            <div class="form-check">
                                                <div class="radio">
                                                    <label for="radio1" class="form-check-label ">
                                                        <input type="radio" id="radio1" name="radios" value="option1" class="form-check-input">Ya
                                                    </label>
                                                </div>
                                                <div class="radio">
                                                    <label for="radio2" class="form-check-label ">
                                                        <input type="radio" id="radio2" name="radios" value="option2" class="form-check-input">Tidak
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-12"><label for="text-input" class=" form-control-label">
                                            Apakah anda punya laptop (minimal i5 RAM 8GB, OS Win7/10 original) ?</label></div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-9">
                                            <div class="form-check">
                                                <div class="radio">
                                                    <label for="radio1" class="form-check-label ">
                                                        <input type="radio" id="radio1" name="radios" value="option1" class="form-check-input">Ya
                                                    </label>
                                                </div>
                                                <div class="radio">
                                                    <label for="radio2" class="form-check-label ">
                                                        <input type="radio" id="radio2" name="radios" value="option2" class="form-check-input">Tidak
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <div class="row form-group">
                                        <div class="col col-md-12"><label for="textarea-input" class=" form-control-label">
                                                Kapan berakhirnya masa kontrak dengan vendor existing ?</label></div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col-12 col-md-9"><input type="text" id="text-input" name="text-input" placeholder="" class="form-control"></div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-12"><label for="textarea-input" class=" form-control-label">
                                                Mohon jelaskan pekerjaan yang anda inginkan di METRODATA Group</label></div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col-12 col-md-9"><textarea name="textarea-input" id="textarea-input" rows="9" placeholder="" class="form-control"></textarea></div>
                                    </div>
                                    
                                    <div class="row form-group">
                                        <div class="col-12 col-md-12"><label for="textarea-input" class=" form-control-label">
                                                Dari mana Anda pertama kali memperoleh informasi mengenai lowongan kerja di METRODATA Group?</label></div>
                                    </div>
                                    <div class="form-check">
                                        <div class="checkbox">
                                          <label for="checkbox1" class="form-check-label ">
                                            <input type="checkbox" id="checkbox1" name="checkbox1" value="option1" class="form-check-input">Media Cetak
                                          </label>
                                        </div>
                                        <div class="checkbox">
                                          <label for="checkbox2" class="form-check-label ">
                                            <input type="checkbox" id="checkbox2" name="checkbox2" value="option2" class="form-check-input"> Media Online
                                          </label>
                                        </div>
                                        <div class="checkbox">
                                          <label for="checkbox3" class="form-check-label ">
                                            <input type="checkbox" id="checkbox3" name="checkbox3" value="option3" class="form-check-input"> Media Sosial
                                          </label>
                                        </div>
                                        <div class="checkbox">
                                          <label for="checkbox3" class="form-check-label ">
                                            <input type="checkbox" id="checkbox3" name="checkbox3" value="option3" class="form-check-input"> Job Online Website
                                          </label>
                                        </div>
                                        <div class="checkbox">
                                          <label for="checkbox3" class="form-check-label ">
                                            <input type="checkbox" id="checkbox3" name="checkbox3" value="option3" class="form-check-input"> Website Metrodata 
                                          </label>
                                        </div>
                                        <div class="checkbox">
                                          <label for="checkbox3" class="form-check-label ">
                                            <input type="checkbox" id="checkbox3" name="checkbox3" value="option3" class="form-check-input"> Karyawan Metrodata
                                          </label>
                                        </div>
                                        <div class="checkbox">
                                          <label for="checkbox3" class="form-check-label ">
                                            <input type="checkbox" id="checkbox3" name="checkbox3" value="option3" class="form-check-input"> Lainnya
                                          </label>
                                        </div>
                                    </div>
                                    <br>
                                    <div class="row form-group">
                                        <div class="col-12 col-md-12"><label for="textarea-input" class=" form-control-label">
                                                Benefit yang anda terima dalam pekerjaan anda sekarang ? </label></div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-3"><label for="text-input" class=" form-control-label">1. Gaji Pokok</label></div>
                                        <div class="col-12 col-md-9"><input type="text" id="text-input" name="text-input" placeholder="" class="form-control"></div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-3"><label for="text-input" class=" form-control-label">2. Transportasi</label></div>
                                        <div class="col-12 col-md-9"><input type="text" id="text-input" name="text-input" placeholder="" class="form-control"></div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-3"><label for="text-input" class=" form-control-label">3. Kesehatan</label></div>
                                        <div class="col-12 col-md-9"><input type="text" id="text-input" name="text-input" placeholder="" class="form-control"></div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-3"><label for="text-input" class=" form-control-label">4. Tunjangan</label></div>
                                        <div class="col-12 col-md-9"><input type="text" id="text-input" name="text-input" placeholder="" class="form-control"></div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-3"><label for="text-input" class=" form-control-label">5. Benefit Lain</label></div>
                                        <div class="col-12 col-md-9"><input type="text" id="text-input" name="text-input" placeholder="" class="form-control"></div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col-12 col-md-12"><label for="textarea-input" class=" form-control-label">
                                                Jika anda diterima bekerja di METRODATA Group:</label></div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-5"><label for="text-input" class=" form-control-label">1. Kapan bisa mulai bekerja?</label></div>
                                        <div class="col-12 col-md-7"><input type="text" id="text-input" name="text-input" placeholder="" class="form-control"></div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-5"><label for="text-input" class=" form-control-label">2. Berapa gaji kotor perbulan yang anda harapkan?</label></div>
                                        <div class="col-12 col-md-7"><input type="text" id="text-input" name="text-input" placeholder="" class="form-control"></div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-5"><label for="text-input" class=" form-control-label">3. Bersediakah anda bekerja di luar jam kerja?</label></div>
                                        <div class="col-12 col-md-7"><input type="text" id="text-input" name="text-input" placeholder="" class="form-control"></div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-5"><label for="text-input" class=" form-control-label">4. Bersediakah anda bertugas ke luar kota/negeri?</label></div>
                                        <div class="col-12 col-md-7"><input type="text" id="text-input" name="text-input" placeholder="" class="form-control"></div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-5"><label for="text-input" class=" form-control-label">5. Bersediakah anda ditempatkan di luar Jakarta?</label></div>
                                        <div class="col-12 col-md-7"><input type="text" id="text-input" name="text-input" placeholder="" class="form-control"></div>
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
        </div><!-- /#right-panel -->
        <%@include file="footer.jsp" %>
    </body>
</html>
