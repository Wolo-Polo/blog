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
				<h2 class="mt-4">Quản lý người dùng</h2>
				<div class="card mb-4">
					<div class="card-body">
						<div class="mb-2">
							<a href="adduser">
							<button class="btn bg-info">
								<i class="fa fa-plus-square fa-1x"></i> Thêm người dùng mới
							</button>
							</a>
							Hoặc
							<a href="addrole">
							<button class="btn bg-info">
								<i class="fa fa-plus-square fa-1x"></i> Thêm quyền mới
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
										<th>Password</th>
										<th>Avatar</th>
										<th>Descript</th>	
										<th>Email</th>
										<th>Phonenumber</th>
										<th>Số lượng bài viết</th>
										<th>Các quyền</th>
										<th>Status</th>
										<th>Edit</th>
										<th>Delete</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${users}" var="user">
					    				<tr>
											<td>${user.id }</td>
											<td>${user.name }</td>
											<td>${user.password }</td>
											<td><img src="img/user/${user.urlimg }" width="50px" /></td>
											<td>${user.descript }</td>
											<td>${user.email }</td>
											<td>${user.phonenumber }</td>
											<td>Số lượng bài viết</td>
											<td>
												<c:forEach items="${ user.roleList}" var="role">
													${role.name } |
												</c:forEach>
											</td>
											<td>${user.status }</td>
											<td>
												<a href="/admin/edituser?id=${user.id }">
													<button class="btn bg-warning">
														<i class="fa fa-cog" aria-hidden="true"></i> Sửa
													</button>
												</a>
											</td>
											<td>
												<a href="/admin/deleteuser?id=${user.id }">
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
										<th>Password</th>
										<th>Avatar</th>
										<th>Descript</th>	
										<th>Email</th>
										<th>Phonenumber</th>
										<th>Số lượng bài viết</th>
										<th>Các quyền</th>
										<th>Status</th>
										<th>Edit</th>
										<th>Delete</th>
									</tr>
								</tfoot>

							</table>
						</div>
						<div class="mb-2">
							<a href="/admin/adduser">
							<button class="btn bg-info">
								<i class="fa fa-plus-square fa-1x"></i> Thêm người dùng mới
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
