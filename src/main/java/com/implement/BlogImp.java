package com.implement;

import java.util.List;

import org.hibernate.Session;

import com.dao.IDao;
import com.entity.Blog;
import com.util.HibernateUtil;

public class BlogImp implements IDao<Integer, Blog> {

	@Override
	public List<Blog> getAll() {
		  Session session = HibernateUtil.getSession().openSession();
	        session.beginTransaction();
	        List categories = session.createQuery("from Blog").list();
	        session.close();
	        return categories;
	}

	@Override
	public boolean create(Blog newV) {
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
	public boolean update(Blog newV) {
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
	            int check_delete = session.createQuery("delete Blog where id=:params").setParameter("params",id).executeUpdate();
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
	public Blog findById(Integer id) {
		 Session session = HibernateUtil.getSession().openSession();
	        try {
	            session.beginTransaction();
	            Blog blogFound = (Blog) session.createQuery("from Blog where id=:params").setParameter("params",id).uniqueResult();
	            session.close();
	            return blogFound;
	        }catch (Exception e){
	            e.printStackTrace();
	            session.getTransaction().rollback();
	            session.close();
	            return null;
	        }
	}

	@Override
	public Blog findByName(String nameW) {
		  Session session = HibernateUtil.getSession().openSession();
	        try {
	            session.beginTransaction();
	            Blog blogFound = (Blog) session.createQuery("from Blog where name=:params").setParameter("params",nameW).uniqueResult();
	            session.close();
	            return blogFound;
	        }catch (Exception e){
	            e.printStackTrace();
	            session.getTransaction().rollback();
	            session.close();
	            return null;
	        }
	}

	@Override
	public int selectCount() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Blog> pagination(int page, int itemOnPage) {
		 Session session = HibernateUtil.getSession().openSession();

	        session.beginTransaction();

	        page = page < 0 ? 0 : page;

	        List<Blog> lst = session.createQuery("from Blog ").setFirstResult(page * itemOnPage) // Offset
	                .setMaxResults(itemOnPage) // Fetch next
	                .list();

	        session.close();

	        return lst;
	}

}
