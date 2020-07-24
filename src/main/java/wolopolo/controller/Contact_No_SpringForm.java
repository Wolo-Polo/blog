package wolopolo.controller;

import java.time.LocalDateTime;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;


import wolopolo.entities.Contact;
import wolopolo.repositories.ContactRepository;


@Controller
public class Contact_No_SpringForm {
	
	@Autowired
	ContactRepository contactRepository;
	
	@GetMapping(value = "/contact_no_springform")
	public String getContactNoSpringForm(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) {
		return "contact_no_springform";
	}
	
	@PostMapping("/contact_no_springform")
	public void processContactNoSpringForm(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse,@RequestBody Map<String, String> data) {
		
		String name= (String) data.get("name");
		System.out.println("Tên của người gửi là: "+ name);
		
		Contact contact= new Contact();
		//contact.setId(1);
		contact.setUserName(data.get("name"));
		contact.setEmail(data.get("email"));
		contact.setMessenge(data.get("messenge"));
		contact.setSend_date(LocalDateTime.now());
		contactRepository.save(contact);
	}
}	
