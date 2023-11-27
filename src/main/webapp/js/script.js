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
    $('#slide1>ul').animate({marginLeft: "0px"})
});
