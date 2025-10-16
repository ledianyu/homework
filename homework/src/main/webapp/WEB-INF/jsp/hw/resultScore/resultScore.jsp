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
		
			var dataSet_user = [        
					  [ "1", "테스터1" ]
					, [ "2", "테스터2" ]
					, [ "3", "테스터3" ]
					, [ "4", "테스터4" ]
					, [ "5", "테스터5" ]
					, [ "6", "테스터6" ]
					, [ "7", "테스터7" ]
					, [ "8", "테스터8" ]
					, [ "9", "테스터9" ]
					, [ "10", "테스터10" ]
					, [ "11", "테스터11" ]
					, [ "12", "테스터12" ]
					, [ "13", "테스터13" ]
					, [ "14", "테스터14" ]
					, [ "15", "테스터15" ]
				];
	        
			var col_kor_user = [        
					  { title: "No" }
					, { title: "이름" }
				];
		
			var dataSet_book = [        
					  [ "테스트문제집1" ]
					, [ "테스트문제집2" ]
					, [ "테스트문제집3" ]
					, [ "테스트문제집4" ]
					, [ "테스트문제집5" ]
				];
	        
			var col_kor_book = [        
					  { title: "문제집명" }
				];
		
			var dataSet_page = [        
					  [ "1" ]
					, [ "2" ]
					, [ "3" ]
					, [ "4" ]
					, [ "5" ]
				];
	        
			var col_kor_page = [        
					  { title: "페이지" }
				];
		
			var dataSet = [        
					  [ "1", "3", "○", "1", "N", "2", "1" ]
					, [ "2", "4", "Χ", "2", "N", "2", "2" ]
					, [ "3", "2", "○", "0", "N", "2", "0" ]
					, [ "4", "5", "○", "0", "N", "2", "0" ]
					, [ "5", "1", "Χ", "3", "Y", "2", "3" ]
				];
	        
			var col_kor = [        
					  { title: "문항" }
					, { title: "정답" }
					, { title: "채점" }
					, { title: "힌트" }
					, { title: "해설시청여부" }
					, { title: "최종회차" }
					, { title: "최종사용힌트" }
				];
		
			$(function() {
				
				$('#dataTableUser').DataTable({
					  language : lang_kor
					, columns: col_kor_user
					, data: dataSet_user
					, searching: false
					, paging: false
					, info: false
					, ordering: false
					, columnDefs: [
				        { targets: 0, width: 25 }
				    ]
				});
				
				$('#dataTableBook').DataTable({
					  language : lang_kor
					, columns: col_kor_book
					, data: dataSet_book
					, searching: false
					, paging: false
					, info: false
					, ordering: false
				});
				
				$('#dataTablePage').DataTable({
					  language : lang_kor
					, columns: col_kor_page
					, data: dataSet_page
					, searching: false
					, paging: false
					, info: false
					, ordering: false
					, columnDefs: [
				        { targets: 0, width: 30 }
				    ]
				});
				
				$('#dataTable').DataTable({
					  language : lang_kor
					, columns: col_kor
					, data: dataSet
					, searching: false
					, paging: false
					, info: false
					, ordering: false
				});
			  
				$('#cMenuPathV').html("Home > " + $('#cMenuPath').val());
			});
		</script>
		
		<!-- Begin Page Content -->
		<div class="container-fluid">

			<!-- Page Heading -->
			<div class="row">
				<div class="col-lg-8">
					<h1 class="h3 mb-4 text-gray-800">채점결과</h1>
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
	                                    	<select id="schSchoolCd" name="schSchoolCd" class="custom-select custom-select-sm col-w-6">
	                                    		<option>전체</option>
	                                    		<option>초등학교</option>
	                                    		<option>중학교</option>
	                                    		<option>고등학교</option>
	                                    	</select>
	                                    	<select id="schGradeCd" name="schGradeCd" class="custom-select custom-select-sm col-w-4">
	                                    		<option>전체</option>
	                                    		<option>1학년</option>
	                                    		<option>2학년</option>
	                                    		<option>3학년</option>
	                                    	</select>
	                                    </td>
	                                    <th>성명</th>
	                                    <td><input type="text" id="schKname" name="schKname" class="form-control form-control-sm"/></td>
	                                    <td class="align-content-center">
											<div class="form-check">
												<input class="form-check-input" type="checkbox" value="" id="schOldBookYn" name="schOldBookYn">
												<label class="form-check-label" for="schOldBookYn">
												  비활성 문제집 보기
												</label>
											</div>
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
			
			<div class="row">
				
			    <div class="col-lg-6" >
			
			        <!-- Circle Buttons -->
			        <div class="card shadow mb-4">
			            <div class="card-body d-flex">
                            <div class="table-responsive col-lg-4">
                                <table class="table table-bordered" id="dataTableUser" width="100%" cellspacing="0">
                                </table>
                            </div>

                            <div class="table-responsive col-lg-5 pl-3">
                                <table class="table table-bordered" id="dataTableBook" width="100%" cellspacing="0">
                                </table>
                            </div>

                            <div class="table-responsive col-lg-3 pl-3">
                                <table class="table table-bordered" id="dataTablePage" width="100%" cellspacing="0">
                                </table>
                            </div>
			            </div>
			        </div>
			
			    </div>
			
			    <div class="col-lg-6">

			        <div class="card shadow mb-4">
			            <div class="card-header py-3 d-flex">
				            	<div class="col-lg-6">
				                </div>
				            	<div class="col-lg-6 text-right">
					                <a href="#" class="btn btn-danger btn-icon-split btn-sm">
					                    <span class="icon text-white-50">
					                        <i class="fas fa-pencil-alt"></i>
					                    </span>
					                    <span class="text">채점</span>
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
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                </table>
                            </div>
			            </div>
			
			    </div>
			
			</div>
		
		</div>
		<!-- /.container-fluid -->
	    
	</body>
</html>