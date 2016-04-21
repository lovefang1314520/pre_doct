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
   <script type="text/javascript" src="<%=basePath%>pre_doct/js/medicine.js"></script>
   <script type="text/javascript" src="<%=basePath%>pre_doct/js/jsonJs.js"></script>
   <script type="text/javascript">
	$(document).ready(function() {
		$.getJSON("js/medicine.json",function(json){
			var data = json;  
			alert("11111");
			});
		});
   </script>
  </head>
  
  <body onload="loadPage()">
	<div class="panel panel-default">
	   <div class="panel-body">
		   <div class="panel panel-primary">
			   <div class="panel-heading">
			      <h3 class="panel-title">
			      <a data-toggle="collapse" data-parent="#accordion" 
			          href="#medicineDiv">
			        	  药品信息登记
			      </a></h3>
			   </div>
			   <div class="panel-body panel-collapse collapse" id="medicineDiv">
					<form role="form">
						  <div class="input-group">
					         <span class="input-group-addon">药品分类</span>
					         <input type="text" class="form-control category_name" id="category_name" placeholder="请选择药品分类" onclick="showMedicineClassify()">
					         <input type="hidden" class="form-control category_id" id="category_id" />
					      </div><br/>
						  <div class="input-group">
					         <span class="input-group-addon">药品编号</span>
					         <input type="text" class="form-control" id="code"  placeholder="请输入药品编号">
					      </div><br/>
						  <div class="input-group">
					         <span class="input-group-addon">药&nbsp;品&nbsp;名&nbsp;</span>
					         <input type="text" class="form-control" placeholder="请输入药品名称" id="name" onchange="checkMedicine(this)">
					      </div><br/>
						  <div class="input-group">
					         <span class="input-group-addon">别 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名</span>
					         <input type="text" class="form-control" placeholder="请输入药品别名" id="alias">
					      </div><br/>
						  <div class="input-group">
					         <span class="input-group-addon">产 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;地</span>
					         <input type="text" class="form-control" placeholder="请输入药品产地" id="production_place">
					      </div><br/>
						  <div class="input-group">
					         <span class="input-group-addon">厂&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;商</span>  
					         <input type="text" class="form-control" placeholder="请输入药品厂商" id="manufacturer">
					      </div><br/>
						  <div class="input-group">
					         <span class="input-group-addon">计量单位</span>
				               <select class="form-control" id="unit">
						         <option value="0">==请选择计量单位==</option>
						         <option>g</option>
						         <option>kg</option>
						         <option>粒</option>
						      </select>
					      </div><br/>
						  <div class="input-group">
					         <span class="input-group-addon">进价￥：</span>
					         <input type="text" class="form-control" placeholder="请输入药品进价" id="buy_in_price" onchange="checkMoney(this)" />
					         <span class="input-group-addon">元</span>
					      </div><br/>
						  <div class="input-group">
					         <span class="input-group-addon">售价￥：</span>
					         <input type="text" class="form-control" placeholder="请输入药品售价" id="sell_out_price"  onchange="checkMoney(this)" />
					         <span class="input-group-addon">元</span>
					      </div><br/>
					      <center>
					      <button type="button" class="btn btn-success" onclick="submitData()">提交</button>
					      <button type="reset" class="btn btn-success">重置</button>
					      </center>
					      
					</form>
			   </div>
			</div>
			<div class="panel panel-info">
			   <div class="panel-heading">
			      <h3 class="panel-title">
			  		<span class="glyphicon glyphicon-list-alt"></span>    
			      	药品列表
		            <a style="float: right;" data-toggle="modal" data-target="#searchTem">
		               <span class="glyphicon glyphicon-search"></span>
		               	药品检索
		            </a>
			      </h3>
			   </div>
			   <div class="panel-body">
			     	<div class="table-responsive">
			     	<table style="font-size:14px;" id="templateListId" class="table table-striped table-bordered">
				     	<thead>
				     		<tr class="success" id="tr_0">
								<td align="center">序号</td>
								<td align="center">药品名</td>
								<td align="center">药品分类</td>				
			     				<td align="center">产地</td>			
			     				<td align="center">厂商</td>		
			     				<td align="center">计量方式</td>
			     				<td align="center">进价</td>
			     				<td align="center">售价</td>
			     				<td align="center" valign="top">操作
							    </td>
			     			</tr>
				     	</thead>	
				     	<tbody>
				     		<tr class="success" id="tr_0">
								<td align="center">1</td>
								<td align="center">药品名1</td>
								<td align="center">药品分类1</td>				
			     				<td align="center">产地1</td>			
			     				<td align="center">厂商1</td>		
			     				<td align="center">g</td>
			     				<td align="center">￥12.59</td>
			     				<td align="center">￥25.96</td>
			     				<td align="center" valign="top">
			     					<button type="button" id="medicine_inport" onclick="show_med_inport('med_id','code','柴胡','g','草本类','med_class_id')">入库</button>
							    </td>
			     			</tr>
				     		<tr class="success" id="tr_0">
								<td align="center">2</td>
								<td align="center">药品名2</td>
								<td align="center">药品分类2</td>				
			     				<td align="center">产地2</td>			
			     				<td align="center">厂商1</td>		
			     				<td align="center">g</td>
			     				<td align="center">￥12.59</td>
			     				<td align="center">￥25.96</td>
			     				<td align="center" valign="top">
			     				<button type="button" id="medicine_inport" onclick="show_med_inport('med_id','code','柴胡','g','木本类','med_class_id')">入库</button>
							    </td>
			     			</tr>
				     	</tbody>
				    </table>
				    </div>
				</div>		
	   </div>
	</div> 
</div>   
	<!-- 模态框（Modal） -->
	<div class="modal fade" id="med_inport_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabelTem" aria-hidden="true">
	   <div class="modal-dialog">
	      <div class="modal-content">
	         <div class="modal-header">
	            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
	                  ×
	            </button>
	            <h4 class="modal-title" id="myModalLabelTem">
	               	药品入库
	            </h4>
	         </div>
	         <div class="modal-body">
	        	  <div class="input-group">
			         <span class="input-group-addon">药&nbsp;品&nbsp;名&nbsp;</span>
			         <input type="text" class="form-control category_name" id="med_name" disabled="disabled"  />
			         <input type="hidden" class="form-control med_id" id="med_id" />
			         <input type="hidden" class="form-control med_code" id="med_code" />
			      </div><br/>
	        	  <div class="input-group">
			         <span class="input-group-addon">药品分类</span>
			         <input type="text" class="form-control category_name" id="med_class_name" disabled="disabled"  />
			         <input type="hidden" class="form-control med_id" id="med_class_id" />
			      </div><br/>
	        	  <div class="input-group">
			         <span class="input-group-addon">药&nbsp;品&nbsp;量&nbsp;</span>
			         <input type="text" class="form-control medicine_num" id="medicine_num" onchange="checkNum(this)"  placeholder="请输入药品量">
			         <span class="input-group-addon med_unit" id="med_unit"></span>
			      </div><br/>
				  <div class="input-group">
			         <span class="input-group-addon">进价￥：</span>
			         <input type="text" class="form-control" placeholder="请输入药品进价" id="medicine_buy_in_price" onchange="checkMoney(this)" />
			         <span class="input-group-addon">元</span>
			      </div><br/>
				  <div class="input-group">
			         <span class="input-group-addon">售价￥：</span>
			         <input type="text" class="form-control" placeholder="请输入药品售价" id="medicine_sell_in_price" onchange="checkMoney(this)" />
			         <span class="input-group-addon">元</span>
			      </div><br/>
	         </div>
	         <div class="modal-footer">
	            <button type="button" class="btn btn-default" data-dismiss="modal">关闭
	            </button>
	            <button type="button" class="btn btn-primary" onclick="med_import()">
	              	提交
	            </button>
	         </div>
	      </div><!-- /.modal-content -->
	</div><!-- /.modal -->
	</div>	
	<!-- 模态框（Modal） -->
	<div class="modal fade" id="searchTem" tabindex="-1" role="dialog" aria-labelledby="myModalLabelTem" aria-hidden="true" style="display: none;">
	   <div class="modal-dialog">
	      <div class="modal-content">
	         <div class="modal-header">
	            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
	                  ×
	            </button>
	            <h4 class="modal-title" id="myModalLabelTem">
	               	药品检索
	            </h4>
	         </div>
	         <div class="modal-body">
       			<div class="input-group input-group-lg">
			         <span class="input-group-addon">药品大分类：</span>
		          	<select id="bigClass" name="searBigClass" class="form-control" onchange="get_temSmallClass(this.value)">
						<option value="01">===请选择==</option>
		          	</select>
		     	</div><br>
       			<div class="input-group input-group-lg">
			         <span class="input-group-addon">药品小分类：</span>
		          	<select id="smallClass" name="searSmallClass" class="form-control">
		          	<option value="">===请选择小分类===</option>
		          	</select>
		          	<br>
		     	</div><br>
	         </div>
	         <div class="modal-footer">
	            <button type="button" class="btn btn-default" data-dismiss="modal">关闭
	            </button>
	            <button type="button" class="btn btn-primary" onclick="searchMedicine()">
	              	检索
	            </button>
	         </div>
	      </div><!-- /.modal-content -->
	</div><!-- /.modal -->
	</div>	
	
		<!-- 模态框（Modal） -->
	<div class="modal fade" id="medicine_classify" tabindex="-1" role="dialog" aria-labelledby="myModalLabelTem" aria-hidden="true" style="display: none;">
	   <div class="modal-dialog">
	      <div class="modal-content">
	         <div class="modal-header">
	            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
	                  ×
	            </button>
	            <h4 class="modal-title" id="myModalLabelTem">
	               	药品分类
	            </h4>
	         </div>
	         <div class="modal-body">
       			<div class="input-group input-group-lg">
			         <span class="input-group-addon">药品大分类：</span>
		          	<select id="regGigClass" name="bigClass" class="form-control" onchange="get_SmallClass(this.value)">
						<option value="0">===请选择==</option>
						<option value="01">大分类一</option>
						<option value="01">大分类二</option>
						<option value="02">大分类三</option>
		          	</select>
		     	</div><br>
       			<div class="input-group input-group-lg">
			         <span class="input-group-addon">药品小分类：</span>
		          	<select id="regSmallClass" name="smallClass" class="form-control">
		          	<option value="">===请选择小分类===</option>
		          	
		          	</select>
		          	<br>
		     	</div><br>
	         </div>
	         <div class="modal-footer">
	            <button type="button" class="btn btn-default" data-dismiss="modal">关闭
	            </button>
	            <button type="button" class="btn btn-primary" onclick="submitClass()">
	              	确定
	            </button>
	         </div>
	      </div><!-- /.modal-content -->
		</div><!-- /.modal -->
	</div> 
  </body>
</html>

