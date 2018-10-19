/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author 680183
 */
@Entity
@Table(name = "kandidat")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Kandidat_1.findAll", query = "SELECT k FROM Kandidat_1 k")
    , @NamedQuery(name = "Kandidat_1.findByIdKandidat", query = "SELECT k FROM Kandidat_1 k WHERE k.idKandidat = :idKandidat")
    , @NamedQuery(name = "Kandidat_1.findByNamaKandidat", query = "SELECT k FROM Kandidat_1 k WHERE k.namaKandidat = :namaKandidat")
    , @NamedQuery(name = "Kandidat_1.findByEmail", query = "SELECT k FROM Kandidat_1 k WHERE k.email = :email")
    , @NamedQuery(name = "Kandidat_1.findByNoHp", query = "SELECT k FROM Kandidat_1 k WHERE k.noHp = :noHp")
    , @NamedQuery(name = "Kandidat_1.findByNoTelp", query = "SELECT k FROM Kandidat_1 k WHERE k.noTelp = :noTelp")
    , @NamedQuery(name = "Kandidat_1.findByNoTelpkerabat", query = "SELECT k FROM Kandidat_1 k WHERE k.noTelpkerabat = :noTelpkerabat")
    , @NamedQuery(name = "Kandidat_1.findByNamaKerabat", query = "SELECT k FROM Kandidat_1 k WHERE k.namaKerabat = :namaKerabat")
    , @NamedQuery(name = "Kandidat_1.findByTempatLahir", query = "SELECT k FROM Kandidat_1 k WHERE k.tempatLahir = :tempatLahir")
    , @NamedQuery(name = "Kandidat_1.findByTglLahir", query = "SELECT k FROM Kandidat_1 k WHERE k.tglLahir = :tglLahir")
    , @NamedQuery(name = "Kandidat_1.findByNik", query = "SELECT k FROM Kandidat_1 k WHERE k.nik = :nik")
    , @NamedQuery(name = "Kandidat_1.findByAlamatKtp", query = "SELECT k FROM Kandidat_1 k WHERE k.alamatKtp = :alamatKtp")
    , @NamedQuery(name = "Kandidat_1.findByAlamatSekarang", query = "SELECT k FROM Kandidat_1 k WHERE k.alamatSekarang = :alamatSekarang")
    , @NamedQuery(name = "Kandidat_1.findByNpwp", query = "SELECT k FROM Kandidat_1 k WHERE k.npwp = :npwp")
    , @NamedQuery(name = "Kandidat_1.findByAgama", query = "SELECT k FROM Kandidat_1 k WHERE k.agama = :agama")
    , @NamedQuery(name = "Kandidat_1.findByJenisKelamin", query = "SELECT k FROM Kandidat_1 k WHERE k.jenisKelamin = :jenisKelamin")
    , @NamedQuery(name = "Kandidat_1.findByStatusNikah", query = "SELECT k FROM Kandidat_1 k WHERE k.statusNikah = :statusNikah")
    , @NamedQuery(name = "Kandidat_1.findByUsername", query = "SELECT k FROM Kandidat_1 k WHERE k.username = :username")
    , @NamedQuery(name = "Kandidat_1.findByPassword", query = "SELECT k FROM Kandidat_1 k WHERE k.password = :password")
    , @NamedQuery(name = "Kandidat_1.findByStatusKandidat", query = "SELECT k FROM Kandidat_1 k WHERE k.statusKandidat = :statusKandidat")
    , @NamedQuery(name = "Kandidat_1.findByStatusLamaran", query = "SELECT k FROM Kandidat_1 k WHERE k.statusLamaran = :statusLamaran")
    , @NamedQuery(name = "Kandidat_1.findByUploadCv", query = "SELECT k FROM Kandidat_1 k WHERE k.uploadCv = :uploadCv")})
public class Kandidat implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id_kandidat")
    private Integer idKandidat;
    @Column(name = "nama_kandidat")
    private String namaKandidat;
    @Column(name = "email")
    private String email;
    @Column(name = "no_hp")
    private String noHp;
    @Column(name = "no_telp")
    private String noTelp;
    @Column(name = "no_telpkerabat")
    private String noTelpkerabat;
    @Column(name = "nama_kerabat")
    private String namaKerabat;
    @Column(name = "tempat_lahir")
    private String tempatLahir;
    @Column(name = "tgl_lahir")
    @Temporal(TemporalType.DATE)
    private Date tglLahir;
    @Column(name = "nik")
    private String nik;
    @Column(name = "alamat_ktp")
    private String alamatKtp;
    @Column(name = "alamat_sekarang")
    private String alamatSekarang;
    @Column(name = "npwp")
    private String npwp;
    @Column(name = "agama")
    private String agama;
    @Column(name = "jenis_kelamin")
    private String jenisKelamin;
    @Column(name = "status_nikah")
    private String statusNikah;
    @Column(name = "username")
    private String username;
    @Column(name = "password")
    private String password;
    @Lob
    @Column(name = "foto")
    private byte[] foto;
    @Column(name = "status_kandidat")
    private String statusKandidat;
    @Column(name = "status_lamaran")
    private String statusLamaran;
    @Column(name = "upload_cv")
    private String uploadCv;
    @OneToMany(mappedBy = "idKandidat", fetch = FetchType.LAZY)
    private List<Keahlian> keahlianList;
    @OneToMany(mappedBy = "idKandidat", fetch = FetchType.LAZY)
    private List<Keluarga> keluargaList;
    @OneToMany(mappedBy = "idKandidat", fetch = FetchType.LAZY)
    private List<Pelatihan> pelatihanList;
    @OneToMany(mappedBy = "idKandidat", fetch = FetchType.LAZY)
    private List<Penghargaan> penghargaanList;

    public Kandidat() {
    }

    public Kandidat(Integer idKandidat) {
        this.idKandidat = idKandidat;
    }

    public Integer getIdKandidat() {
        return idKandidat;
    }

    public Kandidat(String username, String password) {
        this.username = username;
        this.password = password;
    }
    
    public Kandidat(Integer idKandidat, String namaKandidat, String email, String noHp, String noTelp, String noTelpkerabat, String namaKerabat, String tempatLahir, Date tglLahir, String nik, String alamatKtp, String alamatSekarang, String npwp, String agama, String jenisKelamin, String statusNikah, String username, String password, byte[] foto, String statusKandidat, String statusLamaran, String uploadCv) {
        this.idKandidat = idKandidat;
        this.namaKandidat = namaKandidat;
        this.email = email;
        this.noHp = noHp;
        this.noTelp = noTelp;
        this.noTelpkerabat = noTelpkerabat;
        this.namaKerabat = namaKerabat;
        this.tempatLahir = tempatLahir;
        this.tglLahir = tglLahir;
        this.nik = nik;
        this.alamatKtp = alamatKtp;
        this.alamatSekarang = alamatSekarang;
        this.npwp = npwp;
        this.agama = agama;
        this.jenisKelamin = jenisKelamin;
        this.statusNikah = statusNikah;
        this.username = username;
        this.password = password;
        this.foto = foto;
        this.statusKandidat = statusKandidat;
        this.statusLamaran = statusLamaran;
        this.uploadCv = uploadCv;
    }
    
    public void setIdKandidat(Integer idKandidat) {
        this.idKandidat = idKandidat;
    }

    public String getNamaKandidat() {
        return namaKandidat;
    }

    public void setNamaKandidat(String namaKandidat) {
        this.namaKandidat = namaKandidat;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getNoHp() {
        return noHp;
    }

    public void setNoHp(String noHp) {
        this.noHp = noHp;
    }

    public String getNoTelp() {
        return noTelp;
    }

    public void setNoTelp(String noTelp) {
        this.noTelp = noTelp;
    }

    public String getNoTelpkerabat() {
        return noTelpkerabat;
    }

    public void setNoTelpkerabat(String noTelpkerabat) {
        this.noTelpkerabat = noTelpkerabat;
    }

    public String getNamaKerabat() {
        return namaKerabat;
    }

    public void setNamaKerabat(String namaKerabat) {
        this.namaKerabat = namaKerabat;
    }

    public String getTempatLahir() {
        return tempatLahir;
    }

    public void setTempatLahir(String tempatLahir) {
        this.tempatLahir = tempatLahir;
    }

    public Date getTglLahir() {
        return tglLahir;
    }

    public void setTglLahir(Date tglLahir) {
        this.tglLahir = tglLahir;
    }

    public String getNik() {
        return nik;
    }

    public void setNik(String nik) {
        this.nik = nik;
    }

    public String getAlamatKtp() {
        return alamatKtp;
    }

    public void setAlamatKtp(String alamatKtp) {
        this.alamatKtp = alamatKtp;
    }

    public String getAlamatSekarang() {
        return alamatSekarang;
    }

    public void setAlamatSekarang(String alamatSekarang) {
        this.alamatSekarang = alamatSekarang;
    }

    public String getNpwp() {
        return npwp;
    }

    public void setNpwp(String npwp) {
        this.npwp = npwp;
    }

    public String getAgama() {
        return agama;
    }

    public void setAgama(String agama) {
        this.agama = agama;
    }

    public String getJenisKelamin() {
        return jenisKelamin;
    }

    public void setJenisKelamin(String jenisKelamin) {
        this.jenisKelamin = jenisKelamin;
    }

    public String getStatusNikah() {
        return statusNikah;
    }

    public void setStatusNikah(String statusNikah) {
        this.statusNikah = statusNikah;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public byte[] getFoto() {
        return foto;
    }

    public void setFoto(byte[] foto) {
        this.foto = foto;
    }

    public String getStatusKandidat() {
        return statusKandidat;
    }

    public void setStatusKandidat(String statusKandidat) {
        this.statusKandidat = statusKandidat;
    }

    public String getStatusLamaran() {
        return statusLamaran;
    }

    public void setStatusLamaran(String statusLamaran) {
        this.statusLamaran = statusLamaran;
    }

    public String getUploadCv() {
        return uploadCv;
    }

    public void setUploadCv(String uploadCv) {
        this.uploadCv = uploadCv;
    }

    @XmlTransient
    public List<Keahlian> getKeahlianList() {
        return keahlianList;
    }

    public void setKeahlianList(List<Keahlian> keahlianList) {
        this.keahlianList = keahlianList;
    }

    @XmlTransient
    public List<Keluarga> getKeluargaList() {
        return keluargaList;
    }

    public void setKeluargaList(List<Keluarga> keluargaList) {
        this.keluargaList = keluargaList;
    }

    @XmlTransient
    public List<Pelatihan> getPelatihanList() {
        return pelatihanList;
    }

    public void setPelatihanList(List<Pelatihan> pelatihanList) {
        this.pelatihanList = pelatihanList;
    }

    @XmlTransient
    public List<Penghargaan> getPenghargaanList() {
        return penghargaanList;
    }

    public void setPenghargaanList(List<Penghargaan> penghargaanList) {
        this.penghargaanList = penghargaanList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idKandidat != null ? idKandidat.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Kandidat)) {
            return false;
        }
        Kandidat other = (Kandidat) object;
        if ((this.idKandidat == null && other.idKandidat != null) || (this.idKandidat != null && !this.idKandidat.equals(other.idKandidat))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "models.Kandidat_1[ idKandidat=" + idKandidat + " ]";
    }
    
}
