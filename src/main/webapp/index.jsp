<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>임시 프로젝트</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
	<%@ include file="/header.jsp" %>
	<div id="index_01">
        <div id="header1">슬라이드 구현</div>
        <div id="slide1">
            <ul>
                <li><a href="#"><img src="https://cdn.imweb.me/upload/S202207202685e30f16e24/8b48c67f8cdf6.jpeg" width="1200px" alt="슬라이드1"></a></li>
                <li><a href="#"><img src="https://png.pngtree.com/background/20230610/original/pngtree-landscape-wallpaper-fb-wallpapers-picture-image_3017516.jpg" width="1200px" alt="슬라이드2"></a></li>
                <li><a href="#"><img src="https://png.pngtree.com/thumb_back/fw800/background/20230519/pngtree-hd-fantasy-landscape-wallpapers-castle-isolated-on-the-island-image_2567667.jpg" width="1200px" alt="슬라이드3"></a></li>
            </ul>
        </div>
    </div>
	<p class="main-text"> 여기에 오신 것을 환영합니다. </p>
	<%@ include file="/footer.jsp" %>
	<script src="/js/jquery-2.2.3.min.js"></script>
	<script src="/js/script.js"></script>
</body>
</html>