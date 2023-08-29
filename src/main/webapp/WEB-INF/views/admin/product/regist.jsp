<%@page import="org.sp.app0828.domain.TopCategory"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	List<TopCategory> topList = (List) request.getAttribute("topList");
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>관리자| 상품등록</title>
<%@ include file="../inc/top_link.jsp"%>
</head>
<body class="hold-transition sidebar-mini layout-fixed">
	<div class="wrapper">

		<!-- Preloader -->
		<div
			class="preloader flex-column justify-content-center align-items-center">
			<img class="animation__shake"
				src="/static/admin/dist/img/AdminLTELogo.png" alt="AdminLTELogo"
				height="60" width="60">
		</div>

		<!-- Navbar -->
		<%@ include file="../inc/top_navi.jsp"%>
		<!-- /.navbar -->

		<!-- Main Sidebar Container -->
		<%@ include file="../inc/sidemenu.jsp"%>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<div class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1 class="m-0">상품등록</h1>
						</div>
						<!-- /.col -->
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a href="#">Home</a></li>
								<li class="breadcrumb-item active">상품등록</li>
							</ol>
						</div>
						<!-- /.col -->
					</div>
					<!-- /.row -->
				</div>
				<!-- /.container-fluid -->
			</div>
			<!-- /.content-header -->

			<!-- Main content -->
			<section class="content">
				<div class="container-fluid">

					<!-- cart 영역 시작 -->
					<form id="form1">
						<div class="card card-default">

							<!-- cart 헤더 시작 -->
							<div class="card-header">
								<h3 class="card-title">추가하기</h3>

								<div class="card-tools">
									<button type="button" class="btn btn-tool"
										data-card-widget="collapse">
										<i class="fas fa-minus"></i>
									</button>
									<button type="button" class="btn btn-tool"
										data-card-widget="remove">
										<i class="fas fa-times"></i>
									</button>
								</div>
							</div>

							<!-- cart 헤더 끝 -->


							<!-- cart 바디 시작 -->
							<div class="card-body">

								<!-- row  시작-->
								<div class="row">

									<!-- 좌측 column 시작-->
									<div class="col-md-6">
										<div class="form-group">
											<label>상위카테고리</label> <select name="topcategory_idx"
												class="form-control select2" style="width: 100%;">
												<option selected="selected">상위카테고리를 선택하세요</option>
												<%
													for (TopCategory topCategory : topList) {
												%>
												<option value="<%=topCategory.getTopcategory_idx()%>"><%=topCategory.getTop_name()%></option>
												<%
													}
												%>
											</select>
										</div>
										<!-- /.form-group -->
									</div>
									<!-- 좌측 column  끝-->


									<!-- 우측 column  시작-->
									<div class="col-md-6">
										<div class="form-group">
											<label>하위카테고리</label> <select name="subcategory_idx"
												class="form-control select2" style="width: 100%;">
												<option selected="selected">하위카테고리를 선택하세요</option>
												<%
													//for(SubCategory subCategory:subList){
												%>
												<option value="">1</option>
												<%
													//}
												%>
											</select>
										</div>
										<!-- /.form-group -->
									</div>
									<!-- 우측 column  끝-->
								</div>
								<!-- row 끝 -->
								<div class="row">
									<div class="col-md-12">
										<div class="form-group">
											<input type="text" class="form-control" id="exampleInputEmail1" placeholder="brand">
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-12">
										<div class="form-group">
											<input type="text" class="form-control" id="exampleInputEmail1" placeholder="price">
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-12">
										<div class="form-group">
											<input type="text" class="form-control" id="exampleInputEmail1" placeholder="Enter email">
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-12">
										<div class="form-group">
											<textarea id="summernote" style="display: none;"> </textarea>
										</div>
									</div>
								</div>
								<!-- cart 바디 끝 -->

							</div>
					</form>
					<!-- cart 영역 끝 -->

					<div class="card-footer">
						Visit <a href="https://select2.github.io/">Select2
							documentation</a> for more examples and information about the plugin.
					</div>
				</div>
		</div>
		<!-- /.container-fluid -->
		</section>
		<!-- /.content -->
	</div>
	<!-- /.content-wrapper -->
	<footer class="main-footer">
		<strong>Copyright &copy; 2014-2021 <a
			href="https://adminlte.io">AdminLTE.io</a>.
		</strong> All rights reserved.
		<div class="float-right d-none d-sm-inline-block">
			<b>Version</b> 3.2.0
		</div>
	</footer>

	<!-- Control Sidebar -->
	<aside class="control-sidebar control-sidebar-dark">
		<!-- Control sidebar content goes here -->
	</aside>
	<!-- /.control-sidebar -->
	</div>
	<!-- ./wrapper -->

	<%@ include file="../inc/bottom_link.jsp"%>
	<script type="text/javascript">
		function getSubList(topcategory_idx) {
			$
					.ajax({
						url : "/admin/subcategory/list?topcategory_idx="
								+ topcategory_idx,
						type : "GET",
						success : function(result, status, xhr) {
							//console.log(result[0].sub_name);
							//기존의 서브 카테고리 option 요소 제거하기
							//how to remove all option in select box using jquery
							$("select[name='subcategory_idx']").empty();
							let tag = "<option value='0'>하위 카테고리를 선택하세요</option>";
							for (let i = 0; i < result.length; i++) {
								tag += "<option value='"+result[i].subcategory_idx+"'> "
										+ result[i].sub_name + "</option>";
							}
							$("select[name='subcategory_idx']").html(tag);

						}
					});
		}
		$(function() {
			//select박스에 체인지 이벤트 연결
			$("select[name='topcategory_idx']").on("change", function() {
				//하위 카테고리 목록을 달라고 서버에 전송한다. topcategory_idx 값을
				//alert($(this).val());
				getSubList($(this).val()); //비동기 요청을 시도하자
			});
			//서머노트 연결하기
			 $('#summernote').summernote()
			    // CodeMirror
			    CodeMirror.fromTextArea(document.getElementById("codeMirrorDemo"), {
			      mode: "htmlmixed",
			      theme: "monokai"
			    });

		});
	</script>
</body>
</html>







