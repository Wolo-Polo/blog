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
	<div class="" style="background-color: #ffffffe5; padding-top:50px;">
		<section class="" style="padding-top: 1%; padding-bottom: 1%;">
			<div class="rounded col-lg-8 col-md-10 mx-auto" style="padding: 1%; height:900px">
				<h4>Kết quả tìm kiếm cho: <i>"${keyWord }"</i></h4>
				<hr/>
				<c:forEach items="${posts}" var="post">
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