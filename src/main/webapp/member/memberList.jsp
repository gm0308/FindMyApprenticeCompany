<%@page import="java.util.ArrayList"%>
<%@page import="dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FMAC</title>
</head>
<body>
	<h1> 회원 목록 (member 테이블) </h1>
	<table border="1">
		<tr>
			<th>사용자 ID</th>
			<th>수정</th>
		</tr>
<%
	MemberDAO dao = new MemberDAO();
	ArrayList<String> List = dao.getMemberList();
	String updateLink = "memberUpdate.jsp?id=";
	
	if(List.isEmpty())
		out.print("<tr><td>회원정보가 없습니다.</tr></td>");
	else{
		for(String data : List){		
%>
		<tr>
			<td> <%= data %> </td>
			<td> <a href="<%= updateLink + data %>"> 수정</a> </td>
		</tr>
<% 
	}
}
%>
	</table>
	<br><br>
	<a href = "./index.jsp"> 처음 화면</a>
	


</body>
</html>