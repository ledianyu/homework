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
					  [ "1", "1", "1", "객관식", "Y" ]
					, [ "2", "1", "2", "객관식", "Y" ]
					, [ "3", "1", "3", "객관식", "Y" ]
					, [ "4", "1", "4", "객관식", "Y" ]
					, [ "5", "1", "5", "주관식", "N" ]
				];
	        
			var col_kor = [        
					  { title: "No" }
					, { title: "페이지" }
					, { title: "문항" }
					, { title: "유형" }
					, { title: "채점여부" }
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
					<h1 class="h3 mb-4 text-gray-800">문제관리 상세</h1>
				</div>
				<div class="col-lg-4 text-right">
	            	<p class="mb-4 ml-auto" id="cMenuPathV"></p>
	            </div>
            </div>
			
			<div class="card shadow mb-4">
			    <div class="card-header py-3">
			        <h6 class="m-0 font-weight-bold text-primary">문제집정보</h6>
			    </div>
			    <div class="card-body">
                	<div class="table-responsive">
	                    <table class="table table-bordered infoTable" width="100%" cellspacing="0">
	                    	<tbody>
	                            <tr>
	                                <th>문제집명</th>
	                                <td colspan="5">
	                                	테스트문제집
	                                </td>
	                            </tr>
	                            <tr>
	                                <th>학교구분</th>
	                                <td>
	                                	초등학교
	                                </td>
	                                <th>학년</th>
	                                <td>
	                                	4학년
	                                </td>
	                                <th>학기</th>
	                                <td>
	                                	1학기
	                                </td>
	                            </tr>
	                    	</tbody>
	                    </table>
					</div>
			    </div>
			</div>
			
			<div class="row">
				
			    <div class="col-lg-6">
			
			        <!-- Circle Buttons -->
			        <div class="card shadow mb-4">
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
					                <a href="#" class="btn btn-success btn-icon-split btn-sm">
					                    <span class="icon text-white-50">
					                        <i class="fas fa-file-excel"></i>
					                    </span>
					                    <span class="text">엑셀업로드</span>
					                </a>
				                </div>
				            	<div class="col-lg-6 text-right">
					                <a href="#" class="btn btn-info btn-icon-split btn-sm">
					                    <span class="icon text-white-50">
					                        <i class="fas fa-plus"></i>
					                    </span>
					                    <span class="text">신규</span>
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
                                <table class="table table-bordered infoTable" width="100%" cellspacing="0">
                                	<tbody>
                                        <tr>
                                            <th>페이지</th>
                                            <td>
                                            	<input type="text" id="page" name="page" class="form-control form-control-sm" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>문항</th>
                                            <td>
                                            	<input type="text" id="qNum" name="qNum" class="form-control form-control-sm" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>유형</th>
                                            <td>
		                                    	<select id="qTypeCd" name="qTypeCd" class="custom-select custom-select-sm col-w-3">
		                                    		<option>객관식</option>
		                                    		<option>주관식</option>
		                                    		<option>주관식(분수)</option>
		                                    	</select>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>자동 채점여부</th>
                                            <td>
		                                    	<select id="aMarkingYn" name="aMarkingYn" class="custom-select custom-select-sm col-w-3">
		                                    		<option>Y</option>
		                                    		<option>N</option>
		                                    	</select>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>정답</th>
                                            <td>
												<table>
													<tr>
														<td class="border-0 pt-1 pb-1">
															<label class="form-check-label" for="answer1">
															  1
															</label>
														</td>
														<td class="border-0 pt-1 pb-1">
															<label class="form-check-label" for="answer2">
															  2
															</label>
														</td>
														<td class="border-0 pt-1 pb-1">
															<label class="form-check-label" for="answer3">
															  3
															</label>
														</td>
														<td class="border-0 pt-1 pb-1">
															<label class="form-check-label" for="answer4">
															  4
															</label>
														</td>
														<td class="border-0 pt-1 pb-1">
															<label class="form-check-label" for="answer5">
															  5
															</label>
														</td>
													<tr>
													<tr>
														<td class="border-0 pt-1 pb-1">
															<input type="checkbox" value="" id="answer1">
														</td>
														<td class="border-0 pt-1 pb-1">
															<input type="checkbox" value="" id="answer2">
														</td>
														<td class="border-0 pt-1 pb-1">
															<input type="checkbox" value="" id="answer3">
														</td>
														<td class="border-0 pt-1 pb-1">
															<input type="checkbox" value="" id="answer4">
														</td>
														<td class="border-0 pt-1 pb-1">
															<input type="checkbox" value="" id="answer5">
														</td>
													<tr>
												</table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>힌트 1</th>
                                            <td>
												<div class="input-group">
													<textarea id="hint1" name="hint1" class="form-control" aria-label="With textarea"></textarea>
												</div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>힌트 2</th>
                                            <td>
												<div class="input-group">
													<textarea id="hint2" name="hint2" class="form-control" aria-label="With textarea"></textarea>
												</div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>힌트 3</th>
                                            <td>
												<div class="input-group">
													<textarea id="hint3" name="hint3" class="form-control" aria-label="With textarea"></textarea>
												</div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>링크</th>
                                            <td>
                                            	<input type="text" id="commUrl" name="commUrl" class="form-control form-control-sm" />
                                            </td>
                                        </tr>
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