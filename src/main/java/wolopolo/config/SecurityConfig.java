package wolopolo.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;

import wolopolo.utils.NormalPasswordEncoder;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter{
	@Autowired
	private UserDetailsService userDetailsService;
	
	/**
	 * hàm này thực hiện kết nối giữa 2 Beans(AuthenticationManager và UserDetailsService).
	 * Lí do phải kết nối 2 Beans này vì cần cho AuthenticationManager biết nơi để
	 * xác thực và lấy quyền của người dùng.
	 * @param auth thực ra khi dùng @Autowired thì auth là bean được spring quản lí và add tham chiếu tới.
	 * @throws Exception 
	 */
	@Autowired public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
		// thực hiện gắn kết AuthenticationManager với UserDetailsService.  
		auth.userDetailsService(userDetailsService).passwordEncoder(new NormalPasswordEncoder());
	}
	
	/**
	 * định nghĩa lớp quản lí "Xác Thực" người dùng.
	 * @return
	 * @throws Exception
	 */
	@Bean
	public AuthenticationManager customAuthenticationManager() throws Exception {
        return authenticationManager();
    }
	
	
	/**
	 * đây là nơi thực hiện cấu hình bảo mật cho website.
	 */
	@Override
	protected void configure(final HttpSecurity http) throws Exception {
		http.csrf().disable().authorizeRequests() // thực hiện xác thực request ngưười dùng gửi lên.
			
			// không thực hiện xác thực đối với các ur/ này.
            .antMatchers("/css/**", "/js/**", "/img/**", "/vendor/**").permitAll()
            
            // thực hiện xác thực với các url kiểu ..../admin/....
            .antMatchers("/admin/**").hasAnyAuthority("admin")
            
            //thực hiện xác thực với các url kiểu .../writer/
            .antMatchers("/writer/**").hasAnyAuthority("admin", "writer")
            
            .and() // kết hợp với điều kiện.
            
            // khi click vào button logout thì không cần login.
            // khi click vào button này thì dữ liệu user trên session sẽ bị xoá.
            .logout()
            .logoutUrl("/perform_logout")
            .logoutSuccessUrl("/home")
            .invalidateHttpSession(true) // xoá hết dữ liệu trên seesion
            .deleteCookies("JSESSIONID") // xoá hết dữ liệu trên cokies.
            .permitAll()
            
            .and() // kết hợp với điều kiện.
            
            .formLogin() // thực hiện xác thực qua form(username và password)
            .loginPage("/login") // trang login do mình thiết kế.
            .loginProcessingUrl("/perform_login") // link action for form post.
            .defaultSuccessUrl("/home", true) // when user success authenticated then go to this url.
            .failureUrl("/login?login_error=true") // nhập username, password sai thì redirect về trang nào.
            .permitAll();
			
	}
	
}
