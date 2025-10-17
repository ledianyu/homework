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
					  [ "1", "테스트문제집1", "초등학교", "4학년", "1학기", "사용", "" ]
					, [ "2", "테스트문제집2", "초등학교", "4학년", "1학기", "사용", "" ]
				];
            
			var col_kor = [        
					  { title: "No" }
					, { title: "문제집명" }
					, { title: "학교구분" }
					, { title: "학년" }
					, { title: "학기" }
					, { title: "사용여부" }
					, { title: "관리" }
				];
		
			$(function() {
				$('#dataTable').DataTable({
					  language : lang_kor
					, columns: col_kor
					, data: dataSet
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
					<h1 class="h3 mb-4 text-gray-800">문제관리</h1>
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
	                                    <th>문제집명</th>
	                                    <td><input type="text" id="schKname" name="schKname" class="form-control form-control-sm"/></td>
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
	                                    	<select id="schSemesterCd" name="schSemesterCd" class="custom-select custom-select-sm col-w-3">
	                                    		<option>전체</option>
	                                    		<option>1학기</option>
	                                    		<option>2학기</option>
	                                    	</select>
	                                    </td>
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
			
	        <!-- DataTales -->
	        <div class="card shadow mb-4">
	            <div class="card-body">
	                <div class="table-responsive">
	                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
	                    </table>
	                </div>
	            </div>
	        </div>
		
		</div>
		<!-- /.container-fluid -->
	    
	</body>
</html>