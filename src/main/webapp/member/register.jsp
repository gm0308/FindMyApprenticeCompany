<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <style>
		h2{
			text-align:center;
		}
		form{
			background-color : #ccc;
			padding : 10px;
			margin : 0 auto;
			width : 400px;
		}
		.login_container{
		    border: 3px solid #f1f1f1;
		    padding: 20px;
		}
		input[type=text], input[type=password], input[type=number]{
		    width: 100%;
		    padding: 12px 20px;
		    margin: 8px 0;	
		    display: inline-block;
		    border: 1px solid #ccc;
		    font-size:15px;
		    border-radius: 3px;
		}
		input[type=submit]{
		    background-color: #4caf50;
		    color: white;
		    padding: 14px 20px;
		    margin: 10px 0;
		    cursor: pointer;
		    width: 100%;
		    border-radius: 3px;
		}
		label:hover{
			cursor: text;
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
	<form action="/edu/register" method="post">
		<div class="login_container">
			<a href="/InsideMind/login/login.jsp" style="margin-left:auto"> < 로그인화면 </a>
			<a href="/InsideMind/index.jsp" style="margin-left: 185px"> 메인화면 </a>
			<h2> 회원 가입 </h2>
		
			<label><b>아이디</b></label><br>
			<input type="text" placeholder="아이디를 입력하세요." name="memberId">
				
			<label><b>비밀번호</b></label><br>
			<input type="password" placeholder="비밀번호를 입력하세요." name="memberPwd">
			
			<label><b>이름</b></label><br>	
			<input type="text" placeholder="본명을 적으세요." name="name">
			
			<label><b>주소</b></label><br>
			<input type="text" placeholder="도로명으로 입력하세요." name="addr">
			
			<label><b>나이</b></label><br>
			<input type="number" placeholder="나이를 속이지 마세요." name="age">
			
			<input type= "submit" value="가입"> &nbsp; &nbsp;
		</div>
	</form>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	 	

</body>
</html>