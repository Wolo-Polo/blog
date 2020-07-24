package wolopolo.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import wolopolo.entities.User;
import wolopolo.repositories.RoleRepository;
import wolopolo.repositories.UserRepository;
import wolopolo.utils.FileUtils;

@Controller
public class UserManager {
	@Autowired
	UserRepository userRepository;
	@Autowired
	RoleRepository roleRepository;

	@GetMapping(value = "/admin/manageuser")
	public String getManageUserPage(Model model) {
		model.addAttribute("users", userRepository.findAll());

		return "admin/manageuser";
	}

	@GetMapping(value = "/admin/adduser")
	public String getAddUserPage(Model model) {
		model.addAttribute("user", new User());
		model.addAttribute("roles", roleRepository.findAll());

		return "admin/adduser";
	}

	@PostMapping(value = "/admin/saveuser")
	public String saveUser(@ModelAttribute User user, @RequestParam("avatar") MultipartFile multipartFile) {
		if (user.getId() != null) {
			User oldUser = userRepository.findById(user.getId()).get();
			FileUtils.doDeleteFile("src/main/webapp/data/img/user/" + oldUser.getUrlimg());
		}

		user.setUrlimg(multipartFile.getOriginalFilename());
		FileUtils.doUploadFile("src/main/webapp/data/img/user", multipartFile);
		userRepository.save(user);

		return "redirect:/admin/manageuser";
	}

	@GetMapping(value = "admin/edituser")
	public String getEditUserPage(Model model, @RequestParam("id") String id) {
		User user = userRepository.findById(Integer.valueOf(id)).get();

		model.addAttribute("user", user);
		model.addAttribute("roles", roleRepository.findAll());
		
		
		return "admin/edituser";
	}

	@RequestMapping(value = "admin/deleteuser")
	public String deleteUser(@RequestParam("id") String id) {
		User user = userRepository.findById(Integer.valueOf(id)).get();
//		user.setStatus(false);
//		userRepository.save(user);
		userRepository.delete(user);

		return "redirect:/admin/manageuser";
	}
}
