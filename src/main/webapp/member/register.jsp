<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <style>
        * {
            text-decoration: none;
	        list-style: none;
        }
		h2{
			text-align:center;
		}
		form{
			background-color : #9BA4B5;
			padding : 10px;
			margin : 0 auto;
			width : 400px;
		}
		.login_container{
		    border: 3px solid #394867;
		    padding: 20px;
		}
		input[type=text], input[type=password], input[type=number]{
		    width: 100%;
		    padding: 12px 20px;
		    margin: 8px 0;	
		    display: inline-block;
		    font-size:15px;
		    border-radius: 3px;
		}
		input[type=submit]{
		    background-color: #394867;
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
            font-weight: 800;
		}
	</style>
	<form action="/InsideMind/register" method="post">
		<div class="login_container">
			<a href="/InsideMind/login/login.jsp" style="margin-left:auto"> login </a>
			<a href="/InsideMind/index.jsp" style="margin-left: 260px"> menu </a>
			<h2> 회원가입 </h2>
		
			<label><b>Id</b></label><br>
			<input type="text" placeholder="Please enter your ID" name="memberId">
				
			<label><b>Pwd</b></label><br>
			<input type="password" placeholder="Please enter your PWD" name="memberPwd">
			
			<label><b>Name</b></label><br>	
			<input type="text" placeholder="Please enter your Name" name="name">
			
			<input type= "submit" value="Sign up"> &nbsp; &nbsp;
		</div>
	</form>
