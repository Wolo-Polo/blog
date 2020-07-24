<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<jsp:include page="_header.jsp"></jsp:include>
</head>
<body>
<!-- 	<form action="contact_no_springform" method="post"> -->
<!-- 		Họ tên: <input type="text" name="name" id="name"/><br/> -->
<!-- 		Email: <input type="email" name="email" id="email"/><br/> -->
<!-- 		Ý kiến của bạn: <textarea rows="3" cols="4" name="ykien" id="ykien"></textarea><br/> -->
<!-- 		<input type="button" value="Gửi" id="submitform" onclick="AjaxSubmitForm.submit();"/>  -->
<!-- 	</form> -->
	
	<jsp:include page="_top.jsp"></jsp:include>


	<!-- Page Content -->
	<div class="bg-muted">
		<section class="" style="padding-top: 15%; padding-bottom: 1%;">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-12 col-md-8 col-lg-6 pb-5 ">
						

						<!--Form with header-->

						<form action="contact_no_springform" method="post">
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
									<%
										if(request.getAttribute("messenger")!=null){
											out.print("<h3>Thành công r đấy :V</h3>");
										}
									%>
									<!--Body-->
									<div class="form-group">
										<div class="input-group mb-2">
											<div class="input-group-prepend">
												<div class="input-group-text">
													<i class="fa fa-user text-info"></i>
												</div>
											</div>
											<input type="text" class="form-control" id="nombre name"
												name="nombre" placeholder="Tên của bạn" required="required"/>
										</div>
									</div>
									<div class="form-group">
										<div class="input-group mb-2">
											<div class="input-group-prepend">
												<div class="input-group-text">
													<i class="fa fa-envelope text-info"></i>
												</div>
											</div>
											<input type="email" class="form-control" id="nombre email"
												name="email" placeholder="email@gmail.com"
												required="required" />
										</div>
									</div>

									<div class="form-group">
										<div class="input-group mb-2">
											<div class="input-group-prepend">
												<div class="input-group-text">
													<i class="fa fa-comment text-info"></i>
												</div>
											</div>
											<textarea class="form-control"
												placeholder="Ý kiến của bạn" required="required" id="messenge"
												name="ykien"></textarea>


										</div>
									</div>

									<div class="text-center">
										<input type="button" value="Gửi" id="submitform" onclick="AjaxSubmitForm.submit();" class="btn btn-info btn-block rounded py-2"/>
									</div>
								</div>

							</div>
						</form>
						<!--Form with header-->


					</div>
				</div>
			</div>

		</section>

		<jsp:include page="_footer.jsp"></jsp:include>
	</div>
</body>
</html>