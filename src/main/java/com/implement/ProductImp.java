package com.implement;

import com.dao.IDao;
import com.entity.Products;
import com.entity.Products;
import com.entity.Products;
import com.util.HibernateUtil;
import org.hibernate.Session;

import java.util.List;

public class ProductImp implements IDao<Integer, Products> {
    @Override
    public List<Products> getAll() {
        Session session = HibernateUtil.getSession().openSession();
        try {
            session.beginTransaction();
            List Productss = session.createQuery("from Products").list();
            session.close();
            return Productss;
        }catch (Exception e){
            e.printStackTrace();
            session.getTransaction().rollback();
            session.close();
            return null;
        }
    }

    @Override
    public boolean create(Products newV) {
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
    public boolean update(Products newV) {
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
            int check_delete = session.createQuery("delete Products where id=:params").setParameter("params",id).executeUpdate();
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
    public Products findById(Integer id) {
        Session session = HibernateUtil.getSession().openSession();
        try {
            session.beginTransaction();
            Products ProductsFound = (Products) session.createQuery("from Products where id=:params").setParameter("params",id).uniqueResult();
            session.close();
            return ProductsFound;
        }catch (Exception e){
            e.printStackTrace();
            session.getTransaction().rollback();
            session.close();
            return null;
        }
    }

    @Override
    public Products findByName(String nameW) {
        Session session = HibernateUtil.getSession().openSession();
        try {
            session.beginTransaction();
            Products ProductsFound = (Products) session.createQuery("from Products where name=:params").setParameter("params",nameW).uniqueResult();
            session.close();
            return ProductsFound;
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

            // Long: l???? wrapper class ???????????i di???????n x?????? l???? ki??????u d?????? li???????u <long>
            // HQL <=> SQL: b??????ng >>> mapping >>> Object
            Long cnt = (Long) ss.createQuery("select COUNT(id) from Products").uniqueResult();

            ss.close();

            return cnt.intValue();
        } catch (Exception e) {
            // TODO: handle exception
        }

        return 0;
    }

    @Override
    public List<Products> pagination(int page, int itemOnPage) {
        Session session = HibernateUtil.getSession().openSession();

        // B??????t ???????????u giao d???????ch
        session.beginTransaction();

        page = page < 0 ? 0 : page;

        // Th??????c thi truy v??????n: s?????? d??????ng ng????n ng?????? truy v??????n HQL <=> SQL
        List<Products> lst = session.createQuery("from Products").setFirstResult(page * itemOnPage) // Offset
                .setMaxResults(itemOnPage) // Fetch next
                .list();

        // ?????????ng k??????t n???????i
        session.close();

        return lst;
    }

    public List<Products> searchByName(String keyword){
        String keywordTranslate = "%" + keyword + "%";
        System.out.println("keywordTranslate: " + keywordTranslate);
        Session session = HibernateUtil.getSession().openSession();
        try {
            session.beginTransaction();
            List<Products> ProductsFound = session.createQuery("from Products where name like :params").setParameter("params",keywordTranslate).list();
            return ProductsFound;
        }catch (Exception e){
            e.printStackTrace();
            session.getTransaction().rollback();
            session.close();
            return null;
        }

    }

    public List<Products> findByCate(int cate_id){
        Session session = HibernateUtil.getSession().openSession();
        try {
            session.beginTransaction();
            List<Products> Productss = session.createQuery("from Products where category.id=:params").setParameter("params",cate_id).list();
            session.close();
            return Productss;
        }catch (Exception e){
            e.printStackTrace();
            session.getTransaction().rollback();
            session.close();
            return null;
        }

    }

//    public List<Lesson> getLessonByProducts(int Products_id){
//        Session session = HibernateUtil.getSession().openSession();
//        try{
//            session.beginTransaction();
//            List<Lesson> lessonList = session.createQuery("from Lesson where Products.id = :param").setParameter("param", Products_id).list();
//            return lessonList;
//        }catch (Exception e){
//            e.printStackTrace();
//            session.close();
//            return null;
//        }
//    }

    public List<Products> getProductsByTeacher(int idTeacher){
        Session session = HibernateUtil.getSession().openSession();
        try {
            session.beginTransaction();
            List products = session.createQuery("from Products where teachers.id =:param").setParameter("param",idTeacher).list();
            session.close();
            return products;
        }catch (Exception e){
            e.printStackTrace();
            session.getTransaction().rollback();
            session.close();
            return null;
        }
    }
}
