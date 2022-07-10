<%--
  Created by IntelliJ IDEA.
  User: bt289
  Date: 3/30/2022
  Time: 4:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<c:url value="/admin/" var="rootAdmin" />
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--favicon-->
<link rel="icon"
	href="<c:url value="/public/assetAdmin/images/favicon-32x32.png"/>"
	type="image/png" />
<!--plugins-->
<link
	href="<c:url value="/public/assetAdmin/plugins/vectormap/jquery-jvectormap-2.0.2.css"/>"
	rel="stylesheet" />
<link
	href="<c:url value="/public/assetAdmin/plugins/simplebar/css/simplebar.css"/>"
	rel="stylesheet" />
<link
	href="<c:url value="/public/assetAdmin/plugins/perfect-scrollbar/css/perfect-scrollbar.css"/>"
	rel="stylesheet" />
<link
	href="<c:url value="/public/assetAdmin/plugins/metismenu/css/metisMenu.min.css"/>"
	rel="stylesheet" />
<!-- loader-->
<link href="<c:url value="/public/assetAdmin/css/pace.min.css"/>"
	rel="stylesheet" />
<script src="<c:url value="/public/assetAdmin/js/pace.min.js"/>"></script>
<!-- Bootstrap CSS -->
<link href="<c:url value="/public/assetAdmin/css/bootstrap.min.css"/>"
	rel="stylesheet">
<link
	href="<c:url value="/public/assetAdmin/css/bootstrap-extended.css"/>"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&amp;display=swap"
	rel="stylesheet">
<link href="<c:url value="/public/assetAdmin/css/app.css"/>"
	rel="stylesheet">
<link href="<c:url value="/public/assetAdmin/css/icons.css"/>"
	rel="stylesheet">
<!-- Theme Style CSS -->
<link rel="stylesheet"
	href="<c:url value="/public/assetAdmin/css/dark-theme.css"/>" />
<link rel="stylesheet"
	href="<c:url value="/public/assetAdmin/css/semi-dark.css"/>" />
<link rel="stylesheet"
	href="<c:url value="/public/assetAdmin/css/header-sizes.css"/>" />
<title>Update Sizes | ${old_size.name}</title>
</head>
<body>

	<div class="wrapper">
		<jsp:include page="/WEB-INF/views/admin/layout/menu.jsp" />
		<jsp:include page="/WEB-INF/views/admin/layout/header.jsp" />

		<!--start page wrapper -->
		<div class="page-wrapper">
			<div class="page-content">
				<!--breadcrumb-->
				<div
					class="page-breadcrumb d-none d-sm-flex align-items-center mb-3">
					<div class="breadcrumb-title pe-3">Color</div>
					<div class="ps-3">
						<nav aria-label="breadcrumb">
							<ol class="breadcrumb mb-0 p-0">
								<li class="breadcrumb-item"><a href="${rootAdmin}sizes"><i
										class="bx bx-home-alt"></i></a></li>
								<li class="breadcrumb-item active" aria-current="page">Update</li>
								<li class="breadcrumb-item active" aria-current="page">${old_size.name}</li>
							</ol>
						</nav>
					</div>
				</div>
				<div class="row">
					<div class="col-xl-9 mx-auto">
						<br>
						<hr />
						<div class="card border-top border-0 border-4 border-info">
							<div class="card-body">
								<div class="border p-4 rounded">
									<span style="text-align: center; color: green">${notification}</span>
									<f:form modelAttribute="old_size"
										action="${rootAdmin}sizes/update">
										<f:input path="id" type="hidden"></f:input>
										<div class="card-title d-flex align-items-center">
											<div>
												<i class="bx bxs-user me-1 font-22 text-info"></i>
											</div>
											<h5 class="mb-0 text-info">Add new Sizes</h5>
										</div>
										<hr />
										<div class="row mb-3">
											<label for="inputEnterYourName"
												class="col-sm-3 col-form-label">Values</label>
											<div class="col-sm-9">
												<f:input type="text" path="value" class="form-control"
													id="inputEnterYourName"></f:input>
												<f:errors path="value" cssStyle="color:red;"></f:errors>
											</div>
										</div>
										<div class="row">
											<label class="col-sm-3 col-form-label"></label>
											<div class="col-sm-9">
												<f:button type="submit" class="btn btn-info px-5">Add</f:button>
												<f:button type="reset" class="btn btn-primary px-5">Clear</f:button>
											</div>
										</div>
									</f:form>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!--end row-->
			</div>
		</div>
		<!--end page wrapper -->
		<!--start overlay-->
		<div class="overlay toggle-icon"></div>
		<!--end overlay-->

		<!--Start Back To Top Button-->
		<a href="javaScript:;" class="back-to-top"><i
			class='bx bxs-up-arrow-alt'></i></a>
		<!--End Back To Top Button-->

		<jsp:include page="/WEB-INF/views/admin/layout/footer.jsp" />
	</div>
	<jsp:include page="/WEB-INF/views/admin/layout/plugins.jsp" />
</body>
</html>
