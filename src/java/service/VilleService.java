
package service;

import dao.IDao;
import beans.Ville;
import java.util.List;
import org.hibernate.Session;
import util.HibernateUtil;

public class VilleService implements IDao<Ville>{

    @Override
    public void create(Ville o) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        session.save(o);
        session.getTransaction().commit();
        session.close();
    }

    @Override
    public void delete(Ville o) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        session.delete(o);
        session.getTransaction().commit();
        session.close();
    }

    @Override
    public void update(Ville o) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        session.update(o);
        session.getTransaction().commit();
        session.close();
    }

    @Override
    public Ville findById(int id) {
        Ville ville = null;
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        ville = (Ville) session.get(Ville.class, id);
        session.getTransaction().commit();
        session.close();
        return ville;
    }

    @Override
    public List<Ville> findAll() {
        List<Ville> villes = null;
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        villes = session.createQuery("From Ville").list();
        session.getTransaction().commit();
        session.close();
        return villes;
    }
    
    public int count() {
        int count = 0;
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        count = Integer.parseInt(session.createQuery("Select COUNT(*) From Ville").uniqueResult().toString());
        session.getTransaction().commit();
        session.close();
        return count;
    } 
    
}
