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
				<h2 class="mt-4">Quản lý liên hệ</h2>
				<div class="card mb-4">
					<div class="card-body">
						
						<div class="table-responsive">
							<table class="table table-bordered" id="dataTable" width="100%"
								cellspacing="0">
								<thead>
									<tr class="bg-secondary">
										<th>ID</th>
										<th>Người gửi</th>
										<th>Ngày gửi</th>
										<th>Email</th>
										<th>Tin nhắn</th>	
										<th>Trạng thái</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${contacts}" var="contact">
					    				<tr>
											<td>${contact.id }</td>
											<td>${contact.userName }</td>
											<td>${contact.send_date}</td>
											<td>${contact.email}</td>
											<td>${contact.messenge}</td>	
											<td>${category.status }</td>
											
										</tr>
									</c:forEach>
								</tbody>
								<tfoot>
									<tr class="bg-secondary">
										<th>ID</th>
										<th>Người gửi</th>
										<th>Ngày gửi</th>
										<th>Email</th>
										<th>Tin nhắn</th>	
										<th>Trạng thái</th>
									</tr>
								</tfoot>

							</table>
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
