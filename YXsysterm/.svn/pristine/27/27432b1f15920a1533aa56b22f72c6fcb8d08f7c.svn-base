<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<style type="text/css" >
    .pager{
        width:100%;
	    height:100%;
	    margin:5px;
	    font-family: "宋体", "Arial", "Helvetica", "sans-serif";
	    font-size: 14px;
	    text-align:center;
	    color:blue;
    }
    .pager a{
	    color:blue;
	    text-decoration:none;
    }
</style>
<div class="pager">
         共${pager.rowCount}条记录&nbsp;
         当前第${pager.currentPage}页&nbsp;
         共${pager.pageCount}页&nbsp;
	<c:choose>
        <c:when test="${pager.currentPage==1}">
                       　首页&nbsp;上一页
        </c:when>
	    <c:otherwise>
           <a href='javascript:void(0);' onclick='turnOverPage(1)'>首页&nbsp;</a>
           <a href='javascript:void(0);' onclick='turnOverPage("${pager.currentPage-1}")'>上一页&nbsp;</a>
        </c:otherwise>  
     </c:choose>
     <c:choose>
        <c:when test="${pager.currentPage==pager.pageCount}"> 
                          下一页&nbsp;尾页
        </c:when>
        <c:otherwise>  
           <a href='javascript:void(0);' onclick='turnOverPage("${pager.currentPage+1}")'>下一页&nbsp;</a>
           <a href='javascript:void(0);' onclick='turnOverPage("${pager.pageCount}")'>尾页&nbsp;</a>
        </c:otherwise> 
     </c:choose>   
     &nbsp;
           转到第<input type='text' size='2' id='jump' />页&nbsp;        
	<input type='button' value='GO' onclick='turnOverPage(parseInt(document.getElementById("jump").value))' />       
    
    <form name='pageForm' id='pageForm' action='${param.url}' method='post'>
		 <input type='hidden' id='pageNo' name='pageNo' value="${pager.currentPage}" />
    </form>
            
</div>           
<script type='text/javascript'>
    function turnOverPage(no){
    	if(isNaN(no)){
    		alert("页码为空或输入错误！");
    		return;
    	}
    	var totalPage = parseInt("${pager.pageCount}");
    	if(no > totalPage){
    		no = totalPage;
    	}else if(no < 1){
    		no = 1;
    	}
        var form = document.getElementById('pageForm');
        document.getElementById("pageNo").value=no;
        form.submit();
    }
</script>                      