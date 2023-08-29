<%@page import="org.sp.app0828.domain.Admin"%>
<%@ page contentType="text/html; charset=UTF-8"%>
		<aside class="main-sidebar sidebar-dark-primary elevation-4">
			<!-- Brand Logo -->
			<a href="index3.html" class="brand-link"> <img
				src="/static/admin/dist/img/AdminLTELogo.png" alt="AdminLTE Logo"
				class="brand-image img-circle elevation-3" style="opacity: .8">
				<span class="brand-text font-weight-light">쇼핑몰</span>
			</a>

			<!-- Sidebar -->
			<div class="sidebar">
				<!-- Sidebar user panel (optional) -->
				<div class="user-panel mt-3 pb-3 mb-3 d-flex">
					<div class="image">
						<img src="/static/admin/dist/img/user2-160x160.jpg"
							class="img-circle elevation-2" alt="User Image">
					</div>
					<div class="info">
					<%
						//로그인 성공한자는 세션에 adminDTO 를 넣어두었음으로
						//필요할때는 언제든지(브라우저를 닫지 x) 이 요청과 관련된 세션을 접근할수 있다.
						Admin admin = (Admin)session.getAttribute("admin");
					
					%>
						<a href="#" class="d-block"><%//=admin.getAdmin_id() %></a>
					</div>
				</div>

				<!-- SidebarSearch Form -->
				<div class="form-inline">
					<div class="input-group" data-widget="sidebar-search">
						<input class="form-control form-control-sidebar" type="search"
							placeholder="Search" aria-label="Search">
						<div class="input-group-append">
							<button class="btn btn-sidebar">
								<i class="fas fa-search fa-fw"></i>
							</button>
						</div>
					</div>
				</div>

				<!-- Sidebar Menu -->
				<nav class="mt-2">
					<ul class="nav nav-pills nav-sidebar flex-column"
						data-widget="treeview" role="menu" data-accordion="false">
						<!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
						<!-- 상품관리 -->
						<li class="nav-item"><a href="#"
							class="nav-link"> <i
								class="nav-icon fas fa-tachometer-alt"></i>
								<p>
									상품관리 <i class="right fas fa-angle-left"></i>
								</p>
						</a>
							<ul class="nav nav-treeview">
								<li class="nav-item"><a href="./index.html"
									class="nav-link active"> <i class="far fa-circle nav-icon"></i>
										<p>카테고리관리</p>
								</a></li>
								<li class="nav-item"><a href="/admin/product/registform"
									class="nav-link"> <i class="far fa-circle nav-icon"></i>
										<p>상품등록</p>
								</a></li>
								<li class="nav-item"><a href="/admin/product/list"
									class="nav-link"> <i class="far fa-circle nav-icon"></i>
										<p>상품목록</p>
								</a></li>
							</ul></li>
							
							<!-- 회원관리 -->
								<li class="nav-item"><a href="#"
							class="nav-link"> <i
								class="nav-icon fas fa-tachometer-alt"></i>
								<p>
									회원관리 <i class="right fas fa-angle-left"></i>
								</p>
						</a>
							<ul class="nav nav-treeview">
								<li class="nav-item"><a href="./index.html"
									class="nav-link active"> <i class="far fa-circle nav-icon"></i>
										<p>회원조회</p>
								</a></li>
								<li class="nav-item"><a href="./index2.html"
									class="nav-link"> <i class="far fa-circle nav-icon"></i>
										<p>메일발송</p>
								</a></li>
							</ul></li>
							
							<!-- 주문관리 -->
								<li class="nav-item"><a href="#"
							class="nav-link"> <i
								class="nav-icon fas fa-tachometer-alt"></i>
								<p>
									주문관리 <i class="right fas fa-angle-left"></i>
								</p>
						</a>
							<ul class="nav nav-treeview">
								<li class="nav-item"><a href="./index.html"
									class="nav-link active"> <i class="far fa-circle nav-icon"></i>
										<p>주문조회</p>
								</a></li>
								<li class="nav-item"><a href="./index2.html"
									class="nav-link"> <i class="far fa-circle nav-icon"></i>
										<p>반품관리</p>
								</a></li>
							</ul></li>
						
					</ul>
				</nav>
				<!-- /.sidebar-menu -->
			</div>
			<!-- /.sidebar -->
		</aside>

