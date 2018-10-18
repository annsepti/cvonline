/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package daos;

//import models.Employee;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

/**
 * Deklarasi kelas FunctionDAO
 * @author Ignatius
 */
public class FunctionDAO {

    private final SessionFactory factory;
    private Session session;
    private Transaction transaction;

    public FunctionDAO(SessionFactory sessionFactory) {
        this.factory = sessionFactory;
    }

    /**
     * Method eksekusi
     * @param CRUD - 0 for Save/Update, 1 for delete, 2 for getById, 3 for
     * search, 4 for getLastId, 5 for login, selain 0-5 for getAll
     * @param object tipe data Objek
     * @param type tipe data Class
     * @param category tipe data String
     * @param key tipe data Object
     * @return obj 
     */
    public Object execute(int CRUD, Object object,
            Class type, String category, Object key) {
        Object obj = null;
        try {
            this.session = factory.openSession();
            this.transaction = session.beginTransaction();
            obj = this.getAction(session, CRUD, object, type, category, key);
            this.transaction.commit();
        } catch (Exception e) {
            e.printStackTrace();
            if (transaction != null) {
                transaction.rollback();
            }
        } finally {
            session.close();
        }
        return obj;
    }
    
    private Object getAction(Session session, int crud,
            Object object, Class type, String category, Object key) {
        switch (crud) {
            case 0:
                boolean flag = false;
                session.saveOrUpdate(object);
                flag = true;
                return flag;
            case 1:
                flag = false;
                session.delete(object);
                flag = true;
                return flag;
            case 2:
                return session.createCriteria(type)
                        .add(Restrictions.eq(category, key))
                        .uniqueResult();
            case 3:
                return session.createCriteria(type)
                        .add(Restrictions.eq(category, key))
                        .list();
            case 4:
                return session.createQuery("FROM " + type
                        .getSimpleName() + " ORDER BY 1 DESC").list().get(0);
//            case 5:
////                Employee employee = (Employee) key;
//                return session.createCriteria(type)
//                        .add(Restrictions.and(Restrictions.eq("username", employee.getUsername())
//                                , Restrictions.eq("password", employee.getPassword()))).uniqueResult();
//            case 6:
//                return session.createCriteria(type)
//                        .add(Restrictions.eq(category, key))
//                        .list();
            default:
                return session.createQuery("FROM " + type
                        .getSimpleName() + " ORDER BY 1").list();
        }
    }
}
