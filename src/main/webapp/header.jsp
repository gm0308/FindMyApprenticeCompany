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
				<img src="images/logo.png" alt="logo" width="100" height="100">
			</div>
			<div class="menu">
				<ul>
					<li><a href="#">회사소개</a>
					<ul>
						<li><a href="#">지도</a></li>
						<li><a href="#">성남 지역</a></li>
						<li><a href="#">기타 지역</a></li>
					</ul>
					</li>
					<li><a href="#">메인메뉴2</a>
					<ul>
						<li><a href="#">서브메뉴1</a></li>
						<li><a href="#">서브메뉴2</a></li>
						<li><a href="#">서브메뉴3</a></li>
					</ul>
					</li>
					<li><a href="#">메인메뉴3</a>
					<ul>
						<li><a href="#">서브메뉴1</a></li>
						<li><a href="#">서브메뉴2</a></li>
						<li><a href="#">서브메뉴3</a></li>
					</ul>
					</li>
					<li><a href="#">메인메뉴4</a>
					<ul>
						<li><a href="#">서브메뉴1</a></li>
						<li><a href="#">서브메뉴2</a></li>
						<li><a href="#">서브메뉴3</a></li>
					</ul>
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
						<a href="/InsideMind/login/login.jsp" id="login"> 로그인 </a>
						<a href="/InsideMind/QuitServlet"id= "quit"> 회원탈퇴 </a>
<% 
					}else{
%>
						<a href="/InsideMind/logout" id="logout"> 로그아웃 (<%= login.getMemberId() %>)</a>
						<a href="/InsideMind/QuitServlet"id= "quit"> 회원탈퇴 </a>
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