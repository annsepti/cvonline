/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import java.sql.SQLException;
import java.util.List;
import models.Kandidat;

/**
 *
 * @author 680183
 * @param <T>
 */
public interface InterfaceController<T> {

    public boolean saveOrUpdate(T t);

    public boolean delete(T t);

    public List<T> getAll();

    public List<T> search(String category, String key);
    public List<T> search(String category, Kandidat kandidat);

    public T getById(Object id);
    public T getByLoginKandidat(String username, String password);
    public T getByLoginKaryawan(String username, String password);
    public T getLastId();
}
