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
					  [ "1", "테스트문제집1" ]
					, [ "2", "테스트문제집2" ]
				];
            
			var col_kor = [        
					  { title: "No" }
					, { title: "문제집" }
				];
		
			$(function() {
				
				$('#dataTable').DataTable({
					  language : lang_kor
					, columns: col_kor
					, data: dataSet
					, searching: false
					, paging: false
					, info: false
					, ordering: false
				});
			});
		</script>
		
		<!-- Begin Page Content -->
		<div class="container-fluid">

			<!-- Page Heading -->
			<div class="row">
				<div class="col-lg-8">
					<h1 class="h3 mb-4 text-gray-800">틀린문제 다시풀기</h1>
				</div>
            </div>
			
			<div class="row">
			<div class="col-lg-12">
			
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
	        </div>
		
		</div>
		<!-- /.container-fluid --> 
	    
	</body>
</html>