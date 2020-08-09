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
			<div class="container" style="height: 100%">
				<c:forEach items="${users}" var="user">
				<div class="card col-xl-5 col-md-5 mt-4 mb-4 ml-5 mr-4" style="float: left">
					<div class="card-body">
						<img src="${pageContext.request.contextPath}/img/user/${user.urlimg}" width="64px" height="64px"
							class="float-left rounded-circle">
						<div class="message">
							<h5 class="card-title ml-5 pl-4"> ${user.name }</h5>
							<h6 class="card-subtitle mb-2 text-mutedpl-5 ml-5 pl-4"> ${user.email }</h6>
							<p class="card-text">${user.descript }</p>
						</div>
						<div class="actions">
							<a href="${pageContext.request.contextPath}/posts/writer/${user.id}" class="card-link">Xem các bài viết</a>
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