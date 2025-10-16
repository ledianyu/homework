<%@page import="java.util.List"%>
<%@page import="hw.sysmng.service.MenuVO"%>
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

	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	    <meta name="description" content="">
	    <meta name="author" content="">

		<link rel="shortcut icon" href="data:image/x-icon;," type="image/x-icon">	
	    <title>제대로 수학</title>
	
	    <!-- Custom fonts for this template-->
	    <link href="/js/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
	    <link
	        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	        rel="stylesheet">
	
	    <!-- Custom styles for this template-->
	    <link href="/css/common/sb-admin-2.css" rel="stylesheet">
	    
	    <link href="/css/common/common.css" rel="stylesheet">
	    
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
	
	<body id="page-top">
    <c:set var="cUrlPath" value="${requestScope['javax.servlet.forward.request_uri']}"></c:set>
    <c:set var="cUrl" value="${fn:split(cUrlPath, '/')[0]}"></c:set>
	    <!-- Page Wrapper -->
	    <div id="wrapper">
				
	        <!-- Sidebar -->
	        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">
	
	            <!-- Sidebar - Brand -->
	            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="/main">
	                <img class="sidebar-brand-img" alt="제대로 수학 로고" src="/images/logo_s_w.png" width="192px" height="72px">
	            </a>
	
	            <!-- Divider -->
	            <hr class="sidebar-divider my-0">
	            <!-- Nav Item - Pages Collapse Menu -->
				
	            <c:forEach var="menu" items="${ssMnuList}" varStatus="menuStatus">
	            	<li class="nav-item<c:if test="${cUrl eq fn:split(menu.programUrl, '/')[0]}"> active</c:if>">
		                <a class="nav-link collapsed" href="<c:if test="${menu.menuType ne 'C00103'}">${menu.programUrl}</c:if>" data-toggle="collapse" data-target="#collapse${menuStatus.index}"
		                    aria-expanded="true" aria-controls="collapse${menuStatus.index}">
		                    <i class="${menu.icon}"></i>
		                    <span>${menu.kname}</span>
		                </a>
		                <div id="collapse${menuStatus.index}" class="collapse<c:if test="${cUrl eq fn:split(menu.programUrl, '/')[0]}"> show</c:if>" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
		                    <div class="bg-white py-2 collapse-inner rounded">
		                    	<c:forEach var="menu2" items="${menu.menu2List}" varStatus="menu2Status">
		                        	<a class="collapse-item<c:if test="${fn:indexOf(cUrlPath,menu2.programUrl) > -1}"> active</c:if>" href="<c:if test="${menu2.menuType ne 'C00103'}">${menu2.programUrl}</c:if>">${menu2.kname}</a>
				                    <c:if test="${fn:indexOf(cUrlPath,menu2.programUrl) > -1}">
					                    <input type="hidden" id="cMenuPath" value="${menu2.menuPath}"/>
				                    </c:if>
		                        </c:forEach>
		                    </div>
		                </div>
	            	</li>
	            </c:forEach>
	
	            <!-- Divider -->
	            <hr class="sidebar-divider d-none d-md-block">
	            
	            <!-- Sidebar Toggler (Sidebar) -->
	            <div class="text-center d-none d-md-inline">
	                <button class="rounded-circle border-0" id="sidebarToggle"></button>
	            </div>
	
	        </ul>
	        <!-- End of Sidebar -->
	    	
	        <!-- Content Wrapper -->
	        <div id="content-wrapper" class="d-flex flex-column">
	
	            <!-- Main Content -->
	            <div id="content">
	            
				    <!-- Topbar -->
				    <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">
				
				        <!-- Sidebar Toggle (Topbar) -->
				        <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
				            <i class="fa fa-bars"></i>
				        </button>
				
				        <!-- Topbar Navbar -->
				        <ul class="navbar-nav ml-auto">
				
				            <div class="topbar-divider d-none d-sm-block"></div>
				
				            <!-- Nav Item - User Information -->
				            <li class="nav-item dropdown no-arrow">
				                <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
				                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				                    <span class="mr-2 d-none d-lg-inline text-gray-600 small">${ssUserNm}</span>
				                    <img class="img-profile rounded-circle"
				                        src="/images/sb-admin-2/undraw_profile.svg">
				                </a>
				                <!-- Dropdown - User Information -->
				                <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
				                    aria-labelledby="userDropdown">
				                    <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
				                        <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
				                        Logout
				                    </a>
				                </div>
				            </li>
				
				        </ul>
				
				    </nav>
				    <!-- End of Topbar -->
				    
					<tiles:insertAttribute name="content"/>
										
					<!-- Footer -->
				    <footer class="sticky-footer bg-white">
				        <div class="container my-auto">
				            <div class="copyright text-center my-auto">
				                <span>Copyright &copy; ledian 2025</span>
				            </div>
				        </div>
				    </footer>
				    <!-- End of Footer -->
					
				</div>
			</div>
		</div>
		

	    <!-- Scroll to Top Button-->
	    <a class="scroll-to-top rounded" href="#page-top">
	        <i class="fas fa-angle-up"></i>
	    </a>
	
	    <!-- Logout Modal-->
	    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
	        aria-hidden="true">
	        <div class="modal-dialog" role="document">
	            <div class="modal-content">
	                <div class="modal-header">
	                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
	                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
	                        <span aria-hidden="true">×</span>
	                    </button>
	                </div>
	                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
	                <div class="modal-footer">
	                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
	                    <a class="btn btn-primary" href="/logout">Logout</a>
	                </div>
	            </div>
	        </div>
	    </div>
	    
	</body>
  
</html>