package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {
	
	@RequestMapping(value="/index.html", method = RequestMethod.GET) 
	ModelAndView index(HttpServletRequest request, HttpServletResponse response) {
		
		String username = (String) request.getSession().getAttribute("username");
		if(username != null) {
			if(username.contains("@")) {
				username = username.split("@")[0];
			}
		}
	
		return new ModelAndView("confirmation", "username", username);
	}
	
	@RequestMapping(value="/login.html")
	public ModelAndView login(HttpServletRequest request, HttpServletResponse response) {
		AccountDAO accountDAO = new AccountDAO();
		List<Account> list = accountDAO.getAccounts();
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String action = request.getParameter("action");
		if(action != null) {
			if(username != null && password != null && username.length() != 0 && password.length() != 0) {
				for(Account account : list) {
					if(username.equalsIgnoreCase(account.getUser()) && password.equalsIgnoreCase(account.getPassword())) {
						request.getSession().setAttribute("username", username);
						return new ModelAndView("redirect:/index.html");
					} 
				}
				return new ModelAndView("login", "error", "2");
			} else {
				return new ModelAndView("login", "error", "1");
			}
		}
		return new ModelAndView("login", "error", "0");
	}
}
