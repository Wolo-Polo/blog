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


	<!-- Page Content -->
	<div class="bg-muted">
		<section class="row" style="padding-top: 7%; padding-bottom: 1%;">
			<div class="container" style="height:100%">
				<c:forEach items="${categories }" var="category">
					
					<div class="col-xl-3 col-md-6" style="float: left">
						<div class="card bg-white text-black mb-4">
							<div class="card-header">${category.name }</div>
							<div class="card-body">
								<img alt="" src="${pageContext.request.contextPath}/img/category/${category.urlimg }" width="200px" height="150px"/>
								<i class="">${category.descript }</i>
							</div>
							<div
								class="card-footer d-flex align-items-center justify-content-between">
								<a class="small text-black stretched-link" href="${pageContext.request.contextPath}/posts/category/${category.id }">Xem các bài viết</a>
							</div>
						</div>
					</div>
					
				</c:forEach>
			</div>

		</section>

		<jsp:include page="_footer.jsp"></jsp:include>
	</div>
</body>

</html>