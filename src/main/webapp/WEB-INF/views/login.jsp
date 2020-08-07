<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="vie">

<head>
<jsp:include page="_header.jsp"></jsp:include>

</head>

    <body class="bg-primary">
        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-6">
                                <div class="card shadow-lg border-0 rounded-lg m-5 pb-5">
                                    <div class="card-header"><h3 class="text-center font-weight-light my-2">Login</h3></div>
                                    <div class="card-body">
                                        <form method="post" action="${pageContext.request.contextPath}/perform_login">
											<c:if test="${not empty param.login_error}">
												<div class="alert alert-danger" role="alert">Login attempt was not successful, try again.</div>
											</c:if>
											<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
											<div class="form-group"><label class="small mb-1" for="inputEmailAddress">Username</label><input class="form-control py-2" id="inputEmailAddress" type="text" placeholder="Enter username" name="username"/></div>
                                            <div class="form-group"><label class="small mb-1" for="inputPassword">Password</label><input class="form-control py-2" id="inputPassword" type="password" placeholder="Enter password" name="password"/></div>
                                            <div class="form-group">
                                                <div class="custom-control custom-checkbox"><input class="custom-control-input" id="rememberPasswordCheck" type="checkbox" /><label class="custom-control-label" for="rememberPasswordCheck">Remember password</label></div>
                                            </div>
                                            <div class="form-group d-flex align-items-center justify-content-between mt-2 mb-0"><a class="small" href="password.html">Forgot Password?</a><input type="submit" class="btn btn-primary" value="Đăng nhập"/></div>
                                        </form>
                                    </div>
                                    <div class="card-footer text-center">
                                        <div class="small"><a href="${pageContext.request.contextPath}/register">Need an account? Sign up!</a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
            <div id="layoutAuthentication_footer">
                <footer class="py-4 bg-light mt-5">
                    <div class="container-fluid">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; Your Website 2019</div>
                            <div>
                                <a href="#">Privacy Policy</a>
                                &middot;
                                <a href="#">Terms &amp; Conditions</a>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script><!-- using crossorigin="anonymous" if browser is not allow access -->
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script><!-- using crossorigin="anonymous" if browser is not allow access -->
        <script src="admin/js/scripts.js"></script>
    </body>
</html>
