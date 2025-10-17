<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<body>

		<%@include file="../common/cmmnInclude.jsp"%>
	    
	    <!-- Page level plugins -->
	    <script src="/js/datatables/jquery.dataTables.min.js"></script>
	    <script src="/js/datatables/dataTables.bootstrap4.min.js"></script>
	    
		<script type="text/javaScript" language="javascript" defer="defer">
		
			var dataSet = [        
					  [ "1", "test1", "테스터1", "초등학교", "4" ]
					, [ "2", "test2", "테스터2", "초등학교", "5" ]
					, [ "3", "test3", "테스터3", "초등학교", "6" ]
					, [ "4", "tesr4", "테스터4", "중학교", "2" ]
					, [ "5", "test5", "테스터5", "고등학교", "1" ]
				];
	        
			var col_kor = [        
					  { title: "No" }
					, { title: "ID" }
					, { title: "이름" }
					, { title: "학교구분" }
					, { title: "학년" }
				];
		
			var dataSet_sub = [        
					  [ "1", "", "1", "테스트문제집1", "초등학교 4학년 1학기", "Y" ]
					, [ "2", "", "2", "테스트문제집2", "초등학교 4학년 1학기", "Y" ]
					, [ "3", "", "3", "테스트문제집3", "초등학교 4학년 2학기", "Y" ]
					, [ "4", "", "4", "테스트문제집4", "초등학교 4학년 2학기", "Y" ]
					, [ "5", "", "5", "테스트문제집5", "초등학교 4학년 2학기", "N" ]
				];
	        
			var col_kor_sub = [        
					  { title: "No" }
					, { title: "" }
					, { title: "문제집명" }
					, { title: "유형" }
					, { title: "사용여부" }
				];
		
			$(function() {
				$('#dataTable').DataTable({
					  language : lang_kor
					, columns: col_kor
					, data: dataSet
					, searching: false
				});
				
				$('#dataTableSub').DataTable({
					  language : lang_kor
					, columns: col_kor_sub
					, data: dataSet_sub
					, searching: false
				});
			  
				$('#cMenuPathV').html("Home > " + $('#cMenuPath').val());
			});
		</script>
		
		<!-- Begin Page Content -->
		<div class="container-fluid">

			<!-- Page Heading -->
			<div class="row">
				<div class="col-lg-8">
					<h1 class="h3 mb-4 text-gray-800">학생관리</h1>
				</div>
				<div class="col-lg-4 text-right">
	            	<p class="mb-4 ml-auto" id="cMenuPathV"></p>
	            </div>
            </div>
			
			<div class="card shadow mb-4">
			    <div class="card-body">
                	<div class="table-responsive d-flex">
						<div class="col-lg-10">
                        	<table class="table table-bordered infoTable" width="100%" cellspacing="0">
	                          	<tbody>
	                                <tr>
	                                    <th>유형</th>
	                                    <td>
	                                    	<select id="schSchoolCd" name="schSchoolCd" class="custom-select custom-select-sm col-w-3">
	                                    		<option>전체</option>
	                                    		<option>초등학교</option>
	                                    		<option>중학교</option>
	                                    		<option>고등학교</option>
	                                    	</select>
	                                    	<select id="schGradeCd" name="schGradeCd" class="custom-select custom-select-sm col-w-3">
	                                    		<option>전체</option>
	                                    		<option>1학년</option>
	                                    		<option>2학년</option>
	                                    		<option>3학년</option>
	                                    	</select>
	                                    </td>
	                                    <th>성명</th>
	                                    <td><input type="text" id="schKname" name="schKname" class="form-control form-control-sm"/></td>
	                                </tr>
                            	</tbody>
							</table>
                        </div>
						<div class="col-lg-2 align-content-center text-right">
							<a href="#" class="btn btn-primary btn-icon-split">
			                    <span class="icon text-white-50">
			                        <i class="fas fa-search"></i>
			                    </span>
			                    <span class="text">검색</span>
			                </a>
						</div>
					</div>
			    </div>
			</div>
			
			<div class="row">
				
			    <div class="col-lg-6">
			
			        <!-- Circle Buttons -->
			        <div class="card shadow mb-4">
			            <div class="card-header py-3 d-flex">
				            	<div class="col-lg-6">
				                </div>
				            	<div class="col-lg-6 text-right">
					                <a href="#" class="btn btn-primary btn-icon-split btn-sm">
					                    <span class="icon text-white-50">
					                        <i class="fas fa-level-up-alt"></i>
					                    </span>
					                    <span class="text">학년진급</span>
					                </a>
				                </div>
			            </div>
			            <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                </table>
                            </div>
			            </div>
			        </div>
			
			    </div>
			
			    <div class="col-lg-6">

			        <div class="card shadow mb-4">
			            <div class="card-header py-3 d-flex">
				            	<div class="col-lg-6">
					                <a href="#" class="btn btn-info btn-icon-split btn-sm">
					                    <span class="icon text-white-50">
					                        <i class="fas fa-plus"></i>
					                    </span>
					                    <span class="text">문제집추가</span>
					                </a>
				                </div>
				            	<div class="col-lg-6 text-right">
					                <a href="#" class="btn btn-danger btn-icon-split btn-sm">
					                    <span class="icon text-white-50">
					                        <i class="fas fa-trash-alt"></i>
					                    </span>
					                    <span class="text">삭제</span>
					                </a>
					                <a href="#" class="btn btn-primary btn-icon-split btn-sm">
					                    <span class="icon text-white-50">
					                        <i class="fas fa-save"></i>
					                    </span>
					                    <span class="text">저장</span>
					                </a>
				                </div>
			            </div>
			            <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTableSub" width="100%" cellspacing="0">
                                </table>
                            </div>
			            </div>
			
			    </div>
			
			</div>
		
		</div>
		<!-- /.container-fluid -->
	    
	</body>
</html>