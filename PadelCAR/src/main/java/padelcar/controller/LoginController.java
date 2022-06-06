package padelcar.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import padelcar.model.Cliente;
import padelcar.service.IClienteService;

@Controller
@RequestMapping(value = "/")
public class LoginController {
	
	@Autowired
	IClienteService clienteService;

	@RequestMapping(value = "login")
	public String inicio(Model model) {
		return "login";
	}
	
	@RequestMapping(value = "nuevaReserva", method = RequestMethod.POST)	
	public String validateUser(@Valid Cliente cliente, BindingResult result, Model model) {
		model.addAttribute("cliente", new Cliente());
		if (result.hasErrors()) {
			return "redirect:/login";
		} else {
		
			Cliente cliEmail = clienteService.findClienteByEmail(cliente.getEmail());		
			Cliente cliPass = clienteService.findClienteByPassword(cliente.getPassword());
			
			if (cliEmail == null || cliPass == null) {
				return "redirect:/login";
				
			}else if(cliEmail.getId() == cliPass.getId()) {
				return "nuevaReserva";
			}else {
				return "redirect:/login";
			}
		}
	}
}