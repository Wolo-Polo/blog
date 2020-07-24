<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<jsp:include page="_adminheader.jsp" />
</head>
<body class="sb-nav-fixed">
	<jsp:include page="_adminmenu.jsp" />
	<div id="layoutSidenav_content">
		<main role="main" class="pt-3 px-4">

			<h2>Thêm quyền hạn mới</h2>
			<form:form method="post" action="/admin/saverole"
				modelAttribute="role">
				<div class="form-group">
					<label>Tên quyền</label>
					<form:input type="text" class="form-control" path="name" />
					
				</div>
				<div class="form-group">
					<label>Mô tả</label>
					<form:input type="text" class="form-control"
						path="descript" />
				</div>
				
				<button type="submit" class="btn btn-primary">Lưu</button>
			</form:form>
		</main>
		<jsp:include page="_adminfooter.jsp" />
	</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="js/scripts.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
		crossorigin="anonymous"></script>

</body>
</html>
