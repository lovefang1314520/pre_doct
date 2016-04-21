/**
 * 
 */
function loadPage()
{
//	  $.getJSON("pre_doct/js/medicine.json",function(data){  //获得.json文件的数据
//			var  len = data.length;	 
//			  for(var i=0,num = 1;i<len;i++,num ++){
//			  htmlstr += "<tr><td>"+num+"</td>"+
//			  			     "<td>"+data[i].name+"</td>"+
//			  			     "<td>"+data[i].category.category_name+"</td>"+
//			  			     "<td>"+data[i].alias+"</td>"+
//			  			     "<td>"+data[i].alias+"</td>"+
//			  			     "<td>"+data[i].alias+"</td>"+
//			  			     "<td>"+data[i].alias+"</td>"+
//			  			     "<td>"+data[i].alias+"</td>"+
//			  			     "<td></td>"+
//			  			  "</tr>";
//			  
//				  if(data[i].englishName==country){
//					  var universties = data[i].universties;
//					  var le = universties.length;
//					  for( var j=0;j<le;j++){
//						  $(".institution").append("<option value='"+universties[j].links+"'>"+universties[j].standName+"</option>")
//					  }
//					  break;
//				  }
//			  }
//		  });
//	
	
//	$.ajax({
//		url : "http://127.0.0.1:8888/", //后台处理程序
//		type : 'GET', //数据发送方式
//		contentType : 'application/x-www-form-urlencoded; charset=utf-8',
//		dataType : 'json', //接受数据格式
//		data : {
//			'jsonData' : jsonData
//		}, //要传递的数据,
//		success : function(json) {
//			alert(json);
//			if (json != "null") {
//				$("#smallClass").html("");
//			  var data = eval(json);
//				for ( var i = 0; i < data.length; i++) {
//					html += "<option value=\""+data[i]._id+"\">"+data[i].category_name+"</option>";
//				}
//				$("#smallClass").append(html);
//			}else{
//				alert("没有数据");
//			}
//
//		}
//	});
}

/**
 * 提交药品登记信息
 */
function submitData()
{
	var dataJsonStr = "{",czbj = "1";
	var idArr = ["category_name","category_id","code","name","production_place","manufacturer","unit","buy_in_price","sell_out_price"];
	var alertArr = ["请选择药品分类","请选择药品分类","请填写药品编号","请填写药品名","请填写药品产地","请填写药品供应商","请选择计量单位","请填写进价","请填写售价"];
	for(var i=0;i<idArr.length;i++)
	{
		var i_idArrVal = $("#"+idArr[i]).val();
		if(i_idArrVal==""){
			alert(alertArr[i]);
			czbj = "0";		
			return;
		}else{
			dataJsonStr	+= idArr[i]+":"+i_idArrVal+",";	
		}
	}
	dataJsonStr = dataJsonStr.substring(0,dataJsonStr.length-1);
	dataJsonStr +="}";
	alert("dataJsonStr="+dataJsonStr);
	$.ajax({
		url : "http://127.0.0.1:8888/", //后台处理程序
		type : 'GET', //数据发送方式
		contentType : 'application/x-www-form-urlencoded; charset=utf-8',
		dataType : 'json', //接受数据格式
		data : {
			'jsonData' : jsonData
		}, //要传递的数据,
		success : function(json) {
			alert(json);
			if (json != "null") {
				$("#smallClass").html("");
			  var data = eval(json);
				for ( var i = 0; i < data.length; i++) {
					html += "<option value=\""+data[i]._id+"\">"+data[i].category_name+"</option>";
				}
				$("#smallClass").append(html);
			}else{
				alert("没有数据");
			}

		}
	});
	
}
/**
 * 显示药品分类对话框，选择药品分类
 */
function showMedicineClassify(){
	$('#medicine_classify').modal('show');
}
/**
 * 获取药品的小分类信息
 * @param {Object} bigValue
 */
function get_SmallClass(bigValue)
{
	var html = "<option value=\"0\">==请选择小分类==</option>";
	var json = {"_id":"0101","category_name":"桂枝","remark":"桂枝","p_id":"01","full_path":"www.baidu.com"};
	html = "<option value=\""+json._id+"!@!"+json.category_name+"\">"+json.category_name+"</option>";
	$("#regSmallClass").append(html);
	var data = eval(json);
	for ( var i = 0; i < data.length; i++) 
	{
		html += "<option value=\""+data[i]._id+"!@!"+data[i].category_name+"\">"+data[i].category_name+"</option>";
	}
	
	
//	var jsonData = {"_id":bigValue};
//	$.get("http://127.0.0.1:8888/" + new Date().getTime(), function(data){ 
//		alert("data==="+data);
//		$("#smallClass").html(data);
//		
//		var dataObj=eval(data);//转换为json对象
//		$("#id").html("编号："+dataObj.id);
//		$("#name").html("姓名："+dataObj.name);
//		$("#arg").html("年龄："+dataObj.arg);
//		
//		$("span").html(dataObj.full_path);
//		
//		alert("Data Loaded: "+new Date().getTime()); 
//	});
//	$.ajax({
//		url : "http://127.0.0.1:8888/", //后台处理程序
//		type : 'GET', //数据发送方式
//		contentType : 'application/x-www-form-urlencoded; charset=utf-8',
//		dataType : 'json', //接受数据格式
//		data : {
//			'jsonData' : jsonData
//		}, //要传递的数据,
//		success : function(json) {
//			alert(json);
//			if (json != "null") {
//				$("#smallClass").html("");
//			  var data = eval(json);
//				for ( var i = 0; i < data.length; i++) {
//					html += "<option value=\""+data[i]._id+"\">"+data[i].category_name+"</option>";
//				}
//				$("#smallClass").append(html);
//			}else{
//				alert("没有数据");
//			}
//
//		}
//	});
}
/**
 * 提交小分类信息
 */
function submitClass()
{
	var regSmallClass = $("#regSmallClass").val();//小分类
	$("#category_id").val(regSmallClass.split("!@!")[0]);
	$("#category_name").val(regSmallClass.split("!@!")[1]);
	$("#medicine_classify").modal('hide');
}
/**
 * 校验金额
 * @param {Object} tar
 * @return {TypeName} 
 */
function checkMoney(tar) {
	var reg = /^(([0-9]+[\.]?[0-9]{1,2})|[1-9])$/;
	var value = $(tar).val();
	if (!reg.test(value)) {
		$(tar).val("");

		alert("请输入正确的货币金额，可保留两位小数");
		$(tar).focus();
		return false;
	}
}
/**
 * 校验药品量
 * @param {Object} tar
 * @return {TypeName} 
 */
function checkNum(tar) {
	var reg = /^(([0-9]+[\.]?[0-9]{1,2})|[1-9])$/;
	var value = $(tar).val();
	if (!reg.test(value)) {
		$(tar).val("");

		alert("请输入正确的药品量，可保留两位小数");
		$(tar).focus();
		return false;
	}
}
/**
 * 检验该药品是否已经登记过
 * @param {Object} obj
 */
function checkMedicine(obj)
{
	var medicineName = obj.value;
	var json = {"name":medicineName};
	$.ajax({
		url : "http://127.0.0.1:8888/", //后台处理程序
		type : 'GET', 					//数据发送方式
		contentType : 'application/x-www-form-urlencoded; charset=utf-8',
		dataType : 'json', 				//接受数据格式
		data :JSON.stringify(json), 	//要传递的数据,
		success : function(json) {
			alert(json);
			if (json != "null") {
				$("#smallClass").html("");
			  var data = eval(json);
				for ( var i = 0; i < data.length; i++) {
					html += "<option value=\""+data[i]._id+"\">"+data[i].category_name+"</option>";
				}
				$("#smallClass").append(html);
			}else{
				alert("没有数据");
			}
		}
	});
}
/**
 *  弹出药品入库的对话框
 * @param med_id
 * @param code
 * @param med_name
 * @param unit
 * @param med_class_name
 * @param med_class_id
 */
function show_med_inport(med_id,code,med_name,unit,med_class_name,med_class_id)
{
	$("#med_inport_modal").modal('show');
	$("#med_name").val(med_name);
	$("#med_id").val(med_id);
	$("#med_code").val(med_code);
	$("#med_class_name").val(med_class_name);
	$("#med_class_id").val(med_class_id);
	$("#med_unit").html("&nbsp;"+unit+"&nbsp;");
}
/**
 * 药品入库
 */
function med_import()
{
	var json = "";
	var name = $("#med_name").val();
	var _id = $("#med_id").val();
	var code = $("#med_code").val();
	var med_class_name = $("#med_class_name").val();
	var med_class_id = $("#med_class_id").val();
	var buy_in_price = $("#medicine_buy_in_price").val();
	var sell_in_price = $("#medicine_sell_in_price").val();
	json = "{_id:"+_id+",category:{_id:"+med_class_id+",med_class_name:"+med_class_name+"},code:"+code+",name"+name+",buy_in_price:"+buy_in_price+",sell_in_price:"+sell_in_price+"}";
	$.ajax({
		url : "http://127.0.0.1:8888/", //后台处理程序
		type : 'GET', 					//数据发送方式
		contentType : 'application/x-www-form-urlencoded; charset=utf-8',
		dataType : 'json', 				//接受数据格式
		data :JSON.stringify(json), 	//要传递的数据,
		success : function(json) {
			alert(json);
			if (json != "null") {

			}else{
				alert("没有数据");
			}
		}
	});	
}