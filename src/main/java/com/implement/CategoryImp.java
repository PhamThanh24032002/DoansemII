package com.implement;

import com.dao.IDao;
import com.entity.Category;
import com.util.HibernateUtil;
import org.hibernate.Session;

import java.util.List;

public class CategoryImp implements IDao<Integer, Category> {
    @Override
    public List<Category> getAll() {
        Session session = HibernateUtil.getSession().openSession();
        session.beginTransaction();
        List categories = session.createQuery("from Category").list();
        session.close();
        return categories;
    }

    @Override
    public boolean create(Category newV) {
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
    public boolean update(Category newV) {
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
            int check_delete = session.createQuery("delete Category where id=:params").setParameter("params",id).executeUpdate();
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
    public Category findById(Integer id) {
        Session session = HibernateUtil.getSession().openSession();
        try {
            session.beginTransaction();
            Category categoryFound = (Category) session.createQuery("from Category where id=:params").setParameter("params",id).uniqueResult();
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
    public Category findByName(String nameW) {
        Session session = HibernateUtil.getSession().openSession();
        try {
            session.beginTransaction();
            Category categoryFound = (Category) session.createQuery("from Category where name=:params").setParameter("params",nameW).uniqueResult();
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
            Long cnt = (Long) ss.createQuery("select COUNT(id) from Category ").uniqueResult();

            ss.close();

            return cnt.intValue();
        } catch (Exception e) {
            // TODO: handle exception
        }

        return 0;
    }

    @Override
    public List<Category> pagination(int page, int itemOnPage) {
        Session session = HibernateUtil.getSession().openSession();

        session.beginTransaction();

        page = page < 0 ? 0 : page;

        List<Category> lst = session.createQuery("from Category ").setFirstResult(page * itemOnPage) // Offset
                .setMaxResults(itemOnPage) // Fetch next
                .list();

        session.close();

        return lst;
    }

    public List<Category> searchByName(String keyword){
        String keywordTranslate = "%" + keyword + "%";
        System.out.println("keywordTranslate: " + keywordTranslate);
        Session session = HibernateUtil.getSession().openSession();
        try {
            session.beginTransaction();
            List<Category> cateFound = session.createQuery("from Category where name like :params").setParameter("params",keywordTranslate).list();
            return cateFound;
        }catch (Exception e){
            e.printStackTrace();
            session.getTransaction().rollback();
            session.close();
            return null;
        }
    }

}
