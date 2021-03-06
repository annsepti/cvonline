/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import daos.GeneralDAO;
import daos.InterfaceDAO;
import java.util.ArrayList;
import java.util.List;
import models.Kandidat;
import models.Karyawan;
import org.hibernate.SessionFactory;

/**
 *
 * @author 680183
 * @param <T>
 */
public class GeneralController<T> implements InterfaceController<T>{
    public SessionFactory sessionFactory;
    private InterfaceDAO iDAO;

    public GeneralController(SessionFactory sessionFactory, Class type) {
        this.sessionFactory = sessionFactory;
        this.iDAO = new GeneralDAO(sessionFactory,type);
    }
    
    private List<T> castToT(List<Object> allData) {
    List<T> datas = new ArrayList<>();
    allData.stream().map((object) -> (T) object).forEachOrdered((t) -> {
        datas.add(t);
        });
    return datas;
    }
    
    @Override
    public boolean saveOrUpdate(T t) {
        return iDAO.saveOrUpdate(t);
    }

    @Override
    public boolean delete(T t) {
        return iDAO.delete(t);
    }

    @Override
    public List<T> getAll() {
        System.out.println(iDAO.getAll().size());
        return this.castToT(iDAO.getAll());
    }

    @Override
    public List<T> search(String category, String key){
        if(category.equals("idKandidat")) 
            return this.castToT(iDAO.search(category, new Integer(key)));
        else
            return this.castToT(iDAO.search(category, key));
    }
    
    @Override
    public List<T> search(String category, Kandidat kandidat){
        return this.castToT(iDAO.search(category, kandidat));
    }

    @Override
    public T getById(Object id) {
        return (T) iDAO.getById(new Integer(id+""));
    }

    @Override
    public T getByLoginKandidat(String username, String password) {
        Kandidat kandidat = new Kandidat(username, password);
        return (T) iDAO.getByLoginKandidat(kandidat);
    }

    @Override
    public T getByLoginKaryawan(String username, String password) {
        List<Karyawan> karyawans =  (List<Karyawan>) search("username", username);
        Karyawan karyawan = karyawans.get(0);
        if(!karyawan.getPassword().equals(password)) karyawan = null;
        return (T) karyawan;
    }

    @Override
    public T getLastId() {
        T t =  (T) iDAO.getLastId();
        return t;
    }
    
}
