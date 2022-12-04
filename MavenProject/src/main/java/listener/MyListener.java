package listener;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import model.Todo;





public class MyListener  implements ServletContextListener {

	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void contextInitialized(ServletContextEvent sce) {
		// TODO Auto-generated method stub
		
		System.out.println("Context Rnuning");
		
		List<Todo> list = new ArrayList<Todo>();
		ServletContext con= sce.getServletContext();
		
		con.setAttribute("list", list);
		
		
		
	}
	
	

}
