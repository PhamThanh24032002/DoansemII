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
	href="<c:url value="/public/assetAdmin/css/header-colors.css"/>" />
<title>Payments</title>
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
					<div class="ps-3">
						<nav aria-label="breadcrumb">
							<ol class="breadcrumb mb-0 p-0">
								<li class="breadcrumb-item"><a href="${rootAdmin}"><i
										class="bx bx-home-alt"></i></a></li>
								<li class="breadcrumb-item active" aria-current="page">Payments</li>
							</ol>
						</nav>
					</div>
				</div>
				<!--end breadcrumb-->
				<div class="row">
					<div class="col-12">
						<div class="card">
							<div class="card-body">
								<div class="row align-items-center">
									<div class="col-lg-9 col-xl-10">
										<form class="float-lg-end" method="post"
											action="${rootAdmin}payments/search">
											<div class="row row-cols-lg-2 row-cols-xl-auto g-2">
												<div class="col">
													<div class="position-relative">
														<input type="text" name="key" class="form-control ps-5"
															placeholder="Search any size..."> <span
															class="position-absolute top-50 product-show translate-middle-y"><i
															class="bx bx-search"></i></span>
													</div>
												</div>
												<div class="col">
													<button type="submit" class="btn btn-primary mb-3 mb-lg-0">
														<i class='bx bx-search-alt-2'></i>Search
													</button>
												</div>
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<span style="color: green; text-align: center">${notification}</span>
				</div>
				<div class="row">
					<div class="col-xl-6 mx-auto">
						<br>
						<hr />
						<div class="card border-top border-0 border-4 border-info">
							<div class="card-body">
								<div class="border p-4 rounded">
									<f:form modelAttribute="newPayment"
										action="${rootAdmin}payments/insert">
										<div class="card-title d-flex align-items-center">
											<div>
												<i class="bx bxs-user me-1 font-22 text-info"></i>
											</div>
											<h5 class="mb-0 text-info">Add new Payments</h5>
										</div>
										<hr />
										<div class="row mb-3">
											<label for="inputEnterYourName"
												class="col-sm-3 col-form-label">Name</label>
											<div class="col-sm-9">
												<f:input type="text" path="name" class="form-control"
													id="inputEnterYourName"></f:input>
												<f:errors path="name" cssStyle="color:red;"></f:errors>
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
					<div class="col-xl-6 mx-auto">
					<br>
					<hr>
						<div class="card">
							<div class="card-body">
								<table class="table table-borderless mb-0">
									<thead>
										<tr>
											<th scope="col">#</th>
											<th scope="col">Sizes</th>
											<th scope="col">Action</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${payments}" var="item" varStatus="loop">
											<tr>
												<th scope="row">${loop.index+1}</th>
												<td>${item.name}</td>
												<td><a
													href="${rootAdmin}payments/init-update?id=${item.id}"><i
														class="bx bxs-edit"></i></a> <a
													href="${rootAdmin}payments/delete?id=${item.id}"><i
														class="bx bx-trash-alt"></i></a></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
							<nav aria-label="Page navigation example"
								class="align-self-center">
								<ul class="pagination round-pagination">
									<li class="page-item"><a class="page-link"
										href="${rootAdmin}payments/page/${page-1}">Previous</a></li>
									<c:forEach begin="1" end="${pages}" var="page">
										<li class="page-item"><a class="page-link"
											href="${rootAdmin}payments/page/${page}">${page}</a></li>
									</c:forEach>
									<li class="page-item"><a class="page-link"
										href="${rootAdmin}payments/page/${page+1}">Next</a></li>
								</ul>
							</nav>
						</div>
					</div>
				</div>
				<!--end row-->
				<%--                <div class="row">--%>
				<%--                    <div class="card-body">--%>
				<%--                       --%>
				<%--                    </div>--%>
				<%--                </div>--%>
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
