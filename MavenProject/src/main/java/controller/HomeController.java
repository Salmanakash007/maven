package controller;

import java.util.Date;
import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.Todo;

@Controller
public class HomeController {
	@Autowired
	private ServletContext con;
	
	@RequestMapping("/")
	public String home(Model model){
//		String massage="Hello from spring";
		model.addAttribute("page", "Home");
		model.addAttribute("tit", "Add Todo");
		
		return "home";
	}
	
	@RequestMapping("/add")
	public String add(Model model){
		model.addAttribute("page", "Add");
		model.addAttribute("tit", "Add Todo");
		
		Todo t = new Todo();
		model.addAttribute("todo", t);
		
	return "home";
	}
	
	

	@RequestMapping(value =  "/savetodo" , method = RequestMethod.POST)
	public String save(@ModelAttribute("todo")Todo t, Model model){
		
			t.setDate(new Date());
			List<Todo> list = (List<Todo>)con.getAttribute("list");
			list.add(t);
			
			System.out.println(list);
			
			model.addAttribute("msg", "Date Added to List");
		
		
		return "home";
	}
	
	@RequestMapping("/contact")
	public String contact(){
		
		return "contact";
	}
	

}
