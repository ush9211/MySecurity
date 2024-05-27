package net.pgush.config;

import javax.sql.DataSource;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration // Bean을 수동으로 등록하기 위해 클래스에 설정해줘야 하는 어노테이션
@EnableWebMvc // WebMvc를 사용할 수 있게 해주는 어노테이션
@ComponentScan("net") // net으로 시작하는 컴포넌트 들을 스캔하라는 어노테이션
public class MyAppConfig {

	@Bean
	InternalResourceViewResolver viewResolver() {
		
		InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
		
		// setPrefix : 실행할 파일 경로 설정
		viewResolver.setPrefix("/WEB-INF/views/");
		
		// setSuffix : 실행할 파일 확장자 설정
		viewResolver.setSuffix(".jsp");
		
		return viewResolver;
	}
	
	
	// DB연결 DataSource
	@Bean
	DataSource datasource() {
		
		DriverManagerDataSource driverManagerDataSource = new DriverManagerDataSource();
		
		driverManagerDataSource.setUrl("jdbc:mysql://localhost:3306/mydb?useUnicode=true&characterEncoding=utf-8");
		driverManagerDataSource.setUsername("root");
		driverManagerDataSource.setPassword("Utmdgml1004!");
		driverManagerDataSource.setDriverClassName("com.mysql.cj.jdbc.Driver");
		
		return driverManagerDataSource;
	}
	
	
	
	@Bean
	public JdbcTemplate jdbcTemplate(DataSource dataSource) {
		
		return new JdbcTemplate(dataSource);
	}
	
	
	
	@Bean
	PasswordEncoder getPasswordEncoder() {
		
		//return NoOpPasswordEncoder.getInstance();
		
		return new BCryptPasswordEncoder();
	}
	
	
	
}
