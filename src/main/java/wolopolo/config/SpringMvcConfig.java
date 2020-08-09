package wolopolo.config;

import javax.servlet.http.HttpServletRequest;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

@Configuration // <-> Bean
@ControllerAdvice
@EnableWebMvc
@ComponentScan(basePackages = { "wolopolo" }) // <-> root package
public class SpringMvcConfig implements WebMvcConfigurer {

	/**
	 * Chỉ cho Controller biết nơi chứa các trang HTML.
	 * 
	 * @return
	 */
	@Bean(name = "viewResolver")
	public ViewResolver viewResolver() {
		InternalResourceViewResolver bean = new InternalResourceViewResolver();
		bean.setViewClass(JstlView.class);
		bean.setPrefix("/WEB-INF/views/");
		bean.setSuffix(".jsp");

		return bean;
	}

	/**
	 * Mapping JS và CSS. Notes: 1. classpath <-> src/main/resources
	 */
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/css/**").addResourceLocations("/resources/css/");
		registry.addResourceHandler("/admin/css/**").addResourceLocations("/resources/admin/css/");
		registry.addResourceHandler("/admin/summernote-0.8.18-dist/**")
				.addResourceLocations("/resources/admin/summernote-0.8.18-dist/");
		registry.addResourceHandler("/writer/css/**").addResourceLocations("/resources/admin/css/");
		registry.addResourceHandler("/writer/summernote-0.8.18-dist/**")
				.addResourceLocations("/resources/admin/summernote-0.8.18-dist/");

		registry.addResourceHandler("/js/**").addResourceLocations("/resources/js/");
		registry.addResourceHandler("/admin/js/**").addResourceLocations("/resources/admin/js/");
		registry.addResourceHandler("/writer/js/**").addResourceLocations("/resources/admin/js/");

		registry.addResourceHandler("/img/**").addResourceLocations("/resources/img/")
				.addResourceLocations("/data/img/");
		registry.addResourceHandler("/admin/img/**").addResourceLocations("/resources/admin/img/");
		registry.addResourceHandler("/admin/img/**").addResourceLocations("/data/img/");
		registry.addResourceHandler("/writer/img/**").addResourceLocations("/resources/admin/img/");
		registry.addResourceHandler("/writer/img/**").addResourceLocations("/data/img/");

	}

	@ExceptionHandler(value = Exception.class)
	public String defaultErrorHandler(HttpServletRequest req, Exception e) throws Exception {

		if (e instanceof org.springframework.web.servlet.NoHandlerFoundException) {
			// Otherwise setup and send the user to a default error-view.

			return "404";
		}  
		// Otherwise setup and send the user to a default
		return "redirect:/errorpage";
		

	}

}
