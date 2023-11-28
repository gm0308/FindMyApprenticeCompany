<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<%
	String msg = (String)session.getAttribute("quit");
%>
<fieldset>
    <legend> 회원탈퇴 결과 안내 </legend>
    <p> <%= msg %>  </p>
    <a href="../index.jsp">메인 화면으로</a>
</fieldset>
<%@ include file="../footer.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    fieldset {
        width: 30%;
        height: 300px;
        margin-left: 600px;
        margin: 200px 0px 200px 600px;
        border: 3px solid #212A3E;
        background-color: #F1F6F9;
    }
    legend {
        margin-left: 30px;
        padding-left: 22px;
        width: 200px !important;
        height: 40px;
        line-height: 40px;
        font-size: 1.3em;
        background-color: #394867;
        color: #F1F6F9;
        border-radius: 14px;
    }
    p {
        font-size: 1.4em;
        margin: 110px 0px 0px 34%;
    }
    a {
        display: inline-block;
        width: 160px;
        height: 40px;
        line-height: 40px;
        border-radius: 16px;
        background-color: #212A3E;
        color: white;
        text-align: center;
        font-size: 1.3em;
        text-decoration: none;
	    list-style: none;
        margin: 74px 0 0 400px;
    }
</style>
</head>
<body>
	 	

</body>
</html>