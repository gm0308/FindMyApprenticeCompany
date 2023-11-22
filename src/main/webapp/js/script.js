$(".menu > ul > li").hover(
function() {
$(this).children("ul").stop().slideDown("slow");
},
function() {
$(this).children("ul").stop().slideUp("fast");
}
);

// setInterval(function(){
//     $('.gallery  > div').delay(2500);
//     $('.gallery  > div').animate({marginLeft: "-3000px"})
//     $('.gallery  > div').delay(2500);
//     $('.gallery  > div').animate({marginLeft: "-6000px"})
//     $('.gallery  > div').delay(2500);
//     $('.gallery  > div').animate({marginLeft: "0px"})
// });

// 지도 javaScript
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(37.3739457, 127.1410486), // 양영디지털고등학교의 중심좌표
        level: 10 // 지도의 확대 레벨
    };

// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
var map = new kakao.maps.Map(mapContainer, mapOption);

var positions = [
    {
        content: '<div style="width : 500px"><Strong><p style="margin-left : 20px;"> 씨케이스택</p></Strong> <p style="margin : 0px 20px 20px 20px;">경기도 성남시 분당구 판교로 255번길 9-22 KR 510-1호 판교우림W-CITY</p></div>', 
        latlng: new kakao.maps.LatLng(37.4040238, 127.1000896)
        
    },
    {
        content: '<div style="width : 500px"><Strong><p style="margin-left : 20px;"> 애자일</p></Strong> <p style="margin : 0px 20px 20px 20px;">경기도 성남시 수정구 창업로40번길 20(시흥동) 소프트웨어드림센터 B509</p></div>', 
        latlng: new kakao.maps.LatLng(37.4129450, 127.0942102)
        
    },
    {
        content: '<div style="width : 500px"><Strong><p style="margin-left : 20px;"> 퀴리오스</p></Strong> <p style="margin : 0px 20px 20px 20px;">경기도 성남시 분당구 성남대로2번길 6 (LG트윈오피스텔 713,구미동)</p></div>', 
        latlng: new kakao.maps.LatLng(37.3354301, 127.1098071)
        
    },
    {
        content: '<div style="width : 500px"><Strong><p style="margin-left : 20px;"> 웰데이타시스템</p></Strong> <p style="margin : 0px 20px 20px 20px;">경기도 성남시 분당구 대왕판교로 644번길 86 (삼평동 730) 4층</p></div>', 
        latlng: new kakao.maps.LatLng(37.3996106, 127.1164313)
        
    },
    {
        content: '<div style="width : 500px"><Strong><p style="margin-left : 20px;"> 노바칩스</p></Strong> <p style="margin : 0px 20px 20px 20px;">경기 성남시 수정구 달래내로 46 (시흥동) 성남 글로벌 융합센터 B동 5층</p></div>', 
        latlng: new kakao.maps.LatLng(37.4090285, 127.0948399)
        
    },
    {
        content: '<div style="width : 320px"><Strong><p style="margin-left : 20px;"> 애니시큐어</p></Strong> <p style="margin : 0px 20px 20px 20px;"> 경기도 성남시 분당구 장미로 36, 5층</p></div>', 
        latlng: new kakao.maps.LatLng(37.4135023, 127.1244902)
        
    },
    {
        content: '<div style="width : 500px"><Strong><p style="margin-left : 20px;"> 하마랩</p></Strong> <p style="margin : 0px 20px 20px 20px;">경기 성남시 수정구 달래내로 46, A동 306호 (시흥동,성남글로벌융합센터)</p></div>', 
        latlng: new kakao.maps.LatLng(37.4090285, 127.0948399)
        
    },
    {
        content: '<div style="width : 500px"><Strong><p style="margin-left : 20px;"> 펀앤뉴</p></Strong> <p style="margin : 0px 20px 20px 20px;">경기도 용인시 기흥구 동백3로11번길 7 포스트타워 801호 주식회사 펀앤뉴</p></div>', 
        latlng: new kakao.maps.LatLng(37.2695275, 127.1530891)
        
    },
    {
        content: '<div style="width : 410px"><Strong><p style="margin-left : 20px;"> 한국기업보안</p></Strong> <p style="margin : 0px 20px 20px 20px;">서울특별시 서초구 강남대로99길 53 삼우빌딩 4층</p></div>', 
        latlng: new kakao.maps.LatLng(37.5143923, 127.0167234)
        
    },
    {
        content: '<div style="width : 450px"><Strong><p style="margin-left : 20px;"> 천명소프트</p></Strong> <p style="margin : 0px 20px 20px 20px;">서울특별시 서초구 바우뫼로 194 (양재동 세진빌딩) 5층</p></div>', 
        latlng: new kakao.maps.LatLng(37.4794127, 127.0409484)
        
    },
    {
        content: '<div style="width : 440px"><Strong><p style="margin-left : 20px;"> 오픈오브젝트</p></Strong> <p style="margin : 0px 20px 20px 20px;">서울특별시 중구 퇴계로 131 5층 500호 오픈오브젝트</p></div>', 
        latlng: new kakao.maps.LatLng(37.5612798, 126.9864204)
        
    },
    {
        content: '<div style="width : 360px"><Strong><p style="margin-left : 20px;"> 에어큐브</p></Strong> <p style="margin : 0px 20px 20px 20px;">서울특별시 강서구 한강자이타워 B 동 607호</p></div>', 
        latlng: new kakao.maps.LatLng(37.5656521, 126.8476921)
        
    }

];

for (var i = 0; i < positions.length; i ++) {
    // 마커를 생성합니다
    var marker = new kakao.maps.Marker({
        map: map, // 마커를 표시할 지도
        position: positions[i].latlng, // 마커의 위치
    });

    // 마커에 표시할 인포윈도우를 생성합니다 
    var infowindow = new kakao.maps.InfoWindow({
        content: positions[i].content // 인포윈도우에 표시할 내용
    });

    // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
    // 이벤트 리스너로는 클로저를 만들어 등록합니다 
    // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
    kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
    kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
}

// 인포윈도우를 표시하는 클로저를 만드는 함수입니다 
function makeOverListener(map, marker, infowindow) {
    return function() {
        infowindow.open(map, marker);
    };
}

// 인포윈도우를 닫는 클로저를 만드는 함수입니다 
function makeOutListener(infowindow) {
    return function() {
        infowindow.close();
    };
}

kakao.maps.event.addListener(marker, 'clusterclick', function(cluster) {

    // 현재 지도 레벨에서 1레벨 확대한 레벨
    var level = map.getLevel()-1;

    // 지도를 클릭된 클러스터의 마커의 위치를 기준으로 확대합니다
    map.setLevel(level, {anchor: cluster.getCenter()});
});