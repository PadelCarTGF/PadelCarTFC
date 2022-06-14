package padelcar.controller;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import padelcar.model.Cliente;
import padelcar.service.IClienteService;

@Controller
@RequestMapping(value = "/")
public class LoginController {
	
	@Autowired
	IClienteService clienteService;
	
	private static int idCliente;
	
	@RequestMapping(value = "login")
	public String inicio(Model model) {
		return "login";
	}
	
	@RequestMapping(value = "nuevaReserva", method = RequestMethod.POST)	
	public String validateUser(@Valid Cliente cliente, BindingResult result, Model model, HttpServletRequest request) {
		model.addAttribute("cliente", new Cliente());
		if (result.hasErrors()) {
			return "redirect:/login";
		} else {
		
			Cliente client = clienteService.findClienteByEmailandPass(cliente.getEmail(), cliente.getPassword());		
			
			if (client == null) {
				return "redirect:/login?error=true";
				
			}else {
				request.getSession().setAttribute("correo", "Bienvenid@ " + request.getParameter("email"));		
				idCliente =client.getId();
				request.getSession().setAttribute("id_cli", idCliente);		

				if (idCliente > 0) {
					return "redirect:/nuevaReserva?valor=true";
				}else {
					return "redirect:/nuevaReserva";
				}	
			}
		}
	}

	public int getIdClient() {
		if (idCliente > 0) {
			return idCliente;
		}else {
			return 0;
		}		
	}

}