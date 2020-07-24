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

			<h2>Thêm người dùng</h2>
			<form:form method="post" action="/admin/saveuser"
				modelAttribute="user" enctype="multipart/form-data">
				<div class="form-group">
					<label>Tên:</label>
					<form:input type="text" class="form-control" path="name" />
					
				</div>
				<div class="form-group">
					<label>Password: </label>
					<form:input type="text" class="form-control" path="password" />
					
				</div>
				<div class="form-group">
					<label>Chọn ảnh đại diện: </label>
					<input type="file" class="form-control" name="avatar" />
					
				</div>
				<div class="form-group">
					<label>Mô tả về bản thân: </label>
					<form:input type="text" class="form-control" path="descript" />
					
				</div>
				<div class="form-group">
					<label>Email:</label>
					<form:input type="text" class="form-control" path="email" />
					
				</div>
				<div class="form-group">
					<label>Số điện thoại:</label>
					<form:input type="text" class="form-control" path="phonenumber" />
					
				</div>
				<div class="form-group">
					<label>Các quyền:</label>
					<form:select class="form-control form-control-line"
						path="roleList">
						<form:options items="${roles}" itemValue="id"
							itemLabel="name" />
					</form:select>
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
