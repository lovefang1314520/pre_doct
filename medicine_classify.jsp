<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'drug_classify.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
   <link href="http://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet">
   <script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
   <script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
   <script type="text/javascript" src="<%=basePath%>pre_doct/js/main.js"></script>
   <!--中医css文件-->
   <link rel="stylesheet" href="<%=basePath%>pre_doct/css/CM_style_Head.css" type="text/css"></link>
   <script type="text/javascript">
  	$(function(){
  	$(".plus_link").click(function(){
  		$(".welcome-page").hide();
  		$(".maintain-page").show();
  		
  		});
  	});
  </script>
  </head>
  
  <body>
  <div class="container" >
  	<a href="javascript:void(0);" class="plus_link">
		<span class="glyphicon glyphicon glyphicon-plus" title="添加一级分类" style="cursor: pointer;"></span>
	</a>
	<hr/>
  	<div class="row">
		<div class="col-md-3" >
			<ul class="ce" style="top: 0px;">
                <li>
                    <a><i class="glyphicon glyphicon-cog"></i> <span>系统设置</span> <img class="more" src="<%=basePath%>pre_doct/images/arrow.png" /></a>
                    <ul class="er">
                        <li><a><i class="glyphicon glyphicon-stats"></i> <span>类别管理</span> </a> </li>
                        <li><a><i class="glyphicon glyphicon-stats"></i> <span>角色管理</span> </a> </li>
                        <li><a><i class="glyphicon glyphicon-stats"></i> <span>流程资料管理</span> </a> </li>
                        <li><a><i class="glyphicon glyphicon-stats"></i> <span>会员管理</span> </a> </li>
                        <li><a><i class="glyphicon glyphicon-stats"></i> <span>流程管理</span> </a> </li>
                        <li><a><i class="glyphicon glyphicon-stats"></i> <span>系统登录统计</span> </a> </li>
                    </ul>
                </li>
                <li class="clear"></li>
            </ul>
		</div> 
		<div class="col-md-9">
			<div align="center" style="height: 100%; margin-top: 200px;" class="welcome-page">
				<font style="font-size: 40px; vertical-align: middle;">维护左侧树</font>
			</div>
			<div class="panel panel-default maintain-page" style="display: none;">
			   <div class="panel-body">
                <div class="Medi_class">
                    <span class="title">药品分类登记</span>
                    <div class="Button_Box">
                        <button class="btn btn-default" type="button">增加节点</button>
                        <button class="btn btn-default" type="button">修改节点</button>
                        <button class="btn btn-default" type="button">删除节点</button>
                        <button class="btn btn-default" type="button">绑定功能</button>
                    </div>
                    <table class="table table-bordered active">
                        <tr>
                            <td>父节点名</td>
                            <td><input type="text" placeholder="父节点名" /></td>
                        </tr>
                        <tr>
                            <td>父节点名</td>
                            <td><input type="text" placeholder="父节点名" /></td>
                        </tr>
                        <tr>
                            <td>父节点名</td>
                            <td><input type="text" placeholder="父节点名" /></td>
                        </tr>
                        <tr>
                            <td>父节点名</td>
                            <td><input type="text" placeholder="父节点名" /></td>
                        </tr>
                    </table>
                </div>			 
			   </div>
			</div>
	   </div> 	
  	</div>
  </div>  
  </body>
</html>
