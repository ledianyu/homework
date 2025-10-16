<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<body>

		<%@include file="../common/cmmnInclude.jsp"%>
	    
	    <!-- Page level plugins -->
	    <script src="/js/bootstrap-treeview/bootstrap-treeview.js"></script>
	    
		<script type="text/javaScript" language="javascript" defer="defer">


	        var treeData = [
	          {
	            text: '메인페이지',
	            href: '#parent1',
	            tags: ['4'],
	            nodes: [
	              {
	                text: '메뉴1',
	                href: '#child1',
	                tags: ['2'],
	                nodes: [
	                  {
	                    text: '메뉴1-1',
	                    href: '#grandchild1',
	                    tags: ['0']
	                  },
	                  {
	                    text: '메뉴1-2',
	                    href: '#grandchild2',
	                    tags: ['0']
	                  }
	                ]
	              },
	              {
	                text: '메뉴2',
	                href: '#child2',
	                tags: ['0']
	              }
	            ]
	          }
	        ];
		
			$(function() {
		        var $treeMenu = $('#tree').treeview({
						            data: treeData
						        });
		        var levels = 2;
		        $treeMenu.treeview('expandAll', { levels: levels });  
				$('#cMenuPathV').html("Home > " + $('#cMenuPath').val());
			});
		</script>
		
		<!-- Begin Page Content -->
		<div class="container-fluid">

			<!-- Page Heading -->
			<div class="row">
				<div class="col-lg-8">
					<h1 class="h3 mb-4 text-gray-800">메뉴관리</h1>
				</div>
				<div class="col-lg-4 text-right">
	            	<p class="mb-4 ml-auto" id="cMenuPathV"></p>
	            </div>
            </div>
			
	        <!-- DataTales -->
	        
			<div class="row">
				
			    <div class="col-lg-6">
			
			        <!-- Circle Buttons -->
			        <div class="card shadow mb-4">
			            <div class="card-body">
                            <div id="tree"></div>
			            </div>
			        </div>
			
			    </div>
			
			    <div class="col-lg-6">

			        <div class="card shadow mb-4">
			            <div class="card-header py-3 d-flex">
				            	<div class="col-lg-6">
				                </div>
				            	<div class="col-lg-6 text-right">
					                <a href="#" class="btn btn-info btn-icon-split btn-sm">
					                    <span class="icon text-white-50">
					                        <i class="fas fa-plus"></i>
					                    </span>
					                    <span class="text">신규</span>
					                </a>
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
                                <table class="table table-bordered infoTable" width="100%" cellspacing="0">
                                	<tbody>
                                        <tr>
                                            <th>메뉴ID</th>
                                            <td>
                                            	<input type="text" id="code" name="code" class="form-control form-control-sm" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>메뉴명</th>
                                            <td>
                                            	<input type="text" id="kname" name="kname" class="form-control form-control-sm" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>메뉴설명</th>
                                            <td>
                                            	<input type="text" id="kname" name="kname" class="form-control form-control-sm" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>단계</th>
                                            <td>
                                            	<input type="text" id="kname" name="kname" class="form-control form-control-sm" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>정렬순서</th>
                                            <td>
                                            	<input type="text" id="kname" name="kname" class="form-control form-control-sm" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>상위메뉴</th>
                                            <td>
                                            	<input type="text" id="kname" name="kname" class="form-control form-control-sm" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>URL</th>
                                            <td>
                                            	<input type="text" id="kname" name="kname" class="form-control form-control-sm" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>Icon</th>
                                            <td>
                                            	<input type="text" id="kname" name="kname" class="form-control form-control-sm" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>사용여부</th>
                                            <td>
		                                    	<select id="state" name="state" class="custom-select custom-select-sm col-w-3">
		                                    		<option>Y</option>
		                                    		<option>N</option>
		                                    	</select>
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