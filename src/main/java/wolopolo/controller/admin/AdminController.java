package wolopolo.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import wolopolo.repositories.PostRepository;

@Controller
public class AdminController {
	@Autowired
	private PostRepository postRepository;
//	@Autowired
//	private CategoryRepository categoryRepository;
//	@Autowired
//	private UserRepository userRepository;
	
	@RequestMapping(value = {"admin/index", "admin"}, method = RequestMethod.GET)
	public String getAdmin(Model model){
		model.addAttribute("posts", postRepository.findAll());
		
		return "admin/index";
	}
	
	
}
