package com.cmpe281.tshirtshop;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
@RequestMapping("/")


public class TshirtController {
	
    @Autowired private TshirtDAO tshirtDAO;  
    
    @RequestMapping(value = "/")
    public String home() {
 	   return "home";
    }
 	
    @RequestMapping(value = "/nikeHome")
    public String nikeHome() {
		return "nikeHome";
    }
    
    @RequestMapping(value = "/nikeMen", method = RequestMethod.GET)
    public String nikeMen(Model model) 
    {
    	List<Tshirt> nikeMen = tshirtDAO.NikeTshirtMen();
		model.addAttribute("nikeMen", nikeMen);
		return "nikeMen";
    }
    
    @RequestMapping(value = "/nikeWomen", method = RequestMethod.GET)
    public String nikeWomen(Model model) 
    {
    	List<Tshirt> nikeWomen = tshirtDAO.NikeTshirtWomen();
		model.addAttribute("nikeWomen", nikeWomen);
		return "nikeWomen";
    }
    
    @RequestMapping(value = "/nikeKids", method = RequestMethod.GET)
    public String nikeKids(Model model) 
    {
    	List<Tshirt> nikeKids = tshirtDAO.NikeTshirtKids();
		model.addAttribute("nikeKids", nikeKids);
		return "nikeKids";
    }
    
    @RequestMapping(value = "/nikeFeatured", method = RequestMethod.GET)
    public String nikeFeatured(Model model) 
    {
    	List<Tshirt> nikeFeatured = tshirtDAO.NikeTshirtFeatured();
		model.addAttribute("nikeFeatured", nikeFeatured);
		return "nikeFeatured";
    }
    
    
    @RequestMapping(value = "/purchaseTshirt", method = RequestMethod.GET)
    public String purchaseTshirt(Model model,@RequestParam("product_id") String product_id) 
    {
    	System.out.println(product_id);
    	List <Tshirt> myTshirt = tshirtDAO.productbyId(product_id);
		model.addAttribute("myTshirt", myTshirt);
    	return "purchase";
    }
    
    @RequestMapping(value = "/thankYou", method = RequestMethod.GET)
    public String thankYou(Model model,@RequestParam("product_id") String product_id, @RequestParam("unit") int unit) 
    {
    	System.out.println("Thank you "+product_id);
    	String Status = tshirtDAO.thankYou(product_id, unit);
    	System.out.println(Status);
        	return "thankyou";
    }
    
		
	@RequestMapping(value = "/Indianterrain",method = RequestMethod.GET)
    public String IndianterrainHome(Model model) {
		List<Tshirt> pumaTshirts = tshirtDAO.findPumaTshirt();
		model.addAttribute("pumaTshirts", pumaTshirts);
		return "Indianterrain";
    }
	
	
	@RequestMapping(value= "/IndianterrainMen", method = RequestMethod.GET)
	public String Indianterrainmen(Model model)
	{
		List<Tshirt> indianTerrainMen = tshirtDAO.IndianTerrainMen();
		model.addAttribute("indianTerrainMen", indianTerrainMen);
		
		return "Indianterrainmen";
	}
	
		
	@RequestMapping(value= "/IndianterrainWomen", method = RequestMethod.GET)
	public String Indianterrainwomen(Model model)
	{
		List<Tshirt> indianTerrainWomen = tshirtDAO.IndianTerrainWomen();
		model.addAttribute("indianTerrainWomen", indianTerrainWomen);
		
		return "Indianterrainwomen";
	}
	
	@RequestMapping(value= "/IndianterrainKids", method = RequestMethod.GET)
	public String Indianterrainkids(Model model)
	{
		List<Tshirt> indianTerrainKids = tshirtDAO.IndianTerrainKids();
		model.addAttribute("indianTerrainKids", indianTerrainKids);
		
		return "Indianterrainkids";
	}
	
	@RequestMapping(value= "/IndianterrainBelt", method = RequestMethod.GET)
	public String Indianterrainbelt(Model model)
	{
		List<Tshirt> indianTerrainBelt = tshirtDAO.IndianTerrainBelt();
		model.addAttribute("indianTerrainBelt", indianTerrainBelt);
		
		return "Indianterrainbelt";
	}

	@RequestMapping(value = "/purchaseBelt", method = RequestMethod.GET)
    public String purchaseBelt(Model model,@RequestParam("product_id") String product_id) 
    {
    	System.out.println(product_id);
    	List <Belt> myBelt = tshirtDAO.indianBeltbyId(product_id);
		model.addAttribute("myBelt", myBelt);
    	return "purchaseBelt";
    }
	
	 @RequestMapping(value = "/indianthankYou", method = RequestMethod.GET)
	    public String indianthankYou(Model model,@RequestParam("product_id") String product_id, @RequestParam("unit") int unit) 
	    {
	    	System.out.println("Thank you "+product_id);
	    	String Status = tshirtDAO.indianthankYou(product_id, unit);
	    	System.out.println(Status);
	        	return "thankyou";
	    }
	
	 // ---------------------------------  PUMA Controller ------------------------------------------
	 
	 
		@RequestMapping(value = "/pumaHome",method = RequestMethod.GET)
	    public String pumaHome(Model model) {
			List<Tshirt> pumaTshirts = tshirtDAO.findPumaTshirt();
			model.addAttribute("pumaTshirts", pumaTshirts);
			return "pumaHome";
	    }
		
		
		
	    @RequestMapping(value = "/pumaHome/all", method = RequestMethod.GET)
	    public String PumaAll(Model model) 
	    {
			return "pumaHome";
	    }
	    
		
	    @RequestMapping(value = "/pumaHome/men", method = RequestMethod.GET)
	    public String PumaMen(Model model) 
	    {
			return "pumaMen";
	    }
	    
	    
	    
	    @RequestMapping(value = "/pumaHome/women", method = RequestMethod.GET)
	    public String PumaWomen(Model model) 
	    {

			return "pumaWomen";
	    }
	    
		
		@RequestMapping(value = "/pumaHome/pumaItemDetails",method = RequestMethod.GET)
	    public String pumaItemDetails(@RequestParam("param") String imagePath ,Model model) {
			List<Tshirt> puma = tshirtDAO.findPumaTshirtImage(imagePath);
			System.out.println("Param value is "+imagePath);
			model.addAttribute("pumaTshirts", puma);
//			model.addAttribute("key", imagePath);
			System.out.println("DB object value is "+puma);

			return "pumaItemDetails";
	    }
		
		
		
		@RequestMapping(value ="/pumaHome/payment",method = RequestMethod.GET)
	    public String payment(HttpServletRequest request,HttpSession session, Model model) {
			int qty = (Integer.parseInt(request.getParameter("qty")));
			String pId = request.getParameter("pId");

			session.setAttribute("quant", qty);
			session.setAttribute("prodId", pId);


			System.out.println("Quantity is "+qty);
			System.out.println("product id is is "+pId);
			
			return "payment";

	    }
		
		
		
		@RequestMapping(value = "/pumaWatch",method = RequestMethod.GET)
	    public String pumaWatch(Model model) {
			List<Tshirt> pumaWatch = tshirtDAO.findPumaWatch();
			model.addAttribute("pumaWatch", pumaWatch);
			return "pumaWatchHome";
	    }
		
		
		@RequestMapping(value ="/pumaHome/success",method = RequestMethod.POST)
	    public String updateQuantity(HttpServletRequest request,HttpSession session, Model model) {
//			int qty = (Integer.parseInt(request.getParameter("qty")));
//			String pId = request.getParameter("pId");
			int qty=(Integer)session.getAttribute("quant");
			String pId = session.getAttribute("prodId").toString();
			System.out.println("inside update Quantity is "+qty);
			System.out.println("inside update product id is is "+pId);

			int status = tshirtDAO.updatePumaTshirt(qty,pId);
			model.addAttribute("pumaTshirts", status);
			return "thankyou";
	    }
		
		
		
		
		
		

	    @RequestMapping(value = "/pumaWatchHome/all", method = RequestMethod.GET)
	    public String PumaWatchAll(Model model) 
	    {
			return "pumaWatchHome";
	    }
	    
		
	    @RequestMapping(value = "/pumaWatchHome/men", method = RequestMethod.GET)
	    public String PumaWatchMen(Model model) 
	    {
			return "pumaWatchMen";
	    }
	    
	    
	    
	    @RequestMapping(value = "/pumaWatchHome/women", method = RequestMethod.GET)
	    public String PumaWatchWomen(Model model) 
	    {

			return "pumaWatchWomen";
	    }
	    
		
		@RequestMapping(value = "/pumaWatchHome/pumaWatchDetails",method = RequestMethod.GET)
	    public String pumaWatchDetails(@RequestParam("param") String imagePath ,Model model) {
			List<Tshirt> puma = tshirtDAO.findPumaWatchImage(imagePath);
			System.out.println("Param value is "+imagePath);
			model.addAttribute("pumaWatch", puma);
//			model.addAttribute("key", imagePath);
			System.out.println("DB object value is "+puma);

			return "pumaWatchDetails";
	    }
		
		
		
		@RequestMapping(value ="/pumaWatchHome/payment",method = RequestMethod.GET)
	    public String paymentWatch(HttpServletRequest request,HttpSession session, Model model) {
			int qty = (Integer.parseInt(request.getParameter("qty")));
			String pId = request.getParameter("pId");

			session.setAttribute("quant", qty);
			session.setAttribute("prodId", pId);


			System.out.println("Quantity is "+qty);
			System.out.println("product id is is "+pId);
	//
//			int status = tshirtDAO.updatePumaTshirt(qty,pId);
//			model.addAttribute("pumaTshirts", status);
			return "payment";
	    }
		
		
		
		@RequestMapping(value ="/pumaWatchHome/success",method = RequestMethod.POST)
	    public String updateWatchQuantity(HttpServletRequest request,HttpSession session, Model model) {
//			int qty = (Integer.parseInt(request.getParameter("qty")));
//			String pId = request.getParameter("pId");
			int qty=(Integer)session.getAttribute("quant");
			String pId = session.getAttribute("prodId").toString();
			System.out.println("inside update Quantity is "+qty);
			System.out.println("inside update product id is is "+pId);

			int status = tshirtDAO.updatePumaWatch(qty,pId);
			model.addAttribute("pumaTshirts", status);
			return "success";
	    }
		
    // ========================= Adidas Controller ================================
		
		@RequestMapping("/Adidas")
		public String Adidas(Model model)
		{
			
			return "Adidas";
		}
		
		@RequestMapping(value= "/AdidasMen", method = RequestMethod.GET)
		public String Adidasnmen(Model model)
		{
			List<Tshirt> adidasMen = tshirtDAO.AdidasMen();
			model.addAttribute("adidasMen", adidasMen);
			
			return "Adidasmen";
		}
		
		@RequestMapping(value= "/AdidasWomen", method = RequestMethod.GET)
		public String Adidaswomen(Model model)
		{
			List<Tshirt> adidasWomen = tshirtDAO.AdidasWomen();
			model.addAttribute("adidasWomen", adidasWomen);
			
			return "Adidaswomen";
		}
		
		@RequestMapping(value= "/AdidasKids", method = RequestMethod.GET)
		public String Adidaskids(Model model)
		{
			List<Tshirt> adidasKids = tshirtDAO.AdidasKids();
			model.addAttribute("adidasKids", adidasKids);
			
			return "Adidaskids";
		}

		
	//	=====================================  Tommy Controller ==============================
				
	      @RequestMapping(value = "/tommyhome")
		     public String tommyHome() {
				return "Tommy";
		    }

		@RequestMapping(value = "/tommyhome/tommyCategory", method = RequestMethod.GET)
		    public String tommyCategory(@RequestParam("category") String category, Model model) 
		    {
		    	System.out.println("*************"+category);
		    	List<Tshirt> tommyClothesCat = tshirtDAO.tommyClothesCat(category);
		    	model.addAttribute("category", category);
				model.addAttribute("Category", tommyClothesCat);
				return "TommyCategory";
		    }
		    @RequestMapping(value = "/tommyhome/tommyProduct", method = RequestMethod.GET)
		    public String tommyProduct(@RequestParam("product_id") String product_id,@RequestParam("product_name") String product_name, @RequestParam("product_desc") String product_desc, @RequestParam("price") int price, @RequestParam("quantity") int quantity, @RequestParam("color") String color, @RequestParam("size") String size, @RequestParam("image") String image, Model model) 
		    {
		    	model.addAttribute("product_id", product_id);
		    	model.addAttribute("product_name", product_name);
		    	model.addAttribute("product_desc", product_desc);
		    	model.addAttribute("price", price);
		    	model.addAttribute("quantity", quantity);
		    	model.addAttribute("color", color);
		    	model.addAttribute("size", size);
		    	model.addAttribute("image", image);
				return "TommyProduct";
		    }
		    
		    @RequestMapping(value = "/tommyhome/tommyProduct/checkout", method = RequestMethod.GET)
		    public String checkout(@RequestParam("product_id") String product_id, @RequestParam("qtyO") String qtyO,  Model model)
		    {
		    	model.addAttribute("qtyO", qtyO);
		    	model.addAttribute("product_id", product_id);
		    	return "TommyPayment";
		    }
		    
		    @RequestMapping(value = "/tommyhome/tommyProduct/finalPurchase", method = RequestMethod.GET)
		    public String finalPurchase(@RequestParam("product_id") String product_id, @RequestParam("qtyO") int qtyO,  Model model)
		    {
		    	List<Tshirt> tommyProd = tshirtDAO.tommyProd(product_id, qtyO);
		    	System.out.println("Sixe of the list"+tommyProd.size());
		    	model.addAttribute("tommyProd", tommyProd);
		    	model.addAttribute("qtyO", qtyO);
		    	return "TommySuccess";
		    }
	 
}