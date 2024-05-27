package net.pgush.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import net.pgush.model.UserDto;

@Repository
public class UserDaoImpl implements UserDao {
	
	@Autowired
	private JdbcTemplate jdbcTemplate;

	
	
	
	// 회원 가입
	@Override
	public int insertUser(UserDto dto) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	
	

	// 회원 수정
	@Override
	public int updateUser(UserDto dto) {
		// TODO Auto-generated method stub
		return 0;
	}

	
	
	
	// 회원 삭제
	@Override
	public int deleteUser(String username) {
		// TODO Auto-generated method stub
		return 0;
	}

	
	
	
	// 회원 전체 조회
	@Override
	public List<UserDto> selectUser() {
		// TODO Auto-generated method stub
		return null;
	}

	
	
	
	// 회원 한명만 조회
	@Override
	public UserDto selectOneUser(String username) {
		// TODO Auto-generated method stub
		return null;
	}

	
	
	// 아이디, 이메일 검증
	@Override
	public int isUser(int usertype, String usearch) {

		String sql = "";
		
		// 아이디 검증
		if(usertype == 1) {
			
			sql = "SELECT COUNT(*) FROM users WHERE username=?";
			
		// 이메일 검증
		}else {
			
			sql = "SELECT COUNT(*) FROM users WHERE useremail=?";
			
		}
		
		return jdbcTemplate.queryForObject(sql, new Object[] {usearch}, Integer.class);
	}

}
