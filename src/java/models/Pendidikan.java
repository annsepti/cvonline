/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author 680183
 */
@Entity
@Table(name = "pendidikan")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Pendidikan.findAll", query = "SELECT p FROM Pendidikan p")
    , @NamedQuery(name = "Pendidikan.findByIdPendidikan", query = "SELECT p FROM Pendidikan p WHERE p.idPendidikan = :idPendidikan")
    , @NamedQuery(name = "Pendidikan.findByJenjangPendidikan", query = "SELECT p FROM Pendidikan p WHERE p.jenjangPendidikan = :jenjangPendidikan")
    , @NamedQuery(name = "Pendidikan.findByNamaSekolah", query = "SELECT p FROM Pendidikan p WHERE p.namaSekolah = :namaSekolah")
    , @NamedQuery(name = "Pendidikan.findByTahunMasuk", query = "SELECT p FROM Pendidikan p WHERE p.tahunMasuk = :tahunMasuk")
    , @NamedQuery(name = "Pendidikan.findByTahunSelesai", query = "SELECT p FROM Pendidikan p WHERE p.tahunSelesai = :tahunSelesai")
    , @NamedQuery(name = "Pendidikan.findByNilaiAkhir", query = "SELECT p FROM Pendidikan p WHERE p.nilaiAkhir = :nilaiAkhir")})
public class Pendidikan implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id_pendidikan")
    private Integer idPendidikan;
    @Column(name = "jenjang_pendidikan")
    private String jenjangPendidikan;
    @Column(name = "nama_sekolah")
    private String namaSekolah;
    @Column(name = "tahun_masuk")
    @Temporal(TemporalType.DATE)
    private Date tahunMasuk;
    @Column(name = "tahun_selesai")
    @Temporal(TemporalType.DATE)
    private Date tahunSelesai;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "nilai_akhir")
    private Float nilaiAkhir;
    @JoinColumn(name = "id_kandidat", referencedColumnName = "id_kandidat")
    @ManyToOne(fetch = FetchType.LAZY)
    private Kandidat idKandidat;

    public Pendidikan() {
    }

    public Pendidikan(Integer idPendidikan) {
        this.idPendidikan = idPendidikan;
    }

    public Pendidikan(Integer idPendidikan, String jenjangPendidikan, String namaSekolah, Date tahunMasuk, Date tahunSelesai, Float nilaiAkhir, Kandidat idKandidat) {
        this.idPendidikan = idPendidikan;
        this.jenjangPendidikan = jenjangPendidikan;
        this.namaSekolah = namaSekolah;
        this.tahunMasuk = tahunMasuk;
        this.tahunSelesai = tahunSelesai;
        this.nilaiAkhir = nilaiAkhir;
        this.idKandidat = idKandidat;
    }

    public Integer getIdPendidikan() {
        return idPendidikan;
    }

    public void setIdPendidikan(Integer idPendidikan) {
        this.idPendidikan = idPendidikan;
    }

    public String getJenjangPendidikan() {
        return jenjangPendidikan;
    }

    public void setJenjangPendidikan(String jenjangPendidikan) {
        this.jenjangPendidikan = jenjangPendidikan;
    }

    public String getNamaSekolah() {
        return namaSekolah;
    }

    public void setNamaSekolah(String namaSekolah) {
        this.namaSekolah = namaSekolah;
    }

    public Date getTahunMasuk() {
        return tahunMasuk;
    }

    public void setTahunMasuk(Date tahunMasuk) {
        this.tahunMasuk = tahunMasuk;
    }

    public Date getTahunSelesai() {
        return tahunSelesai;
    }

    public void setTahunSelesai(Date tahunSelesai) {
        this.tahunSelesai = tahunSelesai;
    }

    public Float getNilaiAkhir() {
        return nilaiAkhir;
    }

    public void setNilaiAkhir(Float nilaiAkhir) {
        this.nilaiAkhir = nilaiAkhir;
    }

    public Kandidat getIdKandidat() {
        return idKandidat;
    }

    public void setIdKandidat(Kandidat idKandidat) {
        this.idKandidat = idKandidat;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idPendidikan != null ? idPendidikan.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Pendidikan)) {
            return false;
        }
        Pendidikan other = (Pendidikan) object;
        if ((this.idPendidikan == null && other.idPendidikan != null) || (this.idPendidikan != null && !this.idPendidikan.equals(other.idPendidikan))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "models.Pendidikan[ idPendidikan=" + idPendidikan + " ]";
    }
    
}
