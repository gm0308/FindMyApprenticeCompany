<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/InsideMind/style.css">
<link rel="stylesheet" href="/InsideMind/u_style.css">
</head>
<body>
    <%@ include file="/header.jsp" %>
    <div id="memberList_c">
        <fieldset>
            <legend id="mu_t"> 회원 정보 수정 </legend>
            <% String id = request.getParameter("id"); %>
            <% String pwd = request.getParameter("pwd"); %>
            <% String name = request.getParameter("name"); %>
            <form action="/InsideMind/update" method="post">
                <label for="id">사용자 ID</label><input type="text" name="id" value="<%= id %>" id="id" readonly> <br>
                <label for="pwd">사용자 PWD</label><input type="password" name="pwd" id="pwd" > <br>
                <label for="name">사용자 NAME</label><input type="text" name="name" id="name" > <br>
                <input type="submit" value="수정"> &nbsp;
                <input type="reset" value="초기화">
            </form>
        </fieldset>
    </div>
    <%@ include file="/footer.jsp" %>
</body>
</html>