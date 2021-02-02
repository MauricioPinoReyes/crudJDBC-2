package cl.crudjdbc2.controlador;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cl.crudjdbc2.dao.ContactosDao;
import cl.crudjdbc2.modelo.Contactos;

@Controller
public class ContactosControlador {

	@Autowired
	ContactosDao cd;
	
	
	@RequestMapping("/listaContactos")
	public String veritems(Model m) {
		List<Contactos> lContactos = cd.getContactos();		
		m.addAttribute("contactosLista", lContactos);
		return "listado-contactos";
	}
	
	
	@RequestMapping("/editarContacto/{contactoid}")
	public String ediContacto(@PathVariable int contactoid, Model m) {
		List<Contactos> lContactos = cd.getContactos();
		Contactos contacto = new Contactos();
		
		for (int i=0;i<lContactos.size();i++) {
			if (lContactos.get(i).getId() == contactoid) {
				contacto = lContactos.get(i);
			}
		}
				
		m.addAttribute("command", contacto);
		return "contactoEdit-form";
	}
	
	@RequestMapping("/nuevoContacto")
	public String newContacto(Model m) {
		m.addAttribute("command", new Contactos());
		return "contacto-form";
	}
	
	@RequestMapping(value="saveContacto", method=RequestMethod.POST)
	public String newContactoSave(@ModelAttribute("contac") Contactos contac) {
		cd.guardarContacto(contac);
		return "redirect:/listaContactos";
	}
	
	
	
	@RequestMapping(value="actualizaContacto", method=RequestMethod.POST)
	public String editContactioSave(@ModelAttribute("contac") Contactos contac) {
		cd.editarContacto(contac);
		return "redirect:/listaContactos";
	}
	
}
