<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<jsp:include page="_adminheader.jsp" />
</head>
<body class="sb-nav-fixed">
	<jsp:include page="_adminmenu.jsp" />
	<div id="layoutSidenav_content">
		<main>
			<div class="container-fluid">
				<h2 class="mt-4">Quản lý các thể loại</h2>
				<div class="card mb-4">
					<div class="card-body">
						<div class="mb-2">
							<a href="addcategory">
							<button class="btn bg-info">
								<i class="fa fa-plus-square fa-1x"></i> Thêm thể loại mới
							</button>
							</a>
						</div>
						<div class="table-responsive">
							<table class="table table-bordered" id="dataTable" width="100%"
								cellspacing="0">
								<thead>
									<tr class="bg-secondary">
										<th>ID</th>
										<th>Tên thể loại</th>
										<th>Mô tả</th>
										<th>Ảnh đại diện</th>
										<th>Số bài viết</th>	
										<th>Trạng thái</th>
										<th>Sửa</th>
										<th>Xóa</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${categories}" var="category">
					    				<tr>
											<td>${category.id }</td>
											<td>${category.name }</td>
											<td>${category.descript}</td>
											<td><img src="img/category/${category.urlimg }" width="70px"/></td>
											<td>số bài viết</td>	
											<td>${category.status }</td>
											<td>
												<a href="/admin/editcategory?id=${category.id }">
													<button class="btn bg-warning">
														<i class="fa fa-cog" aria-hidden="true"></i> Sửa
													</button>
												</a>
											</td>
											<td>
												<a href="/admin/deletecategory?id=${category.id }">
													<button class="btn bg-warning">
														<i class="fa fa-trash" aria-hidden="true"></i> Xóa
													</button>
												</a>
											</td>
											
										</tr>
									</c:forEach>
								</tbody>
								<tfoot>
									<tr class="bg-secondary">
										<th>ID</th>
										<th>Tên thể loại</th>
										<th>Mô tả</th>
										<th>Ảnh đại diện</th>
										<th>Số bài viết</th>	
										<th>Trạng thái</th>
										<th>Sửa</th>
										<th>Xóa</th>
									</tr>
								</tfoot>

							</table>
						</div>
						<div class="mb-2">
							<a href="/admin/addcategory">
							<button class="btn bg-info">
								<i class="fa fa-plus-square fa-1x"></i> Thêm thể loại mới
							</button>
							</a>
						</div>
					</div>
				</div>
			</div>
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