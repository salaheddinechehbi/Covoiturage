package service;

import dao.IDao;
import beans.Paye;
import java.util.List;
import org.hibernate.Session;
import util.HibernateUtil;

public class PayeService implements IDao<Paye>{

    @Override
    public void create(Paye o) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        session.save(o);
        session.getTransaction().commit();
        session.close();
    }

    @Override
    public void delete(Paye o) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        session.delete(o);
        session.getTransaction().commit();
        session.close();
    }

    @Override
    public void update(Paye o) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        session.update(o);
        session.getTransaction().commit();
        session.close();
    }

    @Override
    public Paye findById(int id) {
        Paye paye = null;
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        paye = (Paye) session.get(Paye.class, id);
        session.getTransaction().commit();
        session.close();
        return paye;
    }

    @Override
    public List<Paye> findAll() {
        List<Paye> payes = null;
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        payes = session.createQuery("From Paye").list();
        session.getTransaction().commit();
        session.close();
        return payes;
    }
    
    public int count() {
        int count = 0;
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        count = Integer.parseInt(session.createQuery("Select COUNT(*) From Paye").uniqueResult().toString());
        session.getTransaction().commit();
        session.close();
        return count;
    } 
    
}
