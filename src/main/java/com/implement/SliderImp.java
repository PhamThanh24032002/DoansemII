package com.implement;

import com.dao.IDao;
import com.entity.Slider;
import com.util.HibernateUtil;
import org.hibernate.Session;

import java.util.List;

public class SliderImp implements IDao<Integer, Slider> {
    @Override
    public List<Slider> getAll() {
        Session session = HibernateUtil.getSession().openSession();
        session.beginTransaction();
        List categories = session.createQuery("from Slider").list();
        session.close();
        return categories;
    }

    @Override
    public boolean create(Slider newV) {
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
    public boolean update(Slider newV) {
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
            int check_delete = session.createQuery("delete Slider where id=:params").setParameter("params",id).executeUpdate();
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
    public Slider findById(Integer id) {
        Session session = HibernateUtil.getSession().openSession();
        try {
            session.beginTransaction();
            Slider categoryFound = (Slider) session.createQuery("from Slider where id=:params").setParameter("params",id).uniqueResult();
            session.close();
            return categoryFound;
        }catch (Exception e){
            e.printStackTrace();
            session.getTransaction().rollback();
            session.close();
            return null;
        }
    }

    @Override
    public Slider findByName(String nameW) {
        Session session = HibernateUtil.getSession().openSession();
        try {
            session.beginTransaction();
            Slider categoryFound = (Slider) session.createQuery("from Slider where title=:params").setParameter("params",nameW).uniqueResult();
            session.close();
            return categoryFound;
        }catch (Exception e){
            e.printStackTrace();
            session.getTransaction().rollback();
            session.close();
            return null;
        }
    }

    @Override
    public int selectCount() {
        Session ss = HibernateUtil.getSession().openSession();

        try {
            ss.beginTransaction();
            Long cnt = (Long) ss.createQuery("select COUNT(id) from Slider ").uniqueResult();

            ss.close();

            return cnt.intValue();
        } catch (Exception e) {
            // TODO: handle exception
        }

        return 0;
    }

    @Override
    public List<Slider> pagination(int page, int itemOnPage) {
        Session session = HibernateUtil.getSession().openSession();

        session.beginTransaction();

        page = page < 0 ? 0 : page;

        List<Slider> lst = session.createQuery("from Slider").setFirstResult(page * itemOnPage) // Offset
                .setMaxResults(itemOnPage) // Fetch next
                .list();

        session.close();

        return lst;
    }

    public List<Slider> searchByName(String keyword){
        String keywordTranslate = "%" + keyword + "%";
        System.out.println("keywordTranslate: " + keywordTranslate);
        Session session = HibernateUtil.getSession().openSession();
        try {
            session.beginTransaction();
            List<Slider> cateFound = session.createQuery("from Slider where title like :params").setParameter("params",keywordTranslate).list();
            return cateFound;
        }catch (Exception e){
            e.printStackTrace();
            session.getTransaction().rollback();
            session.close();
            return null;
        }
    }

}
