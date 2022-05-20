package padelcar.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/")
public class VentajasController {

	@RequestMapping(value = "/ventajas", method = RequestMethod.GET)
	public ModelAndView visualizar() {
		ModelAndView model = new ModelAndView("ventajas");
		model.addObject("ventajas");
		return model;
	}
}
