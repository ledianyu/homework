<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!doctype html>
<html lang="en" data-bs-theme="auto">
	<head>
	    <meta charset="utf-8" />
	    <meta name="viewport" content="width=device-width, initial-scale=1" />
	    <meta name="description" content="" />
	    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors" />
	    <meta name="generator" content="Astro v5.13.2" />
	    <meta name="theme-color" content="#712cf9" />
	    
	    <title>제대로 수학</title>
	    
	    <link rel="canonical" href="https://getbootstrap.com/docs/5.3/examples/sign-in/" />
	    <script src="/js/bootstrap/js/color-modes.js"></script>
	    <link href="/js/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
	    <link href="/css/common/sign-in.css" rel="stylesheet" />
	    <script src="/js/jquery-3.7.1.min.js"></script>

		<script type="text/javaScript" language="javascript" defer="defer">
			$(function(){
				/* 로그인 버튼 클릭 시 */
				$('#btnLogin').on('click', function(){
					if($.trim($('#loginUserId').val())=='') {
						alert('아이디는 필수 입력입니다.');
						$('#loginUserId').focus();
						return;
					} else if($.trim($('#logInPassword').val())=='') {
						alert('비밀번호는 필수 입력입니다.');
						$('#logInPassword').focus();
						return;
					}
					
					var form = document.loginForm;
					form.action = "<c:url value='/login'/>";
				   	form.submit();
				});
				
				/* 아이디 입력란 enter 시 */
				$('#loginUserId').on('keydown', function(e) {
					if(e.keyCode==13) {
						e.preventDefault();
						if($('#logInPassword').val()=='')
							$('#logInPassword').focus();
						else
							$('#btnLogin').trigger('click');
					}
				});
				
				/* 비밀번호 입력란 enter 시 */
				$('#logInPassword').on('keydown', function(e) {
					if(e.keyCode==13) {
						e.preventDefault();
						$('#btnLogin').trigger('click');
					}
				});
				
				/* 로그인 처리 결과 있으면 */
				if(!${empty loginResult}) { 
					alert('${loginResult}'); 
				} 
				
			});
		</script>
	</head>
	<body class="d-flex align-items-center py-4 bg-body-tertiary content-center">
		<main class="form-signin w-100 m-auto">
			<form:form commandName="paramMap" name="loginForm" method="post">
				<img class="mb-4" src="/images/logo_s_b.png" alt="" width="350" height="138" />
				<div class="form-floating">
					<input type="text" class="form-control" id="loginUserId" name="loginUserId" placeholder="loginId" value="sysadmin"/>
					<label for="floatingInput">Login ID</label>
				</div>
				<div class="form-floating">
					<input type="password" class="form-control" id="logInPassword" name="logInPassword" placeholder="Password" value="1234"/>
					<label for="floatingPassword">Password</label>
				</div>
		        <button class="btn btn-primary w-100 py-2" type="button" id="btnLogin">Sign in</button>
			</form:form>
	    </main>
	</body>
</html>
