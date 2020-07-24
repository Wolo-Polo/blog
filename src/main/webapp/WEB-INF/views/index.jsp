<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="vie">

<head>
<jsp:include page="_header.jsp"></jsp:include>

</head>

<body>
	<jsp:include page="_top.jsp"></jsp:include>
	<!-- Full Page Image Header with Vertically Centered Content -->
	<header class="masthead">
		<div class="container h-100">
			<div class="row h-100 align-items-center">
				<div class="col-12 text-center">
					<div class="site-heading text-light">
						<h1>Welcome to WoloPolo blog</h1>

						<span
							class="animation fa fa-angle-double-down fa-5x  position-absolute"></span>

					</div>
				</div>
			</div>
		</div>
	</header>

	<!-- Page Content -->
	<div style="background-color: #ffffffe5;">
		<section class="" style="padding-top: 1%; padding-bottom: 1%;">
			<div class="rounded col-lg-8 col-md-10 mx-auto" style="padding: 1%;">
				<c:forEach items="${toppost}" var="post">
					<div>
						<h2 class="post-title">
							<a href="${pageContext.request.contextPath}/post/${post.id}" style="text-decoration: none;">${post.name}</a>
						</h2>
						<p class="post-decription">${post.descript }</p>
						<p class="post-meta">
							Viết bởi <a href="#">${post.user.name }</a>
						</p>
					</div>
					<hr />
				</c:forEach>


				<div class="text-center danhsotrang">
					<a href="">&lt;&lt;</a> <a href="">1</a> <a href="">2</a> <a
						href="">tiếp</a> <a href="">&gt;&gt;</a>
				</div>
			</div>

		</section>

		<jsp:include page="_footer.jsp"></jsp:include>
	</div>
</body>

</html>