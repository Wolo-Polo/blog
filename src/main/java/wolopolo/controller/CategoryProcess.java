package wolopolo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import wolopolo.repositories.CategoryRepository;

@Controller
public class CategoryProcess {
	@Autowired
	private CategoryRepository categoryRepository;
	
	@RequestMapping(value = {"category"}, method = RequestMethod.GET)
	public String getCategory(Model model) {
		model.addAttribute("categories", categoryRepository.findAll());
		
		return "category";
	}
	
}
