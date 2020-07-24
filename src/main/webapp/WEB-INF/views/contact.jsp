<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="vie">

<head>
	<jsp:include page="_header.jsp"></jsp:include>
</head>

<body>
	<jsp:include page="_top.jsp"></jsp:include>


	<!-- Page Content -->
	<div class="bg-muted">
		<section class="" style="padding-top: 15%; padding-bottom: 1%;">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-12 col-md-8 col-lg-6 pb-5 ">
						

						<!--Form with header-->

						<form:form action="contact" method="post"
							modelAttribute="datacontact">
							<div class="card border-primary rounded">
								<div class="card-header p-0">
									<div class="bg-info text-white text-center py-2">
										<h3>
											<i class="fa fa-envelope"></i>Liên hệ
										</h3>
										<p class="m-0">Hãy gửi cho tôi ý kiến của bạn!</p>
									</div>
								</div>
								<div class="card-body p-3">
								
									<!--Body-->
									<div class="form-group">
										<div class="input-group mb-2">
											<div class="input-group-prepend">
												<div class="input-group-text">
													<i class="fa fa-user text-info"></i>
												</div>
											</div>
											<form:input type="text" class="form-control" id="nombre"
												name="nombre" placeholder="Tên của bạn" required="required"
												path="userName" modelAttribute="contact" />
										</div>
									</div>
									<div class="form-group">
										<div class="input-group mb-2">
											<div class="input-group-prepend">
												<div class="input-group-text">
													<i class="fa fa-envelope text-info"></i>
												</div>
											</div>
											<form:input type="email" class="form-control" id="nombre"
												name="email" placeholder="email@gmail.com"
												required="required" path="email" modelAttribute="contact" />
										</div>
									</div>

									<div class="form-group">
										<div class="input-group mb-2">
											<div class="input-group-prepend">
												<div class="input-group-text">
													<i class="fa fa-comment text-info"></i>
												</div>
											</div>
											<form:textarea class="form-control"
												placeholder="Ý kiến của bạn" required="required"
												path="messenge"></form:textarea>


										</div>
									</div>

									<div class="text-center">
										<input type="submit" value="Gửi"
											class="btn btn-info btn-block rounded py-2">
									</div>
								</div>

							</div>
						</form:form>
						<!--Form with header-->


					</div>
				</div>
			</div>

		</section>

		<jsp:include page="_footer.jsp"></jsp:include>
	</div>
	
	<script type="text/javascript">
		var messenger = '${messenger}';
		
		if(messenger=='success') window.alert("Gửi thành công!");
		else if(messenger=='false') window.alert("Gửi thất bại!\nVui lòng gửi lại!");
		
	</script>
</body>

</html>