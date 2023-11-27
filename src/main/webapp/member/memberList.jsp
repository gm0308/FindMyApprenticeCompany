<%@page import="java.util.ArrayList"%>
<%@page import="dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FMAC</title>
<link rel="stylesheet" href="/src/main/webapp/style.css">
</head>
<body>
    <%@ include file="/header.jsp" %>
    <div id="memberList_c">
    <fieldset>
        <legend id="ml_t"> 회원 목록 </legend>
	    <table border="1">
            <thead>
                <tr>
                    <th>사용자 ID</th>
                    <th>수정</th>
                </tr>
            </thead>
            <tbody>
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
        </tbody>
	    </table>
    </fieldset>
    </div>
    <%@ include file="/footer.jsp" %>
</body>
</html>