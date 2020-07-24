package wolopolo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import wolopolo.entities.Post;
import wolopolo.entities.User;
import wolopolo.repositories.PostRepository;
import wolopolo.repositories.UserRepository;

@Controller
public class HomeController {
	
	@Autowired
	PostRepository postRepository;
	@Autowired
	UserRepository userRepository;
	
	@RequestMapping(value = {"home", "/"}, method = RequestMethod.GET)
	public String getHome(Model model){
		model.addAttribute("toppost", postRepository.findTopPost());
		model.addAttribute("topuser", postRepository.findAll());
		
		return "index";
	}
	
	
	@RequestMapping(value = {"login"}, method = RequestMethod.GET)
	public String getLogin(){
		return "login";
	}
	
	@RequestMapping(value = {"passwordrecovery"}, method = RequestMethod.GET)
	public String getPasswordRecovery(){
		return "passwordrecovery";
	}
	
	@RequestMapping(value = {"register"}, method = RequestMethod.GET)
	public String getRegister(){
		return "register";
	}
	
	@RequestMapping(value = {"/search"}, method = RequestMethod.GET)
	public String getResultSearch(Model model, @RequestParam String keyWord){
		model.addAttribute("posts", postRepository.searchPost(keyWord));
		model.addAttribute("keyWord", keyWord);
		
		return "searchpost";
	}
	
	@RequestMapping("/post/{id}")
	public String getDetailPost(@PathVariable("id") String idPost, Model model) {
		Post post= postRepository.findById(Integer.valueOf(idPost)).get();
		
		if(post==null) {
			return "404";
		}
		model.addAttribute("post", post);
		
		return "detailpost";
	}
	
	@RequestMapping("/writer")
	public String getWriterPage(Model model) {
		List<User> users= userRepository.findUsersByRole("writer");//user ở đây có vai trò là ng viết
		model.addAttribute("users", users);
		return "writer";
	}
	
	@RequestMapping("/posts/writer/{iduser}")
	public String getListPostOfWriter(Model model, @PathVariable("iduser") String iduser) {
		List<Post> posts= postRepository.findPostByWriterId(iduser);
		model.addAttribute("posts", posts);
		
		return "listpostofwriter";
	}
	
	@RequestMapping("/posts/category/{idcategory}")
	public String getListPostOfCategory(Model model, @PathVariable("idcategory") String idcategory) {
		List<Post> posts= postRepository.findPostByCategoryId(idcategory);
		model.addAttribute("posts", posts);
		
		return "listpostofwriter";
	}
	
}
