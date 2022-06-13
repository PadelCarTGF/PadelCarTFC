package padelcar.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import padelcar.model.Cliente;
import padelcar.service.IClienteService;

@Controller
@RequestMapping(value = "/")
public class ClienteController {
	
	@Autowired
	IClienteService clienteService;

	@RequestMapping(value = "clientes", method = RequestMethod.GET)
	public ModelAndView add() {
		ModelAndView model = new ModelAndView("clienteAlta");
		Cliente cliente = new Cliente();
		model.addObject("clienteForm", cliente);

		return model;
	}

	@RequestMapping(value = "cliente/save", method = RequestMethod.POST)
	public ModelAndView save(@ModelAttribute("clienteForm") Cliente cliente) {
		clienteService.saveOrUpdate(cliente);

		return new ModelAndView("redirect:/ventajas");
	}
	

}
