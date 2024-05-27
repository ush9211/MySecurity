package net.pgush.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import net.pgush.dao.UserDao;

@Controller
public class DefaultController {
	
	@Autowired
	private UserDao userDao;
	
	
	

	@GetMapping("/")
	public String index() {
		
		System.out.println("index() 실행");
		
		return "default";
	}
	
	
	@GetMapping("/about")
	public String about() {
		
		System.out.println("about() 실행");
		
		return "about";
	}
	
	
	@GetMapping("/gallery")
	public String gallery() {
		
		System.out.println("gallery() 실행");
		
		return "gallery";
	}
	
	
	@GetMapping("/youtube")
	public String youtube() {
		
		System.out.println("youtube() 실행");
		
		return "youtube";
	}
	
	
	@GetMapping("/contact")
	public String contact() {
		
		System.out.println("contact() 실행");
		
		return "contact";
	}
	
	
	
	
	/*		
	@ResponseBody // return값을 body에 직접 쓸 수 있게 해주는 어노테이션
	@GetMapping("/hello")
	public String hello() {
		
		System.out.println("hello() 실행");
		
		return "Hello~! Welcome to Java World!! Have a Good Luck";
	}
	
	

	@ResponseBody // return값을 body에 직접 쓸 수 있게 해주는 어노테이션
	@GetMapping(value="/bye", produces="text/html;charset=UTF-8")
	// produces : html head 부분에 선언해줄 수 있는 설정
	public String bye() {
		
		System.out.println("bye() 실행");
		
		return "더 이상 배울것이 없습니다. 이제 졸업하세요~!";
	}
*/	
	
	
	@GetMapping("/clogin")
	public String customLogin() {
		
		System.out.println("customLogin() 실행");
		
		return "login";
	}
	
	
	@PostMapping("/logout")
	public String customLogout(HttpServletRequest request, HttpServletResponse response) {
		
		System.out.println("customLogout() 실행");
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		
		if(auth != null && auth.isAuthenticated()) {
			
			new SecurityContextLogoutHandler().logout(request, response, auth);
		}
		
		return "redirect:/";
	}
	
	
	@GetMapping("/check")
	public String check() {
		
		System.out.println("check() 실행");
		
		return "usercheck";
	}
	
	
	@PostMapping("/check")
	public String checkForm(HttpServletRequest request, HttpServletResponse response, Model model) {
		
		System.out.println("checkForm() 실행");
		
		String check = request.getParameter("check");
		String usearch = request.getParameter("usearch");
		
		int result = userDao.isUser(Integer.parseInt(check), usearch);
		
		model.addAttribute("result", result);
		model.addAttribute("usearch", usearch);
		model.addAttribute("check", check);
		
		return "usercheck";
	}
}
