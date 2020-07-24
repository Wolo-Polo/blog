package wolopolo.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import wolopolo.entities.Role;
import wolopolo.repositories.RoleRepository;

@Controller
public class RoleManager {
	@Autowired
	RoleRepository roleRepository;
	
	@GetMapping(value = "/admin/managerole")
	public String getManageRolePage(Model model) {
		model.addAttribute("roles", roleRepository.findAll());
		
		return "admin/managerole";
	}
	
	@GetMapping(value = "admin/addrole")
	public String getAddRole(Model model) {
		model.addAttribute("role", new Role());
		
		return "admin/addrole";
	}
	
	@PostMapping(value = "admin/saverole")
	public String saveRole(@ModelAttribute Role role) {
		roleRepository.save(role);
		
		return "redirect:/admin/managerole";
	}
	
	@GetMapping(value = "admin/editrole")
	public String getEditRolePage(Model model, @RequestParam("id") String id) {
		Role role = roleRepository.findById(Integer.valueOf(id)).get();

		model.addAttribute("role", role);
		
		return "admin/editrole";
	}
	
	@RequestMapping(value = "admin/deleterole")
	public String deleteRole(@RequestParam("id") String id) {
		Role role = roleRepository.findById(Integer.valueOf(id)).get();
//		role.setStatus(false);
//		roleRepository.save(role);
		roleRepository.delete(role);
		
		return "redirect:/admin/managerole";
	}
	
}
