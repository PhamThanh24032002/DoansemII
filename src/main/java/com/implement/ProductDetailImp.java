package com.implement;

import com.dao.IDao;
import com.entity.Product_detail;
import com.entity.Products;
import com.entity.Products;
import com.entity.Products;
import com.util.HibernateUtil;
import org.hibernate.Session;

import java.util.List;

public class ProductDetailImp implements IDao<Integer, Product_detail> {
    @Override
    public List<Product_detail> getAll() {
        Session session = HibernateUtil.getSession().openSession();
        try {
            session.beginTransaction();
            List product_detail = session.createQuery("from Product_detail").list();
            session.close();
            return product_detail;
        }catch (Exception e){
            e.printStackTrace();
            session.getTransaction().rollback();
            session.close();
            return null;
        }
    }

    @Override
    public boolean create(Product_detail newV) {
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
    public boolean update(Product_detail newV) {
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
            int check_delete = session.createQuery("delete Product_detail where id=:params").setParameter("params",id).executeUpdate();
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
    public Product_detail findById(Integer id) {
        Session session = HibernateUtil.getSession().openSession();
        try {
            session.beginTransaction();
            Product_detail productDetailFound = (Product_detail) session.createQuery("from Product_detail where id=:params").setParameter("params",id).uniqueResult();
            session.close();
            return productDetailFound;
        }catch (Exception e){
            e.printStackTrace();
            session.getTransaction().rollback();
            session.close();
            return null;
        }
    }

    @Override
    public Product_detail findByName(String nameW) {
        return null;
    }

    @Override
    public int selectCount() {
        return 0;
    }

    @Override
    public List<Product_detail> pagination(int page, int itemOnPage) {
      return null;
    }
    
    public List<Product_detail> findByProduct(int id) {
    	 Session session = HibernateUtil.getSession().openSession();
         try {
             session.beginTransaction();
             List<Product_detail> lst= session.createQuery("from Product_detail where product_id=:params").setParameter("params",id).list();
             session.close();
             return lst;
         }catch (Exception e){
             e.printStackTrace();
             session.getTransaction().rollback();
             session.close();
             return null;
         }
    }
}
