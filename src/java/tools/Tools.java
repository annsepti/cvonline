/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tools;

import controllers.GeneralController;
import controllers.InterfaceController;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import models.Kandidat;

/**
 * Deklarasi kelas Tools
 *
 * @author Nande
 */
public class Tools {

    private InterfaceController<Kandidat> controller;
    private Setting setting;
    private String reason;

    /**
     * Method konstruktor tanpa parameter
     */
    public Tools() {
        controller = new GeneralController<>(HibernateUtil.getSessionFactory(), Kandidat.class);
        setting = new Setting();
    }

    /**
     * Method boolean untuk memeriksa email yang digunakan user
     *
     * @param email dengan tipe data String
     * @return hasil mengembalikan nilai boolean
     */
    public boolean checkEmail(String email) {
        boolean hasil = false;
        String emailRegex = "^([a-z0-9\\+_\\-]+)(\\.[a-z0-9\\+_\\-]+)*@([a-z0-9\\-]+\\.)+[a-z]{2,6}$";
        if (email.matches(emailRegex)) {
            hasil = true;
        }
        return hasil;
    }

    /**
     * Method untuk memeriksa password baru harus menggunakan unsur yang
     * terkandung pada regex
     *
     * @param newPassword dengan tipe data String
     * @return passwordRegex
     */
    public boolean checkNewPassword(String newPassword) {
        String passwordRegex = "^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@$!%*?&+-]).{8,}$";
        return newPassword.matches(passwordRegex);
    }

    /**
     * Method untuk menghitung jumlah karakter
     *
     * @param number dengan tipe data String
     * @return numberRegex mengembalikan nilai boolean
     */
    public boolean checkNumberFormat(String number) {
        String numberRegex = "\\d+";
        return number.matches(numberRegex);
    }

    /**
     * Method untuk memeriksa bahwa inputan hanya mengandung alfabet saja
     *
     * @param word dengan tipe data String
     * @return wordRegex mengembalikan nilai boolean
     */
    public boolean checkAlfabetOnly(String word) {
        String wordRegex = "\\D+";
        return word.matches(wordRegex);
    }

    /**
     * Method untuk mengubah format tanggal menjadi MM/dd/yyy
     *
     * @param date dengan tipe data Date
     * @return date
     */
    public String dateToString(Date date) {
        SimpleDateFormat formater = new SimpleDateFormat("yyyy-MM-dd");
        return formater.format(date);
    }

    /**
     * Method untuk mengubah masukan date
     *
     * @param sdate dengan tipe data String
     * @return sdate
     * @throws ParseException penangkap error
     */
    public Date stringToDate(String sdate) throws ParseException {
        SimpleDateFormat formater = new SimpleDateFormat("yyyy/mm/dd");
        return formater.parse(sdate);
    }

    public String formatDateString(String sdate) {
        String[] sdates = sdate.split("/");
        sdate = sdates[2] + "/" + sdates[0] + "/" + sdates[1];
        return sdate;
    }

    /**
     * Method untuk genere password awal berisi id employee + birthDate
     *
     * @param kandidat
     * @param employee dengan tipe data Employee
     * @return mengembalikan nilai String
     */
    public String generatePassword(Kandidat kandidat) {
        String birthdate = dateToString(kandidat.getTglLahir());
        String[] bdate = birthdate.split("-");
        return kandidat.getIdKandidat() + bdate[2] + bdate[1] + bdate[0].substring(2, 4);
    }

    /**
     * Method untuk memberi notifikasi pada employee by email
     *
     * @param kandidat
     * @param code 1 for send username and pasword, 2 for reason disaproove, 3
     * for change password
     * @return hasil mengembalikan nilai boolean
     */
    public boolean sendMessage(Kandidat kandidat, int code) {
        boolean hasil = false;
        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");

        Session session = Session.getInstance(props,
                new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(setting.getEmail(), setting.getPassword());
            }
        });

        try {
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(setting.getEmail()));
            message.setRecipients(Message.RecipientType.TO,
                    InternetAddress.parse(kandidat.getEmail()));
            message = setMessage(code, message, kandidat);
            Transport.send(message);
            hasil = true;

        } catch (MessagingException e) {
            throw new RuntimeException(e);
        }
        return hasil;
    }

    /**
     * Method untuk set isi pesan dengan menganggunakan kondisi switch-case
     *
     * @param code 1 for send username and pasword, 2 for reason disaproove, 3
     * for change password
     * @param message dengan tipe data Message
     * @param employee dengan tipe data Employee
     * @return message
     * @throws AddressException penangkap error
     * @throws MessagingException penangkap error
     */
    private Message setMessage(int code, Message message, Kandidat kandidat) throws AddressException, MessagingException {
        switch (code) {
            case 1:
                message.setSubject("Akun kandidat");
                message.setText("Dear " + kandidat.getNamaKandidat() + ","
                        + "\n\nBerikut adalah akun CV Online Anda:\n\nUsername\t: "
                        + kandidat.getUsername() + "\nPassword\t: "
                        + kandidat.getPassword() + "\n\nTerima Kasih\n\nRegards,\n\nHuman Resource Officer");
        }
        return message;
    }
}
