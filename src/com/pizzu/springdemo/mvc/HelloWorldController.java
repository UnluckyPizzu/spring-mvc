package com.pizzu.springdemo.mvc;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("hello")
public class HelloWorldController {

	// need a controller method to show the initial HTML form
	@RequestMapping("/showForm")
	public String showForm()
	{
		return "helloworld-form";
	}
	// need a controller method to process the html form
	@RequestMapping("/processForm")
	public String processForm() {
		return "helloworld";
	}
	
	@RequestMapping("/processFormVersioneTwo")
	public String letsShoutDude(HttpServletRequest request, Model model) {
		String name = request.getParameter("studentName");
		name = name.toUpperCase();
		String message = "Yo! " + name;
		model.addAttribute("message",message);
		return "helloworld";
	}
	
	@RequestMapping("/processFormVersioneThree")
	public String processFormVersionThree( @RequestParam("studentName")String name, Model model) {
		name = name.toUpperCase();
		String message = "Yo! My req is " + name;
		model.addAttribute("message",message);
		return "helloworld";
	}
}
