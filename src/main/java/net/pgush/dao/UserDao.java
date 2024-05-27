package net.pgush.dao;

import java.util.List;

import net.pgush.model.UserDto;

public interface UserDao {

	// 회원 가입
	public int insertUser(UserDto dto);
	
	// 회원 수정
	public int updateUser(UserDto dto);
	
	// 회원 삭제
	public int deleteUser(String username);
	
	// 회원 전체 조회
	public List<UserDto> selectUser();
	
	// 회원 한명만 조회
	public UserDto selectOneUser(String username);
	
	// 아이디, 이메일 검증
	public int isUser(int usertype, String usearch);
}
