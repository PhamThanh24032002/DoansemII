package com.implement;

import com.dao.IDao;
import com.entity.Colors;
import com.entity.Payment_method;
import com.entity.Sizes;
import com.util.HibernateUtil;
import org.hibernate.Session;

import java.util.List;

public class PaymentImp implements IDao<Integer, Payment_method> {
    @Override
    public List<Payment_method> getAll() {
        Session session = HibernateUtil.getSession().openSession();
        session.beginTransaction();
        List<Payment_method> sizes = session.createQuery("from Payment_method").list();
        session.close();
        return sizes;
    }

    @Override
    public boolean create(Payment_method newV) {
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
    public boolean update(Payment_method newV) {
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
            int check_delete = session.createQuery("delete Payment_method where id=:params").setParameter("params",id).executeUpdate();
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
    public Payment_method findById(Integer id) {
        Session session = HibernateUtil.getSession().openSession();
        try {
            session.beginTransaction();
            Payment_method sizeFound = (Payment_method) session.createQuery("from Payment_method where id=:params").setParameter("params",id).uniqueResult();
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
    public Payment_method findByName(String nameW) {
    	return null;
    }

    @Override
    public int selectCount() {
        return 0;
    }

    @Override
    public List<Payment_method> pagination(int page, int itemOnPage) {
        Session session = HibernateUtil.getSession().openSession();

        session.beginTransaction();

        page = page < 0 ? 0 : page;

        List<Payment_method> lst = session.createQuery("from Payment_method").setFirstResult(page * itemOnPage) // Offset
                .setMaxResults(itemOnPage) // Fetch next
                .list();

        session.close();

        return lst;
    }

    public List<Payment_method> searchByName(String keyword){
       return null;
    }

}
