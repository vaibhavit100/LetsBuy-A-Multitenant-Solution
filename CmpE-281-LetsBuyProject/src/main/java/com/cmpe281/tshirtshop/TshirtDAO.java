package com.cmpe281.tshirtshop;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@SuppressWarnings({"unchecked", "rawtypes"})

public class TshirtDAO {

	@Autowired private SessionFactory sessionFactory;
	
	
	// ================== Tommy DAO ====================
	

	@Transactional
	public List<Tshirt> tommyClothesCat(String category) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		System.out.println("after session");
		List tshirts = session.createQuery(" from Tshirt where tenent_id = 'tommy' and category = '"+category+"' ").list();
		return tshirts;
	}
	
	
	@Transactional
	public List<Tshirt> tommyProd(String product_id, int qtyO) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		//quantity=quantity-qtyO;
		Query query=session.createQuery("update Tshirt set quantity=quantity-"+qtyO+"where product_id='"+product_id+"'");
		query.executeUpdate();
		System.out.println("after query");
		List prod =session.createQuery("from Tshirt where product_id='"+product_id+"'").list();
		return prod;
	}
	
	//------------------  Adidas ---------------------------
	
	@Transactional
	public List<Tshirt> AdidasMen(){
		
		Session session = sessionFactory.getCurrentSession();
		List tshirts = session.createQuery(" from Tshirt where tenent_id = 'adidas' and category = 'men' ").list();
		return tshirts;
		
	}
		
	@Transactional
	public List<Tshirt> AdidasWomen(){
		
		Session session = sessionFactory.getCurrentSession();
		List tshirts = session.createQuery(" from Tshirt where tenent_id = 'adidas' and category = 'women'").list();
		return tshirts;
		
	}
	
	@Transactional
	public List<Tshirt> AdidasKids(){
		
		Session session = sessionFactory.getCurrentSession();
		List tshirts = session.createQuery(" from Tshirt where tenent_id = 'adidas' and category = 'kids'").list();
		return tshirts;
		
	}

	
	
	@Transactional
	public List<Tshirt> findPumaTshirtImage(String imgPath){
		
		System.out.println("Inside DAO ImagePath is "+imgPath);
		Session session = sessionFactory.getCurrentSession();
		
		
		Query query = session.createQuery("from Tshirt where image=:imgPath");
		query.setParameter("imgPath", imgPath);
		List tshirts  = query.list();
//		List tshirts = session.createQuery(" from Tshirt where image=:imgPath").list();
        System.out.println(" Inside list "+tshirts);
		return tshirts;
		
	}
	

	@Transactional
	public List<Tshirt> PumaTshirtMen(){
		Session session = sessionFactory.getCurrentSession();
		List tshirts = session.createQuery(" from Tshirt where tenent_id = 'puma' and category = 'men' ").list();
		return tshirts;
		
	}	
	
	@Transactional
	public List<Tshirt> PumaTshirtWomen(){
		
		Session session = sessionFactory.getCurrentSession();
		List tshirts = session.createQuery(" from Tshirt where tenent_id = 'puma' and category = 'women' ").list();
		return tshirts;
		
	}
	
	
	@Transactional
	public List<Tshirt> findPumaWatch(){
		
		Session session = sessionFactory.getCurrentSession();
		List watch = session.createQuery(" from PumaWatch ").list();
		return watch;
		
	}
	
	
	@Transactional
	public List<Tshirt> findPumaWatchImage(String imgPath){
		
		System.out.println("Inside DAO ImagePath is "+imgPath);
		Session session = sessionFactory.getCurrentSession();
		
		
		Query query = session.createQuery("from PumaWatch where image=:imgPath");
		query.setParameter("imgPath", imgPath);
		List watch  = query.list();
//		List tshirts = session.createQuery(" from Tshirt where image=:imgPath").list();
        System.out.println(" Inside list "+watch);
		return watch;
		
	}
	
	@Transactional
	public int updatePumaTshirt(int qty,String pId){
		Session session = sessionFactory.getCurrentSession();
		Query query=session.createQuery("update Tshirt set quantity=quantity-"+qty+"where product_id='"+pId+"'");
		int status = query.executeUpdate();
		System.out.println("Status is "+status);
		return status;
		
	}
	
	
	@Transactional
	public int updatePumaWatch(int qty,String pId){
		Session session = sessionFactory.getCurrentSession();
		Query query=session.createQuery("update PumaWatch set quantity=quantity-"+qty+"where product_id='"+pId+"'");
		int status = query.executeUpdate();
		System.out.println("Status is "+status);
		return status;
		
	}
	
	
//---------------------------  main ---------------------------------	
	
	
	@Transactional
	public List<Tshirt> findAllTshirt(){
		
		Session session = sessionFactory.getCurrentSession();
		List tshirts = session.createQuery(" from Tshirt").list();
		return tshirts;
		
	}
	
	@Transactional
	public List<Tshirt> NikeTshirtMen(){
		
		Session session = sessionFactory.getCurrentSession();
		List tshirts = session.createQuery(" from Tshirt where tenent_id = 'nike' and category = 'men' ").list();
		return tshirts;
		
	}
	
	@Transactional
	public List<Tshirt> NikeTshirtWomen(){
		
		Session session = sessionFactory.getCurrentSession();
		List tshirts = session.createQuery(" from Tshirt where tenent_id = 'nike' and category = 'women' ").list();
		return tshirts;
		
	}
	
	@Transactional
	public List<Tshirt> NikeTshirtKids(){
		
		Session session = sessionFactory.getCurrentSession();
		List tshirts = session.createQuery(" from Tshirt where tenent_id = 'nike' and category = 'kids' ").list();
		return tshirts;
		
	}
	
	@Transactional
	public List<Tshirt> NikeTshirtFeatured(){
		
		Session session = sessionFactory.getCurrentSession();
		List tshirts = session.createQuery(" from Tshirt where tenent_id = 'nike' and category = 'featured' ").list();
		return tshirts;
		
	}
	
	@Transactional
	public List<Tshirt> findPumaTshirt(){
		
		Session session = sessionFactory.getCurrentSession();
		List tshirts = session.createQuery(" from Tshirt where tenent_id = 'puma'").list();
		return tshirts;
		
	}
	
	@Transactional
	public List<Tshirt> productbyId(String p_id){
		
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery(" from Tshirt where product_id = :p_id");
         query.setParameter("p_id", p_id);
         
         List myTshirt = query.list();

         return myTshirt;
		
	}
	
	
	
	@Transactional
	public String thankYou(String product_id, int unit) {
		
		Session session = sessionFactory.getCurrentSession();
		
		Query query=session.createQuery("update Tshirt set quantity=quantity-"+unit+"where product_id='"+product_id+"'");
		query.executeUpdate();
		System.out.println("Success");
		return "Success";
		
	}
	
	@Transactional
	public List<Tshirt> IndianTerrainMen(){
		
		Session session = sessionFactory.getCurrentSession();
		List tshirts = session.createQuery(" from Tshirt where tenent_id = 'indian' and category = 'men' ").list();
		return tshirts;
		
	}
		
	
	@Transactional
	public List<Tshirt> IndianTerrainWomen(){
		
		Session session = sessionFactory.getCurrentSession();
		List tshirts = session.createQuery(" from Tshirt where tenent_id = 'indian' and category = 'women'").list();
		return tshirts;
		
	}
	
	@Transactional
	public List<Tshirt> IndianTerrainKids(){
		
		Session session = sessionFactory.getCurrentSession();
		List tshirts = session.createQuery(" from Tshirt where tenent_id = 'indian' and category = 'kids'").list();
		return tshirts;
		
	}
	
	@Transactional
	public List<Tshirt> IndianTerrainBelt(){
		
		Session session = sessionFactory.getCurrentSession();
		List tshirts = session.createQuery(" from Belt").list();
		return tshirts;
		
	}
	
	@Transactional
	public List<Belt> indianBeltbyId(String p_id){
		
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery(" from Belt where product_id = :p_id");
         query.setParameter("p_id", p_id);
         
         List myBelt = query.list();

         return myBelt;
		
	}

	@Transactional
	public String indianthankYou(String product_id, int unit) {
		
		Session session = sessionFactory.getCurrentSession();
		
		Query query=session.createQuery("update Belt set quantity=quantity-"+unit+"where product_id='"+product_id+"'");
		query.executeUpdate();
		System.out.println("Success");
		return "Success";
		
	}
}
