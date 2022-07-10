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
<title>Update Product | ${old_product.name}</title>
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
										class="bx bx-home-alt"></i></a>
								<li class="breadcrumb-item"><a href="${rootAdmin}course">Product</a>
								</li>
								<li class="breadcrumb-item active" aria-current="page">Update</li>
								<li class="breadcrumb-item active" aria-current="page">${old_product.name}</li>
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
									<f:form modelAttribute="old_product" method="post"
										action="${rootAdmin}product/update"
										enctype="multipart/form-data">
										<f:input path="id" type="hidden"></f:input>
										<div class="card-title d-flex align-items-center">
											<div>
												<i class="bx bxs-user me-1 font-22 text-info"></i>
											</div>
											<h5 class="mb-0 text-info">Update Product</h5>
										</div>
										<hr />
										<div class="row mb-3">
											<label for="inputEnterYourName"
												class="col-sm-3 col-form-label">Product's Name</label>
											<div class="col-sm-9">
												<f:input type="text" path="name" class="form-control"
													id="inputEnterYourName" placeholder="Enter Course's Name"></f:input>
												<f:errors path="name" cssStyle="color:red;"></f:errors>
											</div>
										</div>
										<div class="row mb-3">
											<label for="inputEnterYourTitle"
												class="col-sm-3 col-form-label">Title</label>
											<div class="col-sm-9">
												<f:input type="text" path="title" class="form-control"
													id="inputEnterYourTitle" placeholder="Enter Title..."></f:input>
												<f:errors path="title" cssStyle="color:red;"></f:errors>
											</div>
										</div>
										<div class="row mb-3">
											<label for="inputEnterYourTitle"
												class="col-sm-3 col-form-label">Price</label>
											<div class="col-sm-9">
												<f:input type="number" path="price" class="form-control"
													id="inputEnterYourTitle" placeholder="Enter price..."></f:input>
												<f:errors path="price" cssStyle="color:red;"></f:errors>
											</div>
										</div>
										<div class="row mb-3">
											<label for="inputEnterYourTitle"
												class="col-sm-3 col-form-label">Sale Price</label>
											<div class="col-sm-9">
												<f:input type="number" path="sale_price"
													class="form-control" id="inputEnterYourTitle"
													placeholder="Enter sale price..."></f:input>
												<f:errors path="sale_price" cssStyle="color:red;"></f:errors>
											</div>
										</div>
										<div class="row mb-3">
											<label for="inputEnterYourTitle"
												class="col-sm-3 col-form-label">Image</label>
											<div class="col-sm-9">
												<input type="file" name="fileImg" class="form-control" />
												<%--                                                    <f:input type="file" name="fileImg" path="image" class="form-control" id="inputEnterYourTitle" placeholder="Choose Image..."></f:input>--%>
												<span type="text" style="color: red;">${blankImg}</span>
											</div>
										</div>
										<div class="row mb-3">
											<div class="col-6">
												Category
												<f:select class="form-select mb-3"
													aria-label="Default select example" path="category.id">
													<c:forEach items="${categories}" var="cate">
														<option value="${cate.id}">${cate.name}</option>
													</c:forEach>
												</f:select>
												<f:errors path="category" cssStyle="color: red"></f:errors>
											</div>
											<div class="col-6 pt-5">
												<button class="btn btn-primary" type="button"
													onclick="add_more()">Add more Shoes</button>
											</div>
										</div>
										<c:forEach items="${lstProductDetail}" var="item"
											varStatus="loop">
											<div class="row mb-3">
												<input type="hidden" id="hiddenLoop"
													value="${lstProductDetailSize}" />
												<hr>
												<h3 class="count_shoes">Item</h3>
												<div class="col-6">
													Sizes <select class="form-select mb-3"
														aria-label="Default select example"
														name="size${loop.index+1}">
														<c:forEach items="${sizes}" var="size">
															<option value="${size.id}">${size.value}</option>
														</c:forEach>
													</select>
												</div>
												<div class="col-6">
													Colors <select class="form-select mb-3"
														aria-label="Default select example"
														name="color${loop.index+1}" onchange="selectColor()">
														<c:forEach items="${colors}" var="color">
															<option value="${color.id}">${color.name}</option>
														</c:forEach>
													</select>
												</div>
											</div>
											<div class="row mb-3">
												<label for="inputEnterYourTitle"
													class="col-sm-3 col-form-label">Please Type Price
													for Addition Shoes</label>
												<div class="col-sm-9">
													<input type="number" name="price${loop.index+1}"
														value="${item.price}" class="form-control"
														id="inputEnterYourTitle" placeholder="Enter price..."></input>
												</div>
											</div>
											<div class="row mb-3">
												<label for="inputEnterYourTitle"
													class="col-sm-3 col-form-label">Please type Sale
													Price for addition shoes</label>
												<div class="col-sm-9">
													<input type="number" name="sale_price${loop.index+1}"
														value="${item.sale_price}" class="form-control"
														id="inputEnterYourTitle" placeholder="Enter sale price..."></input>
												</div>
											</div>
										</c:forEach>

										<div style="display: none;" id="show_addition"></div>
										<label>Status</label>
										<div class="form-check">
											<f:radiobutton path="status" checked="checked"
												class="form-check-input" id="validationFormCheck2"
												name="radio-stacked" value="true" required="" />
											<label class="form-check-label" for="validationFormCheck2">Active</label>
											<f:errors path="status" cssStyle="color:red;"></f:errors>
										</div>
										<div class="form-check">
											<f:radiobutton path="status" class="form-check-input"
												id="validationFormCheck1" name="radio-stacked" value="false"
												required="" />
											<label class="form-check-label" for="validationFormCheck1">In
												Active</label>
											<f:errors path="status" cssStyle="color:red;"></f:errors>
										</div>
										<div class="row mb-3">
											<label for="inputEnterYourDes"
												class="col-sm-3 col-form-label">Description</label>
											<div class="col-sm-9">
												<f:textarea path="descriptions" class="form-control"
													id="inputEnterYourDes" placeholder="Enter description..."></f:textarea>
												<f:errors path="descriptions" cssStyle="color:red;"></f:errors>
											</div>
										</div>
										<div class="row">
											<label class="col-sm-3 col-form-label"></label>
											<div class="col-sm-9">
												<f:button type="submit" class="btn btn-info px-5">Update</f:button>
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
	<script src="https://code.jquery.com/jquery-3.6.0.slim.js"></script>
	<script type="text/javascript">
		function add_more() {
			let innerHTML = ``;
			var price_dt = 0;
			console.log(price_dt)
			if(sessionStorage.getItem("price_dt_ud")==null){
				console.log("vao if")
				price_dt = parseInt($("#hiddenLoop").val());
			}else{
				console.log("vao else")
				price_dt = parseInt(sessionStorage.getItem("price_dt_ud"));
			}
			for(let i=1; i<100; i++){
				console.log(price_dt)
				price_dt +=i;
				innerHTML += `<div class="row mb-3">
					<hr>
						<h3 class="count_shoes">Item</h3>
						<div class="col-6">
							Sizes <select class="form-select mb-3"
								aria-label="Default select example" name="size`
								innerHTML += price_dt;
								innerHTML += `">
								<c:forEach items="${sizes}" var="size">
									<option value="${size.id}">${size.value}</option>
								</c:forEach>
							</select>
						</div>
						<div class="col-6">
							Colors <select class="form-select mb-3"
								aria-label="Default select example" name="color`
								innerHTML += price_dt;
								innerHTML += `"
								onchange="selectColor()">
								<c:forEach items="${colors}" var="color">
									<option value="${color.id}">${color.name}</option>
								</c:forEach>
							</select>
						</div>
					</div>
					<div class="row mb-3">
						<label for="inputEnterYourTitle"
							class="col-sm-3 col-form-label">Please Type Price
							for Addition Shoes</label>
						<div class="col-sm-9">
							<input type="number" name="price`
							innerHTML += price_dt;
							innerHTML += `"class="form-control"
								id="inputEnterYourTitle" placeholder="Enter price..."></input>
						</div>
					</div>
					<div class="row mb-3">
						<label for="inputEnterYourTitle"
							class="col-sm-3 col-form-label">Please type Sale
							Price for addition shoes</label>
						<div class="col-sm-9">
							<input type="number" name="sale_price`
							innerHTML += price_dt;
							innerHTML +=`"
							" class="form-control"
								id="inputEnterYourTitle" placeholder="Enter sale price..."></input>
						</div>
					</div>`;
					if(sessionStorage.getItem("price_dt_ud")==null){
						sessionStorage.setItem("price_dt_ud", price_dt+i);
					}else{
						sessionStorage.setItem("price_dt_ud", price_dt);
					}
				i++;
				break;
			}
			
			$("#show_addition").css("display", "block");
			$("#show_addition").append(innerHTML);
		}
	</script>
</body>
</html>
