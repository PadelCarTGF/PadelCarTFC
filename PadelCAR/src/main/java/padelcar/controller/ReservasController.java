package padelcar.controller;

import java.sql.Date;
import java.sql.Time;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import padelcar.model.Cliente;
import padelcar.model.Reserva;
import padelcar.service.ClienteServiceImpl;
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

//	@RequestMapping(value = "/nuevaReserva", method = RequestMethod.GET)
//	public ModelAndView visualizar() {
//		ModelAndView model = new ModelAndView("nuevaReserva");
//		model.addObject("nuevaReserva");
//		return model;
//	}

	// LISTA CON TODAS LAS RESERVAS

//	@RequestMapping(value = "nuevaReserva/getAll", method = RequestMethod.GET)
//	public List<Reserva> todasReservas() {
//		return reservaService.listReservas();
//	}
//	

//	@RequestMapping(value = "/modificarReserva", method = RequestMethod.GET)
//    public ModelAndView modificarReserva() {
//		ModelAndView model = new ModelAndView("modificarReserva");
//		Reserva reserva = new Reserva();
//		model.addObject("modifForm", reserva);
//		
//        return model;
//    }


//	@RequestMapping(value = "reserva/{id}", method = RequestMethod.GET)
//	public void reservaPor(int cliente_id) {
//		reservaService.findByCliente_Id(cliente_id);
//	}

//	@RequestMapping(value = "/modificarReserva/{cliente_id}, {date}, {time}", method = RequestMethod.PUT)
//	public @ResponseBody Reserva updateReserva(@PathVariable("cliente_id") int cliente_id, @PathVariable("date") Date fecha,
//			@PathVariable("time") Time hora, String nombrePista, int numJugadores) {
//		Reserva reserva = reservaService.findByCliente_idAndFechaAndHora(cliente_id, fecha, hora);
//		reserva.setFecha(fecha);
//		reserva.setHora(hora);
//		reserva.setNombre_pista(nombrePista);
//		reserva.setNum_jugadores(numJugadores);
//		reservaService.save(reserva);
//		
//		return reserva;
//
//	}

	// Nueva Reserva
	@RequestMapping(value = "/nuevaReserva", method = RequestMethod.GET)
	public ModelAndView visualizar() {
		ModelAndView model = new ModelAndView("nuevaReserva");
		Reserva reserva = new Reserva();
		model.addObject("reservaForm", reserva);
		
		int cliId = lC.enviarId(); // Variable que retorna Login en caso de iniciar sesion
								   // Devuelve 0 si el usuario no ha iniciado sesion
		
		return model;
	}

	// GUARDAR

	@RequestMapping(value = "nuevaReserva/guardar", method = RequestMethod.POST)
	public ModelAndView save(@ModelAttribute("reservaForm") Reserva reserva) {
		reservaService.saveOrUpdate(reserva);

		return new ModelAndView("redirect:/modificarReserva");
	}

//Actualizar o Modificar reserva
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
		List<Reserva> list = reservaService.listReservas();
		model.addObject("list", list);

		return model;
	}

	// Eliminar reserva
	@RequestMapping(value = "reserva/delete/{id}", method = RequestMethod.GET)
	public ModelAndView delete(@PathVariable("id") int id) {
		reservaService.deleteReserva(id);

		return new ModelAndView("redirect:/modificarReserva");
	}

}
