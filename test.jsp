<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>登录首页</title>   
        <!-- Bootstrap -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <!--清除默认样式-->
        <link href="css/CM_style_Head.css" rel="stylesheet">
        <!--中医css文件-->
        <link href="css/CM_style_Head.css" rel="stylesheet"> 
        <!-- 如果要使用Bootstrap的js插件，必须先调入jQuery -->
        <script src="http://libs.baidu.com/jquery/1.9.0/jquery.min.js"></script>
        <!-- 包括所有bootstrap的js插件或者可以根据需要使用的js插件调用　-->
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="js/main.js"></script>
        <!--layer-->
        <script src="layer/layer.js"></script>
       <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <!-- 以下两个插件用于在IE8以及以下版本浏览器支持HTML5元素和媒体查询，如果不需要用可以移除 -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

    <script type="text/javascript">

        function banner() {  //banner切换
            var d = 0;
            var speed = 5000;
            var count = 1;
            var time;
            var fouse = $('#banner .d1');
            var dot = $('#banner_id li');
            fouse.hide();
            fouse.eq(0).fadeIn('slow');
            if (fouse.length > 0) {
                function Carousel() {
                    var c = d + 1;
                    if (c > fouse.length - 1) {
                        c = 0;
                    }
                    fouse.eq(d).css('z-index', '2');
                    fouse.eq(c).css('z-index', '1');
                    fouse.eq(c).show();
                    fouse.eq(d).fadeOut('slow');
                    d = c;
                }
                time = setInterval(Carousel, speed);
            }
            else {
                $('#banner').hide();
            }
        }
    </script>

  <body>
        <div class="AuthBox">
            <header>
                <div class="nav">
                    <span class="pull-left"><i class="CM_icon"></i>中医平台</span>
                    <div class="Auth pull-right">我已有中医平台账号
                        <div class="link-1">
                            <a class="demo">
                                <span class="thin">快速</span><span class="thick">登录</span>
                            </a>
                        </div>
                    </div>
                </div>
            </header>
            <div class="banner" id="banner">
                <a href="#" class="d1 banner_img1"></a>
                <a href="#" class="d1 banner_img2"></a>
                <a href="#" class="d1 banner_img3"></a>
            </div>
            <div class="wrap">
                <div class="slogan"></div>
                <div class="mid">
                    <div class="main-entry">
                        <a href="javascript:;" class="seller-login"><span class="title"><i class="seller"></i>我是药店用户</span><s></s></a>
                        <a href="javascript:;" class="personal-login"><span class="title"><i class="personal"></i>我是超级管理员</span><s></s></a>
                    </div>
                </div>
            </div>

            

        </div>

        <script type="text/javascript">banner()</script> 
        
        
  </body>
</html>
