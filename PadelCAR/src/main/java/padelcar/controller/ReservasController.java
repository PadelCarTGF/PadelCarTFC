package padelcar.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import padelcar.model.Reserva;
import padelcar.service.IClienteService;
import padelcar.service.IReservaService;

@Controller
@RequestMapping(value = "/")
public class ReservasController {
	
	LoginController lC = new LoginController();

	@Autowired
	IReservaService reservaService;
	
	@Autowired 
	IClienteService clienteService;

	// Nueva Reserva
	@RequestMapping(value = "/nuevaReserva", method = RequestMethod.GET)
	public ModelAndView visualizar() {
		ModelAndView model = new ModelAndView("nuevaReserva");
		Reserva reserva = new Reserva();
		model.addObject("reservaForm", reserva);

		return model;
	}

	// GUARDAR
	@RequestMapping(value = "nuevaReserva/guardar", method = RequestMethod.POST)
	public ModelAndView save(@ModelAttribute("reservaForm") Reserva reserva) {
		reservaService.saveOrUpdate(reserva);

		return new ModelAndView("redirect:/modificarReserva");
	}

	// Actualizar o Modificar reserva
	@RequestMapping(value = "reserva/update/{id}", method = RequestMethod.GET)
	public ModelAndView update(@PathVariable("id") int id) {
		ModelAndView model = new ModelAndView("nuevaReserva");
		Reserva reserva = reservaService.findReservaById(id);
		model.addObject("reservaForm", reserva);

		return model;
	}

	// Listar todas las reservas
	@RequestMapping(value = "/modificarReserva", method = RequestMethod.GET)
	public ModelAndView list() {
		ModelAndView model = new ModelAndView("modificarReserva");
		LoginController lC = new LoginController();
		int cliente_id = lC.getIdClient();
		
		List<Reserva> list = reservaService.listReservas();
		List<Reserva> listFilter = new ArrayList<Reserva>();
		
		for (Reserva res : list) {
			if (res.getCliente_id() == cliente_id) {
				listFilter.add(res);
			}
		}
		model.addObject("list", listFilter);

		return model;
	}

	// Eliminar reserva
	@RequestMapping(value = "reserva/delete/{id}", method = RequestMethod.GET)
	public ModelAndView delete(@PathVariable("id") int id) {
		reservaService.deleteReserva(id);

		return new ModelAndView("redirect:/modificarReserva");
	}

}
