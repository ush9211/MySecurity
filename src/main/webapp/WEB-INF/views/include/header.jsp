<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>my blog</title>

    <link rel="icon" type="image/x-icon" href="res/images/favicon.ico">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="https://fonts.googleapis.com/css2?family=Hahmlet:wght@100..900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/remixicon/4.2.0/remixicon.min.css" integrity="sha512-MqL4+Io386IOPMKKyplKII0pVW5e+kb+PI/I3N87G3fHIfrgNNsRpzIXEi+0MQC0sR9xZNqZqCYVcC61fL5+Vg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="res/css/style.css">

    
    <script src="res/js/jquery.min.js"></script>
    <script src="res/js/scripts.js"></script>
</head>
<body>

    <!-- HEADER -->
    <header>
        <div class="logo">
            <a href="./"><img src="res/images/logo.png" alt="logo"></a>
        </div>
        <div class="signin text-center">
        
        	<sec:authorize access="!isAuthenticated()" >
	            <h3 class="mb-3">Sign In</h3>
	            <!-- 로그인 -->
	            <form name="form" action="${pageContext.request.contextPath }/" method="post">
	                <div class="mb-3">
	                    <input type="text" name="username" class="form-control" placeholder="username">
	                </div>
	                <div class="mb-3">
	                    <input type="password" name="password" class="form-control" placeholder="password">
	                </div>
                	<div class="my-2 text-end">
                    	<a href="#" class="signup">회원가입</a>
                	</div>
	                <div class="mb-2 text-end">
	                    <a href="#" class="find-id">아이디/패스워드 찾기</a>
	                </div>
	                <div class="d-grid">
	                    <button type="submit" class="btn logbtn"> LOGIN </button>
	                </div>
	                <input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" />
	            </form>
	            <!-- /로그인 -->
            </sec:authorize>
            
            <sec:authorize access="isAuthenticated()" >
	            <!-- 로그아웃 -->
	            환영합니다, <sec:authentication property="name" />님
	            
	            <sec:authentication property="principal.authorities" var="roles" />
	            	<c:forEach var="role" items="${roles }">
	            		<c:if test="${role.authority eq 'ADMIN' }">
	            			<p>관리자모드 입니다!</p>
            			</c:if>
           			</c:forEach>
	            
	            <form action="${pageContext.request.contextPath }/logout" method="post">
	            	<button type="submit" class="btn btn-secondary"> LOGOUT </button>
	                <input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" />
	            </form>
	            <!-- /로그아웃 -->
            </sec:authorize>
        </div>
        <nav>
            <ul class="main-nav mt-5">
                <li><a href="about">About Me</a></li>
                <li><a href="./">My Gallery</a></li>
                <li><a href="https://github.com/ush9211?tab=repositories" target="_blank">My Project</a></li>
                <li><a href="youtube">Youtube</a></li>
                <li><a href="contact">Contact Me</a></li>
            </ul>
        </nav>
        <div class="social">
            <a href="#" class="instagram"><i class="ri-instagram-fill"></i></a>
            <a href="#" class="youtube"><i class="ri-youtube-fill"></i></a>
            <a href="#" class="facebook"><i class="ri-facebook-box-fill"></i></a>
            <a href="#" class="kakaotalk"><i class="ri-kakao-talk-fill"></i></a>
        </div>
        <div class="copyright">
            Copyright &copy; USH's all right reserved.
        </div>
    </header>
    <div class="wrapper">
    <!-- /HEADER -->