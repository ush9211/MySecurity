package net.pgush.config;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

@EnableWebSecurity(debug = true)
public class MySecurityConfig extends WebSecurityConfigurerAdapter {
	
	@Autowired
	private PasswordEncoder bcryptPasswordEncoder;
	// bcryptPasswordEncoder : 암호화기능
	
	
	@Autowired
	private DataSource dataSource;

	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
/*		
		auth
			.inMemoryAuthentication()
				.withUser("ush")
				.password("$2a$10$HSYO937DGSQtilBo3/6DIunhePZGvuB.dclq98TXN5DQ2LC/poxn6") // "1313"을 암호화 한것 (bcrypt-calculator)
				.roles("ADMIN");
*/		
		auth.jdbcAuthentication().dataSource(dataSource).passwordEncoder(bcryptPasswordEncoder);
		// .passwordEncoder(bcryptPasswordEncoder) : 암호화 설정
		
//			System.out.println("my password id crypt" + bcryptPasswordEncoder.encode("1313"));
	}
	
	
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {

		http
			// 승인요청
			.authorizeRequests()
			
		//		.antMatchers("/").permitAll() // 진입 페이지 공개
		//		.antMatchers("/hello").permitAll() // hello 페이지 공개
		//		.antMatchers("/bye").permitAll() // bye 페이지 공개
				
				.antMatchers("/member/**").authenticated()	// member폴더의 하위 페이지들은 인증필요
				.anyRequest().permitAll() // 모든 요청 공개
				.and()
				.formLogin().loginPage("/clogin").loginProcessingUrl("/")	// 로그인 커스터마이징
				.and()
				.logout().logoutUrl("/logout").logoutSuccessUrl("/").invalidateHttpSession(true).deleteCookies("JSESSIONID")
				.and()
				.httpBasic();
//				.logoutUrl("/member/bye")	// logoutUrl : 로그아웃을 수행할 URL을 지정
//				.logoutSuccessUrl("/bye?logout")	// logoutSuccessUrl : 로그아웃 성공하면 리다이렉션 될 URL
//				.deleteCookies("JSESSIONID")	// deleteCookies : 삭제할 쿠키이름 (기본값 - 자동으로 됨)
//				.invalidateHttpSession(true);	// invalidateHttpSession : 기존 세션 무효화 (기본값 - 자동으로 됨)
	}
	
}
