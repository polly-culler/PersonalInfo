// 鼠标翻页
$("#pageview").on("mousewheel",function(e){
    // to konw the mouse need move Up or move down
    var dir = e.originalEvent.wheelDelta;
    dir = dir > 0?1:0;
    var $index = $(this).attr("index");
    var maxLen = $(".ui-page").length-1;
    if( dir ){
        // move up means dir===1
        if( --$index < 0){
            return;
        }
    }else{
        //move down means dir===0
        if(++$index > maxLen){
            return;
        }
    }
    if( !$(this).is(':animated')){
        $(this).attr("index",$index);
        $(this).animate({"top":"-"+$index+"00%"},1000);
    }
})

var $index = 0;

$(".list li").mouseover(function(){
    $(this).addClass("action").siblings().removeClass("action");
    // 这里未使用fadeIn()和fadeOut()，由于为页面应该改为滑入
    $(".ui-page").eq($(this).index()).slideToggle("slow").siblings(".ui-page").hide();
    $index = $(this).index();
})
// 还应添加触摸的效果
