$(function(){
    /*中部选项卡*/
    $(".menu-lists ul li").click(function(){
        $(".menu-lists ul li").removeClass('active');
        $(this).addClass('active');
        $(".box .item").hide();
        $(".box .item").eq($(".menu-lists ul li").index(this)).show();
    })

    /*data-input*/
    $(".ui_timepicker").datetimepicker({
        //showOn: "button",
        //buttonImage: "./css/images/icon_calendar.gif",
        //buttonImageOnly: true,
        showSecond: true,
        timeFormat: 'hh:mm:ss',
        stepHour: 1,
        stepMinute: 1,
        stepSecond: 1
    })

    /*尾部选项卡*/
    $(".footer-menu-lists ul li").click(function(){
        $(".footer-menu-lists ul li").removeClass('active2');
        $(this).addClass('active2');
        $(".footer-menu-lists-details .item2").hide();
        $(".footer-menu-lists-details .item2").eq($(".footer-menu-lists ul li").index(this)).show();
    })


})