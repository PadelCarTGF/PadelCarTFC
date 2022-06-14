package padelcar.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/")
public class ContactoController {
	LoginController lC = new LoginController();

	@RequestMapping(value = "/contacto", method = RequestMethod.GET)
	public ModelAndView visualizar() {
		int cliId = lC.getIdClient(); // Variable que retorna Login en caso de iniciar sesion
		   							// Devuelve 0 si el usuario no ha iniciado sesion
		System.out.println(cliId);
		if (cliId > 0) {
			ModelAndView model = new ModelAndView("contacto");
			return model.addObject("contacto");
		}else {
			ModelAndView model = new ModelAndView("contacto");
			return model.addObject("contacto");
		}
	}
}
