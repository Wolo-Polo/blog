<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
	<a class="navbar-brand" href="${request.pageContext.contexPath }/admin">WoloPolo
		Blog</a>
	<button class="btn btn-link btn-sm order-1 order-lg-0"
		id="sidebarToggle" href="#">
		<i class="fas fa-bars"></i>
	</button>
	<!-- Navbar Search-->
	<form
		class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
		<div class="input-group">
			<input class="form-control" type="text" placeholder="Tìm kiếm..."
				aria-label="Search" aria-describedby="basic-addon2" />
			<div class="input-group-append">
				<button class="btn btn-primary" type="button">
					<i class="fas fa-search"></i>
				</button>
			</div>
		</div>
	</form>
	<!-- Navbar-->
	<ul class="navbar-nav ml-auto ml-md-0">
		<li class="nav-item dropdown"><a class="nav-link dropdown-toggle"
			id="userDropdown" href="#" role="button" data-toggle="dropdown"
			aria-haspopup="true" aria-expanded="false"><i
				class="fas fa-user fa-fw"></i></a>
			<div class="dropdown-menu dropdown-menu-right"
				aria-labelledby="userDropdown">
				<a class="dropdown-item" href="#">Profile</a>
				<div class="dropdown-divider"></div>
				<a class="dropdown-item" href="${request.pageContext.contexPath }/perform_logout">Logout</a>
			</div></li>
	</ul>
</nav>
<div id="layoutSidenav">
	<div id="layoutSidenav_nav">
		<nav class="sb-sidenav accordion sb-sidenav-dark"
			id="sidenavAccordion">
			<div class="sb-sidenav-menu">
				<div class="nav">
					<div class="sb-sidenav-menu-heading">Cơ bản</div>
					<a class="nav-link" href="${request.pageContext.contexPath }/admin"><div
							class="sb-nav-link-icon">
							<i class="fas fa-tachometer-alt"></i>
						</div> Bảng điều khiển</a>
					<div class="sb-sidenav-menu-heading">Quản lý</div>
					<a class="nav-link collapsed" href="#" data-toggle="collapse"
						data-target="#collapseLayouts" aria-expanded="false"
						aria-controls="collapseLayouts"><div class="sb-nav-link-icon">
							<i class="fas fa-columns"></i>
						</div> Quản lý
						<div class="sb-sidenav-collapse-arrow">
							<i class="fas fa-angle-down"></i>
						</div></a>
					<div class="collapse" id="collapseLayouts"
						aria-labelledby="headingOne" data-parent="#sidenavAccordion">
						<nav class="sb-sidenav-menu-nested nav">
							<a class="nav-link"
								href="${request.pageContext.contexPath }/admin/managepost">Quản
								lý post</a> <a class="nav-link"
								href="${request.pageContext.contexPath }/admin/managecategory">Quản
								lý category</a> <a class="nav-link"
								href="${request.pageContext.contexPath }/admin/manageuser">Quản
								lý user</a> <a class="nav-link"
								href="${request.pageContext.contexPath }/admin/managerole">Quản
								lý phân quyền</a> <a class="nav-link"
								href="${request.pageContext.contexPath }/admin/managecontact">Quản
								lý contact</a>

						</nav>
					</div>

					<div class="sb-sidenav-menu-heading">Biểu đồ & thống kê</div>
					<a class="nav-link" href="charts.html"><div
							class="sb-nav-link-icon">
							<i class="fas fa-chart-area"></i>
						</div> Charts</a><a class="nav-link" href="tables.html"><div
							class="sb-nav-link-icon">
							<i class="fas fa-table"></i>
						</div> Tables</a>
				</div>
			</div>

		</nav>
	</div>
