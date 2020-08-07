package wolopolo.controller.writer;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import wolopolo.entities.Post;
import wolopolo.entities.User;
import wolopolo.repositories.PostRepository;
import wolopolo.repositories.UserRepository;

@Controller
public class WriterController {
	@Autowired
	private UserRepository userRepository;
	@Autowired
	private PostRepository postRepository;
	
	@GetMapping("/writer")
	public String getWriterPage(Model model, Principal principal) {
		String username= principal.getName();
		User user= userRepository.findUserByName(username);
		List<Post> posts= postRepository.findPostByWriterId(String.valueOf(user.getId()));
		model.addAttribute("posts", posts);
		
		return "writer/index";
	}
}
