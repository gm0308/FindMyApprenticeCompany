$(".menu > ul > li").hover(
function() {
$(this).children("ul").stop().slideDown("slow");
},
function() {
$(this).children("ul").stop().slideUp("fast");
}
);