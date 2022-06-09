package padelcar.controller;

import java.sql.Date;
import java.sql.Time;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import padelcar.model.Reserva;
import padelcar.service.IReservaService;

@Controller
@RequestMapping(value = "/")
public class ReservasController {

	IReservaService reservaService;

	@RequestMapping(value = "/nuevaReserva", method = RequestMethod.GET)
	public ModelAndView visualizar() {
		ModelAndView model = new ModelAndView("nuevaReserva");
		Reserva reserva = new Reserva();
		model.addObject("reservaForm", reserva);
		return model;
	}
	
	
	//LISTA CON TODAS LAS RESERVAS
	
	@RequestMapping(value = "nuevaReserva/getAll", method = RequestMethod.GET)
	public List<Reserva> todasReservas() {
		return reservaService.listReservas();
	} 
	
	
	//GUARDAR
	
	@RequestMapping(value = "nuevaReserva/guardar", method = RequestMethod.POST)
	public void save(@ModelAttribute("reservaForm") Reserva reserva) {
		reservaService.save(reserva);
	}
	
	
	
	@RequestMapping(value = "/modificarReserva", method = RequestMethod.GET)
    public ModelAndView modificarReserva() {
		ModelAndView model = new ModelAndView("modificarReserva");
		Reserva reserva = new Reserva();
		model.addObject("modifForm", reserva);
		
        return model;
    }
	
	
	
	@RequestMapping(value = "reserva/{id}", method = RequestMethod.GET)
	public void reservaPor(int cliente_id) {
		reservaService.findByCliente_Id(cliente_id);
	}
	
	@RequestMapping(value = "/modificarReserva/{cliente_id}, {date}, {time}", method = RequestMethod.PUT)
	public @ResponseBody Reserva updateReserva(@PathVariable("cliente_id") int cliente_id, @PathVariable("date") Date fecha,
			@PathVariable("time") Time hora, String nombrePista, int numJugadores) {
		Reserva reserva = reservaService.findByCliente_idAndFechaAndHora(cliente_id, fecha, hora);
		reserva.setFecha(fecha);
		reserva.setHora(hora);
		reserva.setNombre_pista(nombrePista);
		reserva.setNum_jugadores(numJugadores);
		reservaService.save(reserva);
		
		return reserva;
		
	}
}
