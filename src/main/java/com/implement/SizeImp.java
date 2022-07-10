package com.implement;

import com.dao.IDao;
import com.entity.Colors;
import com.entity.Sizes;
import com.util.HibernateUtil;
import org.hibernate.Session;

import java.util.List;

public class SizeImp implements IDao<Integer, Sizes> {
    @Override
    public List<Sizes> getAll() {
        Session session = HibernateUtil.getSession().openSession();
        session.beginTransaction();
        List<Sizes> sizes = session.createQuery("from Sizes").list();
        session.close();
        return sizes;
    }

    @Override
    public boolean create(Sizes newV) {
        Session session = HibernateUtil.getSession().openSession();
        try {
            session.beginTransaction();
            int check = (Integer) session.save(newV);
            session.getTransaction().commit();
            session.close();
            if (check>0)
                return true;
            else
                return false;

        }catch (Exception e){
            e.printStackTrace();
            session.getTransaction().rollback();
            session.close();
            return false;
        }
    }

    @Override
    public boolean update(Sizes newV) {
        Session session = HibernateUtil.getSession().openSession();
        try{
            session.beginTransaction();
            session.update(newV);
            session.getTransaction().commit();
            session.close();
            return true;
        }catch (Exception e){
            e.printStackTrace();
            session.getTransaction().rollback();
            session.close();
            return false;
        }
    }

    @Override
    public boolean delete(Integer id) {
        Session session = HibernateUtil.getSession().openSession();
        try {
            session.beginTransaction();
            int check_delete = session.createQuery("delete Sizes where id=:params").setParameter("params",id).executeUpdate();
            session.close();
            if (check_delete>0)
                return true;
            return false;
        }catch (Exception e){
            e.printStackTrace();
            session.getTransaction().rollback();
            session.close();
            return false;
        }
    }

    @Override
    public Sizes findById(Integer id) {
        Session session = HibernateUtil.getSession().openSession();
        try {
            session.beginTransaction();
            Sizes sizeFound = (Sizes) session.createQuery("from Sizes where id=:params").setParameter("params",id).uniqueResult();
            session.close();
            return sizeFound;
        }catch (Exception e){
            e.printStackTrace();
            session.getTransaction().rollback();
            session.close();
            return null;
        }
    }

    @Override
    public Sizes findByName(String nameW) {
    	return null;
    }

    @Override
    public int selectCount() {
        return 0;
    }

    @Override
    public List<Sizes> pagination(int page, int itemOnPage) {
        Session session = HibernateUtil.getSession().openSession();

        session.beginTransaction();

        page = page < 0 ? 0 : page;

        List<Sizes> lst = session.createQuery("from Sizes").setFirstResult(page * itemOnPage) // Offset
                .setMaxResults(itemOnPage) // Fetch next
                .list();

        session.close();

        return lst;
    }

    public List<Sizes> searchByName(String keyword){
       return null;
    }

}
