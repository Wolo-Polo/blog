package wolopolo.controller.writer;

import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

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
import wolopolo.entities.User;
import wolopolo.repositories.CategoryRepository;
import wolopolo.repositories.PostRepository;
import wolopolo.repositories.UserRepository;
import wolopolo.utils.FileUtils;

@Controller
public class PostManagerForWriter {
	@Autowired
	private PostRepository postRepository;
	@Autowired
	private CategoryRepository categoryRepository;
	@Autowired
	private UserRepository userRepository;
	
	@GetMapping(value = "writer/managepost")
	public String managePost(Model model, Principal principal) {
		String username= principal.getName();
		User user=userRepository.findUserByName(username);
		model.addAttribute("posts", postRepository.findPostByWriterId(String.valueOf(user.getId())));
		
		return "writer/managepost";
	}
	
	@RequestMapping(value = {"writer/addpost"}, method = RequestMethod.GET)
	public String getAddPostPage(Model model, Principal principal){
		model.addAttribute("categories", categoryRepository.findAll());
		model.addAttribute("post", new Post());
		
		String username= principal.getName();
		User user=userRepository.findUserByName(username);
		List<User> users= new ArrayList<>();
		users.add(user);
		model.addAttribute("users", users);
		
		return "writer/addpost";
	}
	@RequestMapping(value = {"writer/savepost"}, method = RequestMethod.POST)
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
		
		return "redirect:/writer/managepost";
	}
	
	@GetMapping(value = "writer/editpost")
	public String getEditPostPage(Model model, @RequestParam("id") String id, Principal principal) {
		Post post = postRepository.findById(Integer.valueOf(id)).get();
		
		//kiểm tra xem đúng post của user này không?! nếu đúng thì mới dc sửa hoặc xóa
		String username1=post.getUser().getName();
		String username2=principal.getName();
		if (username1.equals(username2)) {
			model.addAttribute("post", post);
			model.addAttribute("categories", categoryRepository.findAll());
			List<User> users= new ArrayList<>();
			users.add(userRepository.findUserByName(username1));
			model.addAttribute("users", users);

			return "writer/editpost";
		}
		
		return "redirect:/writer/managepost";
	}
	
	@RequestMapping(value = "writer/deletepost")
	public String deletePost(@RequestParam("id") String id, Principal principal) {
		Post post = postRepository.findById(Integer.valueOf(id)).get();
//		post.setStatus(false);
//		postRepository.save(post);
		
		String username1=post.getUser().getName();
		String username2=principal.getName();
		if (username1.equals(username2)) {
			postRepository.delete(post);
		}
		
		return "redirect:/writer/managepost";
	}
}
