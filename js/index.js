var $index = 0;
var len = $("img").length-1;
var timer = null;
var onOff = true;


$("#banner").hover(function(){
    clearInterval(timer);
    $("#banner a").fadeIn(500)
},function(){
    timer = setInterval(bannerRight,2500);
    $("#banner a").fadeOut(500)
})


$(".banner-list li").mouseover(function(){
    $(this).addClass("action").siblings().removeClass("action");
    $("img").eq($(this).index()).fadeIn().siblings("img").fadeOut();
    $index = $(this).index();
})

$(".right").click(function(){
    if(onOff){
        bannerRight()
        onOff = false;
    }

})

$(".left").click(function(){
    if(onOff){
        $index--;
        if( $index < 0 ){
            $index = len
        }
        banner();
        onOff = false;
    }
})

timer = setInterval(bannerRight,2500);

function banner(){
    $(".banner-list li").eq($index).addClass("action").siblings().removeClass("action");
    $("img").eq($index).fadeIn(1000).siblings("img").fadeOut(500,function(){
        onOff = true;
    });
}


function bannerRight(){
    $index++;
    if( $index > len ){
        $index = 0
    }
    banner();
}
