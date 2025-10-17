<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 	<style media="(max-width:768px)">
        body{
            font-size: 0.6rem;
        }
    </style>
	<body>

		<%@include file="../common/cmmnInclude.jsp"%>
	    
	    <!-- Page level plugins -->
	    <script src="/js/datatables/jquery.dataTables.min.js"></script>
	    <script src="/js/datatables/dataTables.bootstrap4.min.js"></script>
	    
		<script type="text/javaScript" language="javascript" defer="defer">
		
			var dataSet = [        
					  [ "1", "", "" ]
					, [ "2", "", "" ]
					, [ "3", "", "" ]
					, [ "4", "", "" ]
					, [ "5", "", "" ]
				];
            
			var col_kor = [        
					  { title: "문항" }
					, { title: "정답" }
					, { title: "힌트보기" }
				];
		
			var dataSet_page = [        
					  [ "1" ]
					, [ "2" ]
					, [ "3" ]
					, [ "4" ]
					, [ "5" ]
					, [ "6" ]
					, [ "7" ]
					, [ "8" ]
					, [ "9" ]
					, [ "10" ]
					, [ "11" ]
					, [ "12" ]
					, [ "13" ]
					, [ "14" ]
					, [ "15" ]
					, [ "16" ]
					, [ "17" ]
					, [ "18" ]
					, [ "19" ]
				];
	        
			var col_kor_page = [        
					  { title: "페이지" }
				];

			
			$(function() {
				
				$('#dataTablePage').DataTable({
					  language : lang_kor
					, columns: col_kor_page
					, data: dataSet_page
					, searching: false
					, paging: false
					, info: false
					, ordering: false
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
				

				$('#sidebarToggleTop').trigger("click");
				
			});
			
		</script>
		
		<!-- Begin Page Content -->
		<div class="container-fluid pl-2 pr-2">

			<!-- Page Heading -->
			<div class="row">
				<div class="col-lg-8">
					<h1 class="h3 mb-4 text-gray-800">테스트문제집1</h1>
				</div>
            </div>
			
	        <!-- DataTales -->
	        <div class="card shadow mb-4">
	            <div class="card-header py-3 d-flex">
	            	<div class="col-lg-12 text-right">
		                <a href="#" class="btn btn-primary btn-icon-split btn-sm">
		                    <span class="icon text-white-50">
		                        <i class="fas fa-sd-card"></i>
		                    </span>
		                    <span class="text">임시저장</span>
		                </a>
		                <a href="#" class="btn btn-primary btn-icon-split btn-sm">
		                    <span class="icon text-white-50">
		                        <i class="fas fa-save"></i>
		                    </span>
		                    <span class="text">저장</span>
		                </a>
		            </div>
	            </div>
	            <div class="card-body d-flex p-1">

                    <div class="table-responsive" style="width: 15%;">
                        <table class="table table-bordered mbTable" id="dataTablePage" width="100%" cellspacing="0">
                        </table>
                    </div>
                            
	                <div class="table-responsive pl-3" style="width: 85%;">
	                    <table class="table table-bordered mbTable" id="dataTable" width="100%" cellspacing="0">
	                    </table>
	                </div>
	            </div>
	        </div>
		
		</div>
		<!-- /.container-fluid -->
	    
	</body>
</html>