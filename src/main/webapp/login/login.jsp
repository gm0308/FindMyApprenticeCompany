<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FMAC</title>
<style>
	h2{
		text-align:center;
	}
	form{
		background-color : #ccc;
		padding : 10px;
		margin : 0 auto;
		width : 300px;
	}
	.login_container{
	    border: 3px solid #f1f1f1;
	    padding: 16px;
	}
	input[type=text], input[type=password]{
	    width: 84%;
	    padding: 12px 20px;
	    margin: 8px 0;
	    display: inline-block;
	    border: 1px solid #ccc;
	}
	input[type=submit]{
	    background-color: #4caf50;
	    color: white;
	    padding: 14px 20px;
	    margin: 8px 0;
	    cursor: pointer;
	    width: 100%;
	}
	a{
	    text-decoration: none;
	    color: black;
	}
	a:hover{
	    text-decoration: underline;
	    color:blue;
	}
</style>
</head> 
<body>
	<h2> 로그인 화면에 오신것을 환영합니다. </h2>

	<form action="/InsideMind/login" method="post">
		<div class="login_container">
			<label><b>아이디</b></label>
			<input type="text" placeholder="아이디를 입력하세요." name="id">
				
			<label><b>패스워드</b></label>
			<input type="password" placeholder="비밀번호를 입력하세요" name="pwd">
			
			<input type="submit" value="로그인">
			<a href="/InsideMind/member/register.jsp"> 회원가입 </a>
			<a href="/InsideMind/index.jsp" style="float:right"> 메인화면 </a>
		</div>
	</form>
</body>
</html>