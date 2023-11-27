$(".menu > ul > li").hover(
function() {
$(this).children("ul").stop().slideDown("slow");
},
function() {
$(this).children("ul").stop().slideUp("fast");
}
);

setInterval(function(){
    $('#slide1>ul').delay(2500);
    $('#slide1>ul').animate({marginLeft: "-1500px"})
    $('#slide1>ul').delay(2500);
    $('#slide1>ul').animate({marginLeft: "-3000px"})
    $('#slide1>ul').delay(2500);
    $('#slide1>ul').animate({marginLeft: "-4500px"})
    $('#slide1>ul').delay(2500);
    $('#slide1>ul').animate({marginLeft: "-6000px"})
    $('#slide1>ul').delay(2500);
    $('#slide1>ul').animate({marginLeft: "-7500px"})
    $('#slide1>ul').delay(2500);
    $('#slide1>ul').animate({marginLeft: "-9000px"})
    $('#slide1>ul').delay(2500);
    $('#slide1>ul').animate({marginLeft: "-10500px"})
    $('#slide1>ul').delay(2500);
    $('#slide1>ul').animate({marginLeft: "-12000px"})
    $('#slide1>ul').delay(2500);
    $('#slide1>ul').animate({marginLeft: "-13500px"})
    $('#slide1>ul').delay(2500);
    $('#slide1>ul').animate({marginLeft: "-15000px"})
    $('#slide1>ul').delay(2500);
    $('#slide1>ul').animate({marginLeft: "-16500px"})
    $('#slide1>ul').delay(-1);
    $('#slide1>ul').animate({marginLeft: "0px"})
});
