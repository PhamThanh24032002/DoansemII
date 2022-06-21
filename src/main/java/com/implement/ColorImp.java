package com.implement;

import com.dao.IDao;
import com.entity.Colors;
import com.util.HibernateUtil;
import org.hibernate.Session;

import java.util.List;

public class ColorImp implements IDao<Integer, Colors> {
    @Override
    public List<Colors> getAll() {
        Session session = HibernateUtil.getSession().openSession();
        session.beginTransaction();
        List<Colors> colors = session.createQuery("from Colors").list();
        session.close();
        return colors;
    }

    @Override
    public boolean create(Colors newV) {
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
    public boolean update(Colors newV) {
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
            int check_delete = session.createQuery("delete Colors where id=:params").setParameter("params",id).executeUpdate();
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
    public Colors findById(Integer id) {
        Session session = HibernateUtil.getSession().openSession();
        try {
            session.beginTransaction();
            Colors colorFound = (Colors) session.createQuery("from Colors where id=:params").setParameter("params",id).uniqueResult();
            session.close();
            return colorFound;
        }catch (Exception e){
            e.printStackTrace();
            session.getTransaction().rollback();
            session.close();
            return null;
        }
    }

    @Override
    public Colors findByName(String nameW) {
    	return null;
    }

    @Override
    public int selectCount() {
        return 0;
    }

    @Override
    public List<Colors> pagination(int page, int itemOnPage) {
        Session session = HibernateUtil.getSession().openSession();

        session.beginTransaction();

        page = page < 0 ? 0 : page;

        List<Colors> lst = session.createQuery("from Colors ").setFirstResult(page * itemOnPage) // Offset
                .setMaxResults(itemOnPage) // Fetch next
                .list();

        session.close();

        return lst;
    }

    public List<Colors> searchByName(String keyword){
       return null;
    }

}
