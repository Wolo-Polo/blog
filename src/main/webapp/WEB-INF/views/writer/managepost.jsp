<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<jsp:include page="_writerheader.jsp" />
</head>
<body class="sb-nav-fixed">
	<jsp:include page="_writermenu.jsp" />
	<div id="layoutSidenav_content">
		<main>
			<div class="container-fluid">
				<h2 class="mt-4">Quản lý bài viết</h2>
				<c:if test="${status }">
					
				</c:if>
				<div class="card mb-4">
					<div class="card-body">
						<div class="mb-2">
							<a href="addpost">
							<button class="btn bg-info">
								<i class="fa fa-plus-square fa-1x"></i> Thêm bài viết mới
							</button>
							</a>
						</div>
						<div class="table-responsive">
							<table class="table table-bordered" id="dataTable" width="100%"
								cellspacing="0">
								<thead>
									<tr class="bg-secondary">
										<th>ID</th>
										<th>Name</th>
										<th>Avatar</th>
										<th>Descript</th>
										<th>Category</th>
										<th>Link</th>
										<th>Writer</th>
										<th>Views</th>
										<th>Status</th>
										<th>Edit</th>
										<th>Delete</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${posts}" var="post">
					    				<tr>
											<td>${post.id }</td>
											<td>${post.name }</td>
											<td><img src="img/post/${post.urlimg}" width="80px" /></td>
											<td>${post.descript }</td>
											<td>${post.category.name }</td>
											<td>link</td>
											<td>${post.user.name }</td>
											<td>${post.views }</td>
											<td>${post.status }</td>
											<td>
												<a href="/writer/editpost?id=${post.id }">
													<button class="btn bg-warning">
														<i class="fa fa-cog" aria-hidden="true"></i> Sửa
													</button>
												</a>
											</td>
											<td>
												<a href="/writer/deletepost?id=${post.id }">
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
										<th>Name</th>
										<th>Avatar</th>
										<th>Descript</th>
										<th>Category</th>
										<th>Link</th>
										<th>Writer</th>
										<th>Views</th>
										<th>Status</th>
										<th>Edit</th>
										<th>Delete</th>
									</tr>
								</tfoot>

							</table>
						</div>
						<div class="mb-2">
							<a href="/admin/addpost">
							<button class="btn bg-info">
								<i class="fa fa-plus-square fa-1x"></i> Thêm bài viết mới
							</button>
							</a>
						</div>
					</div>
				</div>
			</div>
		</main>
		<jsp:include page="_writerfooter.jsp" />
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
