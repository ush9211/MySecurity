<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>중복체크</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
	<style>
		.logbtn{
		    background:  rgba(231, 96, 43, 0.7);
		    color: #fff;
		    transition: all 300ms;
		}
		.logbtn:hover{
		    background:  rgba(231, 96, 43, 1);
		    color: #fff;
		}
	</style>
	<script src="res/js/jquery.min.js"></script>   
	<script>
		$(function(){
			$(".thisclose").click(function(){
				self.close();
			});
		});
	</script> 
</head>
<body>
	<div class="checkbox m-5 p-5 border">
		
		<form name="checkform" action="check" id="checkform" method="post">
			<input type="text" name="usearch" class="form-control" id="usearch" value="${param.usearch }"/>
			<input type="hidden" name="check" id="check" value="${param.check }">
			<div class="mt-3 text-center">
				<button type="button" class="thisclose btn btn-secondary me-2">닫기</button>
				<button type="submit" class="btn logbtn ms-2">중복 확인</button>
			</div>
			<!-- security 를 이용해 쓸때는 form을 보낼때 토큰값을 무조건 같이 보내야함 -->
			<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" />
		</form>
	</div>
</body>
</html>