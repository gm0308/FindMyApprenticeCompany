<%@page import="vo.MemberVO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오 게시판</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
	<header id="header">
		<div class="wrapper">
			<div class="logo">
				<img src="images/FMAC.png" alt="logo" width="100" height="100">
			</div>
			<div class="menu">
				<ul>
					<li><a href="#">지도</a></li>
					<li><a href="#">성남 지역</a></li>
					<li><a href="#">기타 지역</a></li>
		
					</li>
					
				</ul>
			</div>
			<div class="row">
				<div class="side_menu">
<% 
					MemberVO login = (MemberVO)session.getAttribute("loginOK");
%>
<% 
					if(login == null){
%>
						<a href="/InsideMind/login/login.jsp" id="login">로그인</a>
						<a href="/InsideMind/QuitServlet"id= "quit">회원탈퇴</a>
<% 
					}else{
%>
						<a href="/InsideMind/logout" id="logout">(<%= login.getMemberId() %>)</a>
						<a href="/InsideMind/QuitServlet"id= "quit">회원탈퇴</a>
<%
					}
%>	
				</div>
			</div>
		</div>
	</header>
	<div class="container">
	</div>
	<script src="js/jquery-2.2.3.min.js"></script>
	<script src="js/script.js"></script>
</body>
</html>