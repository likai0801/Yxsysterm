$(function(){
	//格式化日期,formatter是转换日期的函数,这个函数提供一个'data'参数和返回一个string类型值
    $('.easyui-datebox').datebox({ 
    	    formatter: function(date){ 
    	    	var y = date.getFullYear();  
    	    	var m = date.getMonth() + 1;  
    	    	var d = date.getDate();  
    	    	return y + '-' + (m < 10 ? '0' + m : m) + '-' + (d < 10 ? '0' + d : d);  
    	    }
     });
});
function reload(){
	window.location.reload();
}
function help(msg){
	alert('欢迎使用'+msg);
}

function to(url){
	window.location.href=url;
}
function back(){
	history.go(-1);
}
function save(url){
	alert('保存成功！');
	to(url);
}
function add(url){
	alert('新建成功！');
	to(url);
}
function del(msg){
	if (window.confirm("确认删除"+msg+"？")){
		reload();
	}
}
function setCurTime(oid){
	var now=new Date();
	var year=now.getYear();
	var month=now.getMonth();
	var day=now.getDate();
	var hours=now.getHours();
	var minutes=now.getMinutes();
	var seconds=now.getSeconds();
	var timeString = year+"-"+month+"-"+day+" "+hours+":"+minutes+":"+seconds;
	var oCtl = document.getElementById(oid);
	oCtl.value = timeString;
}