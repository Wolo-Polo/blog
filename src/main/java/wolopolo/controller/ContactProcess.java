package wolopolo.controller;


import java.time.LocalDateTime;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import wolopolo.entities.Contact;
import wolopolo.repositories.ContactRepository;


@Controller
public class ContactProcess {
	@Autowired
	private ContactRepository contactRepository;
	
	@RequestMapping(value = {"contact"}, method = RequestMethod.GET)
	public String getContact(Model model){
		
		model.addAttribute("datacontact", new Contact());
		return "contact";
	}
	
	@RequestMapping(value = "contact", method = RequestMethod.POST)
	public String saveContact(@ModelAttribute("datacontact") Contact contact, Model model) {
		contact.setSend_date(LocalDateTime.now());
		contactRepository.save(contact);
		
		model.addAttribute("messenger", "success");
		
		
		return "contact";
	}
}
