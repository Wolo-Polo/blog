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

			<h2>Thêm mới bài viết</h2>
			<form:form method="post" action="/admin/savepost"
				modelAttribute="post" enctype="multipart/form-data">
				<div class="form-group">
					<label>Danh mục</label>
					<form:select class="form-control form-control-line"
						path="category.id">
						<form:options items="${categories}" itemValue="id"
							itemLabel="name" />
					</form:select>
				</div>
				<div class="form-group">
					<label>Tiêu đề</label>
					<form:input type="text" class="form-control" path="name" />
					
				</div>
				<div class="form-group">
					<label>Miêu tả ngắn</label>
					<form:input type="text" class="form-control"
						path="descript" />
					<small id="emailHelp" class="form-text text-muted"> Sẽ hiển
						thị tại màn danh sách các bài viết. </small>
				</div>
				<div class="form-group">
					<label>Người viết</label>
					<form:select class="form-control form-control-line"
						path="user.id">
						<form:options items="${users}" itemValue="id"
							itemLabel="name" />
					</form:select>
				</div>
				
				<div class="form-group">
					<label>Chọn ảnh đại diện cho bài viết</label>
					<input class="form-control form-control-line" type="file" name="fileavatar"/>
				</div>
				
				<div class="form-group">
					<label>Nội dung bài viết</label>
					<form:textarea class="form-control" path="content" id="summernote"/>
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
	
	
	<!-- include summernote css/js-->
	<link href="summernote-0.8.18-dist/summernote.css" rel="stylesheet"/>
	<script src="summernote-0.8.18-dist/summernote.js" type="text/javascript"></script>
	
	
	<script>
		
		$('#summernote').summernote({
			  height: 500,   //set editable area's height
			  codemirror: { // codemirror options
			    theme: 'monokai'
			  }
			});
	</script>

</body>
</html>
