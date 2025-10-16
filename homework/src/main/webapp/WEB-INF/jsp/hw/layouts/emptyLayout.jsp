<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"  %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="description" content="">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<link rel="shortcut icon" href="data:image/x-icon;," type="image/x-icon">	
	    
	    <script src="/js/jquery-3.7.1.min.js"></script>
	    
		<script type="text/javaScript" language="javascript" defer="defer">
			$(function(){
			
				/* 결과 메시지가 있으면 */
				if(!${empty resultMsg}) { 
					alert('${resultMsg}'); 
				} 
	
			});
		</script>
		
	</head>
  
	<body>
		<div class='wrap'>
			<div class='content'>  	
				<div class="page_content">
					<tiles:insertAttribute name="content"/>
				</div>
			</div>
		</div>
	</body>
  
</html>