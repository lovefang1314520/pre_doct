

$(function(){
    $(".ce > li > a").click(function(){//菜单切换
	     $(this).addClass("xz").parents().siblings().find("a").removeClass("xz");
	     $(this).parents("li").addClass("li_active");
		 $(this).siblings(".er").toggle(300);
		 $(this).parents().siblings().find(".er > li > .thr").hide().parents().siblings().find(".thr_nr").hide();
		
	})
	
    $(".er > li > a").click(function(){
        $(this).addClass("sen_x").parents().siblings().find("a").removeClass("sen_x");	
	})

    $(".Admin_Index .content .table-responsive .table tbody tr").click(function () {//点击表格
        $(this).addClass("border_active").siblings().find("tr").removeClass("border_active");
    })





})


 




























