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
	<div style="background-color: #ffffffe5;">
		<section class="" style="padding-top: 5%; padding-bottom: 1%;">
			<div class="rounded col-lg-8 col-md-10 mx-auto" style="padding: 1%;">
				<h3>${post.name }</h3>
				<h6>viết bởi <c:out value="${post.user.name }"></c:out></h6>
				<div>
					<!-- <img src="${pageContext.request.contextPath}/img/post/${post.urlimg}" width="500px" height="300px">  -->
				</div>
				<p><h7>${post.descript }</h7></p>
				<p>
					${post.content}
				</p>
			</div>

		</section>

		<jsp:include page="_footer.jsp"></jsp:include>
	</div>
</body>

</html>