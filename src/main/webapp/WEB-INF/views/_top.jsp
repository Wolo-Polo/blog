<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- spring taglibs -->
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<!--Menu-->

<nav class="navbar navbar-expand-lg navbar-light fixed-top shadow"
	style="background-color: #ffffffe5;">
	<div class="container">
		<a class="navbar-brand" href="/home">WOLOPOLO</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarResponsive" aria-controls="navbarResponsive"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item active"><a class="nav-link"
					href="${pageContext.request.contextPath}/home">Trang chủ</a></li>
				<li class="nav-item"><a class="nav-link"
					href="${pageContext.request.contextPath}/category">Danh mục</a></li>
				<li class="nav-item"><a class="nav-link"
					href="${pageContext.request.contextPath}/writers">Tác giả</a></li>
				<li class="nav-item"><a class="nav-link"
					href="${pageContext.request.contextPath}/contact">Liên hệ</a></li>

				<sec:authorize access="!isAuthenticated()">
					<li class="nav-item"><a class="nav-link "
						href="${pageContext.request.contextPath}/login">Đăng
							nhập</a></li>
				</sec:authorize>
				<sec:authorize access="isAuthenticated()">
					<li class="nav-item text-nowrap">
					<a class="nav-link" href="${pageContext.request.contextPath}/perform_logout">Log out</a>
					</li>
				</sec:authorize>
				
				<sec:authorize access="hasAuthority('admin')">
					<li class="nav-item text-nowrap"><a class="nav-link"
						href="${pageContext.request.contextPath}/admin">Go to Admin page</a></li>
				</sec:authorize>
				<sec:authorize access="hasAuthority('writer')">
					<li class="nav-item text-nowrap"><a class="nav-link"
						href="${pageContext.request.contextPath}/writer">Go to Writer page</a></li>
				</sec:authorize>
			</ul>
		</div>
		<form
			class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0"
			action="${pageContext.request.contextPath}/search" method="get">
			<div class="input-group">
				<input class="form-control" type="text" placeholder="Search for..."
					aria-label="Search" aria-describedby="basic-addon2" name="keyWord" />
				<div class="input-group-append">
					<button class="btn btn-primary" type="submit">
						<i class="fa fa-search"></i>
					</button>
				</div>
			</div>
		</form>
	</div>
</nav>
