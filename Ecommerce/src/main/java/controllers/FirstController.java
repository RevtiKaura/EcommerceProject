package controllers;
 
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
 
@Controller
public class FirstController {
	
 
	@RequestMapping("/")// this is for your landing page
	public ModelAndView message(){
		ModelAndView mv = new ModelAndView("index");
		mv.addObject("message", "Welcome to Fashion Street!!");
		return mv;
	}
	
	@RequestMapping("/home")// this is for your landing page
	public ModelAndView message1(){
		ModelAndView mv = new ModelAndView("index");
		mv.addObject("message", "Welcome to Fashion Street!!");
		return mv;
	}
	@RequestMapping("/productDet")// this is for your landing page
	public ModelAndView product(){
		ModelAndView mv = new ModelAndView("productDetails");
		return mv;
	}
	
	@RequestMapping("/registration")// this is for your landing page
	public ModelAndView reg(){
		ModelAndView mv = new ModelAndView("registration");
		return mv;
	}
	
}