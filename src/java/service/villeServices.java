/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;

import beans.Ville;
import dao.IDao;
import java.util.List;
import org.hibernate.Hibernate;
import org.hibernate.Session;
import util.HibernateUtil;

/**
 *
 * @author imadeddine
 */
public class villeServices implements IDao<Ville> {

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
        session.getTransaction().begin();
        session.close();
    }

    @Override
    public List<Ville> findAll() {
        List<Ville> Villes = null;
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        Villes = session.createQuery("From Ville").list();
        session.getTransaction().commit();
        session.close();
        return Villes;
        
    }

    @Override
    public Ville findById(int id) {
        Ville c = null;
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        c = (Ville) session.get(Ville.class, id);
        session.getTransaction().commit();
        session.close();
        return c;
    }

}
