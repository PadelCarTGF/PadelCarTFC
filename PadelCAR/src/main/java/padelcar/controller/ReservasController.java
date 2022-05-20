package padelcar.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/")
public class ReservasController {

	@RequestMapping(value = "/nuevaReserva", method = RequestMethod.GET)
	public ModelAndView visualizar() {
		ModelAndView model = new ModelAndView("nuevaReserva");
		model.addObject("nuevaReserva");
		return model;
	}
	
	
	@RequestMapping(value = {"/pagEnConstruccion"})
    public String pagEnConstruccion(Model model) {

        return "pagEnConstruccion";
    }
}
