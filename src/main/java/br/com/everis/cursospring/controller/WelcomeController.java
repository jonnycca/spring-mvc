package br.com.everis.cursospring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class WelcomeController {

	@GetMapping(value = "/principal")
	public String welcome() {
		return "redirect:/usuario/todos";
	}
	
	
	@GetMapping(value = "/teste")
	public String teste() {
		/*ModelAndView view = new ModelAndView("welcome");
		view.addObject("teste", "Ola, sou o spring mvc");
		return view;*/
		return "redirect:/usuario/todos";
	}
	
}
