/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;

import beans.Paye;
import dao.IDao;
import java.util.List;
import org.hibernate.Hibernate;
import org.hibernate.Session;
import util.HibernateUtil;

/**
 *
 * @author imadeddine
 */
public class payeServices implements IDao<Paye> {

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
    public List<Paye> findAll() {
        List<Paye> Payes = null;
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        Payes = session.createQuery("From Paye").list();
        session.getTransaction().commit();
        session.close();
        return Payes;
    }

    @Override
    public Paye findById(int id) {
        Paye c = null;
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        c = (Paye) session.get(Paye.class, id);
        session.getTransaction().commit();
        session.close();
        return c;
    }

}
