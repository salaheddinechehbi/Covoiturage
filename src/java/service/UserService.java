
package service;

import IDao.IDao;
import beans.User;
import java.util.List;
import org.hibernate.Session;
import util.HibernateUtil;

public class UserService implements IDao<User>{

    @Override
    public void create(User o) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        session.save(o);
        session.getTransaction().commit();
        session.close();
    }

    @Override
    public void delete(User o) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        session.delete(o);
        session.getTransaction().commit();
        session.close();
    }

    @Override
    public void update(User o) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        session.update(o);
        session.getTransaction().commit();
        session.close();
    }

    @Override
    public User findById(int id) {
        User user = null;
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        user = (User) session.get(User.class, id);
        session.getTransaction().commit();
        session.close();
        return user;
    }

    @Override
    public List<User> FindAll() {
        List<User> users = null;
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        users = session.createQuery("From User").list();
        session.getTransaction().commit();
        session.close();
        return users;
    }

    
    
}
