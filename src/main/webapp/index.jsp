<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FMAC</title>
</head>
<body>
	<%@ include file="/header.jsp" %>
	<div class="explan-us">
		<h1> Find My Apprentice Company</h1> 
		<p style="margin-top : 50px"> 아래의 슬라이드 이미지를 선택해서 회사 공식사이트에 들어가보세요</p>
		<p> FMAC는 수많은 도제회사들의 정보를 얻으며 회사 소개 및 회사 위치를 알려드립니다.</p>
	</div>
	<div id="index_01">
        <div id="slide1">
            <ul>
                <li><a href="#"> <img src="https://cdn.imweb.me/upload/S202207202685e30f16e24/8b48c67f8cdf6.jpeg" width="1500px" alt="슬라이드1"></a></li>
                <li><a href="#"> <img src="https://png.pngtree.com/background/20230610/original/pngtree-landscape-wallpaper-fb-wallpapers-picture-image_3017516.jpg" width="1500px" alt="슬라이드2"></a></li>
                <li><a href="#"> <img src="https://png.pngtree.com/thumb_back/fw800/background/20230519/pngtree-hd-fantasy-landscape-wallpapers-castle-isolated-on-the-island-image_2567667.jpg" width="1500px" alt="슬라이드3"></a></li>
            </ul>
        </div>
    </div>
	<p class="main-text"> 여기에 오신 것을 환영합니다. </p>
	
	<%@ include file="/footer.jsp" %>
	<script src="/js/jquery-2.2.3.min.js"></script>
	<script src="/js/script.js"></script>
	
</body>
</html>