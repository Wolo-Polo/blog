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

import wolopolo.entities.Category;
import wolopolo.repositories.CategoryRepository;
import wolopolo.utils.FileUtils;

@Controller
public class CategoryManager {
	@Autowired
	CategoryRepository categoryRepository;
	
	@GetMapping(value = "admin/managecategory")
	public String getManageCategoryPage(Model model) {
		model.addAttribute("categories", categoryRepository.findAll());
		
		return "admin/managecategory";
	}
	
	@GetMapping(value = "admin/addcategory")
	public String getAddCategory(Model model) {
		model.addAttribute("category", new Category());
		
		return "admin/addcategory";
	}
	
	@PostMapping(value = "admin/savecategory")
	public String saveCategory(@ModelAttribute Category category, @RequestParam("avatar") MultipartFile multipartFile) {
		if(category.getId()!= null) {
			Category oldCategory = categoryRepository.findById(category.getId()).get();
			FileUtils.doDeleteFile("src/main/webapp/data/img/category/"+oldCategory.getUrlimg());
		}
		
		category.setUrlimg(multipartFile.getOriginalFilename());
		FileUtils.doUploadFile("src/main/webapp/data/img/category", multipartFile);
		categoryRepository.save(category);
		
		return "redirect:/admin/managecategory";
	}
	
	@GetMapping(value = "admin/editcategory")
	public String getEditCategoryPage(Model model, @RequestParam("id") String id) {
		Category category = categoryRepository.findById(Integer.valueOf(id)).get();

		model.addAttribute("category", category);
		
		return "admin/editcategory";
	}
	
	@RequestMapping(value = "admin/deletecategory")
	public String deleteCategory(@RequestParam("id") String id) {
		Category category = categoryRepository.findById(Integer.valueOf(id)).get();
//		category.setStatus(false);
//		categoryRepository.save(category);
		categoryRepository.delete(category);
		
		return "redirect:/admin/managecategory";
	}
}
