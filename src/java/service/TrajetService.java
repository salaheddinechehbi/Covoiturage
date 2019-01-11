package service;

import beans.Trajet;
import beans.Ville;
import dao.IDao;
import java.util.Date;
import java.util.List;
import org.hibernate.Session;
import util.HibernateUtil;

public class TrajetService implements IDao<Trajet>{

    @Override
    public void create(Trajet o) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        session.save(o);
        session.getTransaction().commit();
        session.close();
    }

    @Override
    public void delete(Trajet o) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        session.delete(o);
        session.getTransaction().commit();
        session.close();
    }

    @Override
    public void update(Trajet o) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        session.update(o);
        session.getTransaction().commit();
        session.close();
    }

    @Override
    public Trajet findById(int id) {
        Trajet t = null;
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        t = (Trajet) session.get(Trajet.class, id);
        session.getTransaction().commit();
        session.close();
        return t;
    }

    @Override
    public List<Trajet> findAll() {
        List<Trajet> t = null;
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        t = session.createQuery("From Trajet").list();
        session.getTransaction().commit();
        session.close();
        return t;
    }
    
    public int count() {
        int count = 0;
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        count = Integer.parseInt(session.createQuery("Select COUNT(*) From Trajet").uniqueResult().toString());
        session.getTransaction().commit();
        session.close();
        return count;
    } 
    
    public List<Trajet> findTrajet(int vd,int va) {
        List<Trajet> t = null;
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        t = session.createQuery("From Trajet WHERE villeDepart.id=:vd AND villeArriver.id=:va").setParameter("vd", vd).setParameter("va", va).list();
        session.getTransaction().commit();
        session.close();
        return t;
    }
}
