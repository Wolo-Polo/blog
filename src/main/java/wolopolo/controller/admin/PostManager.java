package wolopolo.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import wolopolo.entities.Post;
import wolopolo.repositories.CategoryRepository;
import wolopolo.repositories.PostRepository;
import wolopolo.repositories.UserRepository;
import wolopolo.utils.FileUtils;

@Controller
public class PostManager {
	@Autowired
	private PostRepository postRepository;
	@Autowired
	private CategoryRepository categoryRepository;
	@Autowired
	private UserRepository userRepository;
	
	@GetMapping(value = "admin/managepost")
	public String managePost(Model model) {
		model.addAttribute("posts", postRepository.findAll());
		
		return "admin/managepost";
	}
	
	@RequestMapping(value = {"admin/addpost"}, method = RequestMethod.GET)
	public String getAddPostPage(Model model){
		model.addAttribute("categories", categoryRepository.findAll());
		model.addAttribute("post", new Post());
		model.addAttribute("users", userRepository.findAll());
		
		
		return "admin/addpost";
	}
	@RequestMapping(value = {"admin/savepost"}, method = RequestMethod.POST)
	public String savePostPage(@ModelAttribute Post post, Model model, @RequestParam("fileavatar") MultipartFile fileavatar){
		if(post.getId()!= null) {
			Post oldPost = postRepository.findById(post.getId()).get();
			FileUtils.doDeleteFile("src/main/webapp/data/img/post/"+oldPost.getUrlimg());
		}
		
		post.setUrlimg(fileavatar.getOriginalFilename());
		boolean statusUploadFile= FileUtils.doUploadFile("src/main/webapp/data/img/post",fileavatar);
		Object ob=postRepository.save(post);
		if(ob!=null && statusUploadFile==true) model.addAttribute("status", "success");
		else model.addAttribute("status", "fail");
		
		return "redirect:/admin/managepost";
	}
	
	@GetMapping(value = "admin/editpost")
	public String getEditPostPage(Model model, @RequestParam("id") String id) {
		Post post = postRepository.findById(Integer.valueOf(id)).get();

		model.addAttribute("post", post);
		model.addAttribute("categories", categoryRepository.findAll());
		model.addAttribute("users", userRepository.findAll());
		
		return "admin/editpost";
	}
	
	@RequestMapping(value = "admin/deletepost")
	public String deletePost(@RequestParam("id") String id) {
		Post post = postRepository.findById(Integer.valueOf(id)).get();
//		post.setStatus(false);
//		postRepository.save(post);
		postRepository.delete(post);
		
		return "redirect:/admin/managepost";
	}
}
