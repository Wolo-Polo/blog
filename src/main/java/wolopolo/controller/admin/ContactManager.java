package wolopolo.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import wolopolo.repositories.ContactRepository;

@Controller
public class ContactManager {
	@Autowired
	ContactRepository contactRepository;
	
	@GetMapping(value = "/admin/managecontact")
	public String getManageContactPage(Model model) {
		model.addAttribute("contacts", contactRepository.findAll());
		
		return "admin/managecontact";
	}
}
