<%@page import="vo.MemberVO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FMAC</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
	<header id="header">
		<div class="wrapper">
		<% 
					MemberVO login = (MemberVO)session.getAttribute("loginOK");
		%>
		<%
			if(login == null) {
		%>
			<div class="logo">
				<a href="/InsideMind/index.jsp"> <img src="/InsideMind/images/FMAC.png" alt="logo" width="100" height="100"> </a>
			</div>
		<%
			} else {
		%>
			<div class="logo">
				<a href="/InsideMind/login/loginOK.jsp"> <img src="/InsideMind/images/FMAC.png" alt="logo" width="100" height="100"> </a>
			</div>
		<%
			}
		%>
			
		
	
			
			<div class="menu">
				<ul>
					<li><a href="/InsideMind/map/map.jsp">지도</a></li>
					<li><a href="#">성남 지역</a></li>
					<li><a href="#">기타 지역</a></li>
		
					</li>
					
				</ul>
			</div>
			<div class="row">
				<div class="side_menu">

<% 
					if(login == null){
%>
						<a href="/InsideMind/login/login.jsp" id="login">로그인</a>
						<a href="/InsideMind/QuitServlet"id= "quit">회원탈퇴</a>
						
<% 	
					}else{
%>
						<a href="/InsideMind/logout" id="logout"><%= login.getMemberId() %> 님 환영합니다</a>
						<a href="/InsideMind/member/memberList.jsp" id="">정보수정</a>
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