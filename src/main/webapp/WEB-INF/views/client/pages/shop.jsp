<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="meta description">
<title>Juan - Shoes Store HTML Template</title>
<jsp:include page="/WEB-INF/views/client/script/script.jsp"></jsp:include>
</head>

<body>
	<jsp:include page="/WEB-INF/views/client/header/header.jsp"></jsp:include>
	<!-- main wrapper start -->

	<!-- off-canvas menu start -->
	<aside class="off-canvas-wrapper">
		<div class="off-canvas-overlay"></div>
		<div class="off-canvas-inner-content">
			<div class="btn-close-off-canvas">
				<i class="ion-android-close"></i>
			</div>

			<div class="off-canvas-inner">
				<!-- search box start -->
				<div class="search-box-offcanvas">
					<form>
						<input type="text" placeholder="Search Here...">
						<button class="search-btn">
							<i class="ion-ios-search-strong"></i>
						</button>
					</form>
				</div>
				<!-- search box end -->

				<!-- mobile menu start -->
				<div class="mobile-navigation">
					<!-- mobile menu navigation start -->
					<nav>
						<ul class="mobile-menu">
							<li class="menu-item-has-children"><a href="index.html">Home</a>
								<ul class="dropdown">
									<li><a href="index.html">Home version 01</a></li>
									<li><a href="index-2.html">Home version 02</a></li>
								</ul></li>
							<li class="menu-item-has-children"><a href="#">pages</a>
								<ul class="megamenu dropdown">
									<li class="mega-title menu-item-has-children"><a href="#">column
											01</a>
										<ul class="dropdown">
											<li><a href="shop.html">shop grid left sidebar</a></li>
											<li><a href="shop-grid-right-sidebar.html">shop grid
													right sidebar</a></li>
											<li><a href="shop-list-left-sidebar.html">shop list
													left sidebar</a></li>
											<li><a href="shop-list-right-sidebar.html">shop list
													right sidebar</a></li>
										</ul></li>
									<li class="mega-title menu-item-has-children"><a href="#">column
											02</a>
										<ul class="dropdown">
											<li><a href="product-details.html">product details</a></li>
											<li><a href="product-details-affiliate.html">product
													details affiliate</a></li>
											<li><a href="product-details-variable.html">product
													details variable</a></li>
											<li><a href="product-details-group.html">product
													details group</a></li>
										</ul></li>
									<li class="mega-title menu-item-has-children"><a href="#">column
											03</a>
										<ul class="dropdown">
											<li><a href="cart.html">cart</a></li>
											<li><a href="checkout.html">checkout</a></li>
											<li><a href="compare.html">compare</a></li>
											<li><a href="wishlist.html">wishlist</a></li>
										</ul></li>
									<li class="mega-title menu-item-has-children"><a href="#">column
											04</a>
										<ul class="dropdown">
											<li><a href="my-account.html">my-account</a></li>
											<li><a href="login-register.html">login-register</a></li>
											<li><a href="contact-us.html">contact us</a></li>
										</ul></li>
								</ul></li>
							<li class="menu-item-has-children "><a href="#">shop</a>
								<ul class="dropdown">
									<li class="menu-item-has-children"><a href="#">shop
											grid layout</a>
										<ul class="dropdown">
											<li><a href="shop.html">shop grid left sidebar</a></li>
											<li><a href="shop-grid-right-sidebar.html">shop grid
													right sidebar</a></li>
											<li><a href="shop-grid-full-3-col.html">shop grid
													full 3 col</a></li>
											<li><a href="shop-grid-full-4-col.html">shop grid
													full 4 col</a></li>
										</ul></li>
									<li class="menu-item-has-children"><a href="#">shop
											list layout</a>
										<ul class="dropdown">
											<li><a href="shop-list-left-sidebar.html">shop list
													left sidebar</a></li>
											<li><a href="shop-list-right-sidebar.html">shop list
													right sidebar</a></li>
											<li><a href="shop-list-full-width.html">shop list
													full width</a></li>
										</ul></li>
									<li class="menu-item-has-children"><a href="#">products
											details</a>
										<ul class="dropdown">
											<li><a href="product-details.html">product details</a></li>
											<li><a href="product-details-affiliate.html">product
													details affiliate</a></li>
											<li><a href="product-details-variable.html">product
													details variable</a></li>
											<li><a href="product-details-group.html">product
													details group</a></li>
										</ul></li>
								</ul></li>
							<li class="menu-item-has-children "><a href="#">Blog</a>
								<ul class="dropdown">
									<li><a href="blog-left-sidebar.html">blog left sidebar</a></li>
									<li><a href="blog-right-sidebar.html">blog right
											sidebar</a></li>
									<li><a href="blog-grid-full-width.html">blog grid no
											sidebar</a></li>
									<li><a href="blog-details.html">blog details</a></li>
									<li><a href="blog-details-audio.html">blog details
											audio</a></li>
									<li><a href="blog-details-video.html">blog details
											video</a></li>
									<li><a href="blog-details-left-sidebar.html">blog
											details left sidebar</a></li>
								</ul></li>
							<li><a href="contact-us.html">Contact us</a></li>
						</ul>
					</nav>
					<!-- mobile menu navigation end -->
				</div>
				<!-- mobile menu end -->

				<!-- user setting option start -->
				<div class="mobile-settings">
					<ul class="nav">
						<li>
							<div class="dropdown mobile-top-dropdown">
								<a href="#" class="dropdown-toggle" id="currency"
									data-toggle="dropdown" aria-haspopup="true"
									aria-expanded="false"> Currency <i class="fa fa-angle-down"></i>
								</a>
								<div class="dropdown-menu" aria-labelledby="currency">
									<a class="dropdown-item" href="#">$ USD</a> <a
										class="dropdown-item" href="#">$ EURO</a>
								</div>
							</div>
						</li>
						<li>
							<div class="dropdown mobile-top-dropdown">
								<a href="#" class="dropdown-toggle" id="myaccount"
									data-toggle="dropdown" aria-haspopup="true"
									aria-expanded="false"> My Account <i
									class="fa fa-angle-down"></i>
								</a>
								<div class="dropdown-menu" aria-labelledby="myaccount">
									<a class="dropdown-item" href="my-account.html">my account</a>
									<a class="dropdown-item" href="login-register.html"> login</a>
									<a class="dropdown-item" href="login-register.html">register</a>
								</div>
							</div>
						</li>
					</ul>
				</div>
				<!-- user setting option end -->

				<!-- offcanvas widget area start -->
				<div class="offcanvas-widget-area">
					<div class="off-canvas-contact-widget">
						<ul>
							<li><i class="fa fa-mobile"></i> <a href="#">0123456789</a>
							</li>
							<li><i class="fa fa-envelope-o"></i> <a href="#">info@yourdomain.com</a>
							</li>
						</ul>
					</div>
					<div class="off-canvas-social-widget">
						<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
							class="fa fa-twitter"></i></a> <a href="#"><i
							class="fa fa-pinterest-p"></i></a> <a href="#"><i
							class="fa fa-linkedin"></i></a> <a href="#"><i
							class="fa fa-youtube-play"></i></a>
					</div>
				</div>
				<!-- offcanvas widget area end -->
			</div>
		</div>
	</aside>
	<!-- off-canvas menu end -->

	<!-- main wrapper start -->
	<main>
		<!-- breadcrumb area start -->
		<div class="breadcrumb-area bg-img"
			data-bg="<c:url value="/public/assets/img/banner/breadcrumb-banner.jpg"/>">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<div class="breadcrumb-wrap text-center">
							<nav aria-label="breadcrumb">
								<h1 class="breadcrumb-title">shop</h1>
								<ul class="breadcrumb">
									<li class="breadcrumb-item"><a href="index.html">Home</a></li>
									<li class="breadcrumb-item active" aria-current="page">shop
										list left sidebar</li>
								</ul>
							</nav>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- breadcrumb area end -->

		<!-- page main wrapper start -->
		<div class="shop-main-wrapper section-padding">
			<div class="container">
				<div class="row">
					<!-- sidebar area start -->
					<div class="col-lg-3 order-2 order-lg-1">
						<div class="sidebar-wrapper">
							<!-- single sidebar start -->
							<div class="sidebar-single">
								<div class="sidebar-title">
									<h3>Categories</h3>
								</div>
								<div class="sidebar-body">
									<ul class="color-list">
										<c:forEach items="${categories}" var="item">

											<li><a href="#">${item.name} <span>${fn:length(item.lstProduct)}</span></a></li>
										</c:forEach>
									</ul>
								</div>
							</div>
							<!-- single sidebar end -->

							<!-- single sidebar start -->
							<div class="sidebar-single">
								<div class="sidebar-title">
									<h3>filter by price</h3>
								</div>
								<div class="sidebar-body">
									<div class="price-range-wrap">
										<div class="price-range" data-min="20" data-max="400"></div>
										<div class="range-slider">
											<form action="#">
												<div class="price-input">
													<label for="amount">Price: </label> <input type="text"
														id="amount">
												</div>
												<button class="filter-btn">filter</button>
											</form>
										</div>
									</div>
								</div>
							</div>
							<!-- single sidebar end -->

							<!-- single sidebar start -->
							<div class="sidebar-single">
								<div class="sidebar-title">
									<h3>color</h3>
								</div>
								<div class="sidebar-body">
									<ul class="color-list">
										<li><a href="#">gold <span>(05)</span></a></li>
										<li><a href="#">green <span>(12)</span></a></li>
										<li><a href="#">blue <span>(14)</span></a></li>
										<li><a href="#">white <span>(20)</span></a></li>
										<li><a href="#">red <span>(08)</span></a></li>
									</ul>
								</div>
							</div>
							<!-- single sidebar end -->

							<!-- single sidebar start -->
							<div class="sidebar-single">
								<div class="sidebar-title">
									<h3>size</h3>
								</div>
								<div class="sidebar-body">
									<ul class="size-list">
										<li><a href="#">L <span>(05)</span></a></li>
										<li><a href="#">M <span>(06)</span></a></li>
										<li><a href="#">S <span>(02)</span></a></li>
										<li><a href="#">XL <span>(01)</span></a></li>
									</ul>
								</div>
							</div>
							<!-- single sidebar end -->

							<!-- single sidebar start -->
							<div class="sidebar-single">
								<div class="sidebar-banner">
									<a href="#"> <img
										src="<c:url value="/public/assets/img/banner/banner_left.jpg"/>"
										alt="">
									</a>
								</div>
							</div>
							<!-- single sidebar end -->
						</div>
					</div>
					<!-- sidebar area end -->

					<!-- shop main wrapper start -->
					<div class="col-lg-9 order-1 order-lg-2">
						<div class="shop-product-wrapper">
							<!-- shop product top wrap start -->
							<div class="shop-top-bar">
								<div class="row">
									<div class="col-xl-5 col-lg-4 col-md-3 order-2 order-md-1">
										<div class="top-bar-left">
											<div class="product-view-mode">
												<a href="#" data-target="grid-view"><i class="fa fa-th"></i></a>
												<a class="active" href="#" data-target="list-view"><i
													class="fa fa-list"></i></a>
											</div>
										</div>
									</div>
									<div class="col-xl-7 col-lg-8 col-md-9 order-1 order-md-2">
										<div class="top-bar-right">
											<div class="product-short">
												<p>Sort By :</p>
												<select class="nice-select" name="sortby">
													<option value="trending">Relevance</option>
													<option value="sales">Name (A - Z)</option>
													<option value="sales">Name (Z - A)</option>
													<option value="rating">Price (Low &gt; High)</option>
													<option value="date">Rating (Lowest)</option>
													<option value="price-asc">Model (A - Z)</option>
													<option value="price-asc">Model (Z - A)</option>
												</select>
											</div>
											<div class="product-amount">
												<p>Showing 1–16 of 21 results</p>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- shop product top wrap start -->

							<!-- product item list start -->
							<div class="shop-product-wrap list-view row mbn-50">
								<c:forEach items="${products}" var="item">
									<div class="col-lg-4 col-sm-6">
										<!-- product grid item start -->
										<div class="product-item mb-53">
											<div class="product-thumb">
												<a href="product-details.html"> <img
													src="<c:url value="/public/assets/img/product"/>/${item.image}"
													alt="">
												</a>
											</div>
											<div class="product-content">
												<h5 class="product-name">
													<a href="productdetail">${item.name}</a>
												</h5>
												<div class="price-box">
													<span class="price-regular">$${item.price}</span>
													<c:if test="${item.sale_price!=0}">
														<span class="price-old"><del>$${item.sale_price}</del></span>
													</c:if>

												</div>
												<div class="product-action-link">
													<a href="#" data-toggle="tooltip" title="Wishlist"><i
														class="ion-android-favorite-outline"></i></a> <a href="#"
														data-toggle="tooltip" title="Add To Cart"><i
														class="ion-bag"></i></a> <a href="#" data-toggle="modal"
														data-target="#quick_view${item.id}"> <span
														data-toggle="tooltip" title="Quick View"><i
															class="ion-ios-eye-outline"></i></span>
													</a>
												</div>
											</div>
										</div>

										<!-- product grid item end -->
										<!-- product list item start -->
										<div class="product-list-item mb-30">
											<div class="product-thumb">
												<a href="product-details.html"> <img
													src="<c:url value="/public/assets/img/product"/>/${item.image}"
													alt="product thumb">
												</a>
											</div>
											<div class="product-content-list">
												<h5 class="product-name">
													<a href="productdetail">${item.name}...</a>
												</h5>
												<div class="price-box">
													<span class="price-regular">$${item.price}</span>
													<c:if test="${item.sale_price!=0}">
														<span class="price-old"><del>$${item.sale_price}</del></span>
													</c:if>
												</div>
												<p>${item.descriptions}</p>
												<div class="product-link-2 position-static">
													<a href="#" data-toggle="tooltip" title="Wishlist"><i
														class="ion-android-favorite-outline"></i></a> <a href="#"
														data-toggle="tooltip" title="Add To Cart"><i
														class="ion-bag"></i></a> <a href="#" data-toggle="modal"
														data-target="#quick_view${item.id}"> <span
														data-toggle="tooltip" title="Quick View"><i
															class="ion-ios-eye-outline"></i></span>
													</a>
												</div>
											</div>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>
						<!-- product item list end -->

						<!-- start pagination area -->
						<div class="paginatoin-area text-center mt-45">
							<ul class="pagination-box">
								<li><a class="Previous" href="#"><i
										class="ion-ios-arrow-left"></i></a></li>
								<li class="active"><a href="#">1</a></li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a class="Next" href="#"><i
										class="ion-ios-arrow-right"></i></a></li>
							</ul>
						</div>
						<!-- end pagination area -->
					</div>
				</div>
				<!-- shop main wrapper end -->
			</div>
		</div>
		</div>
		<!-- page main wrapper end -->
	</main>
	<!-- main wrapper end -->
	<c:forEach items="${products}" var="item">
		<!-- Quick view modal start -->
		<div class="modal" id="quick_view${item.id}">
			<div class="modal-dialog modal-lg modal-dialog-centered">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
					</div>
					<div class="modal-body">
						<!-- product details inner end -->
						<div class="product-details-inner">
							<div class="row">
								<div class="col-lg-5">
									<div class="product-large-slider mb-20">
										<div class="pro-large-img img-zoom">
											<img
												src="<c:url value="/public/assets/img/product"/>/${item.image}"
												alt="product thumb" />
										</div>
										<div class="pro-large-img img-zoom">
											<img
												src="<c:url value="/public/assets/img/product/product-details-img2.jpg"/>"
												alt="product thumb" />
										</div>
										<div class="pro-large-img img-zoom">
											<img
												src="<c:url value="/public/assets/img/product/product-details-img3.jpg"/>"
												alt="product thumb" />
										</div>
										<div class="pro-large-img img-zoom">
											<img
												src="<c:url value="/public/assets/img/product/product-details-img4.jpg"/>"
												alt="product thumb" />
										</div>
									</div>
									<div class="pro-nav slick-row-5">
										<div class="pro-nav-thumb">
											<img
												src="<c:url value="/public/assets/img/product/product-details-img1.jpg"/>"
												alt="" />
										</div>
										<div class="pro-nav-thumb">
											<img
												src="<c:url value="/public/assets/img/product/product-details-img2.jpg"/>"
												alt="" />
										</div>
										<div class="pro-nav-thumb">
											<img
												src="<c:url value="/public/assets/img/product/product-details-img3.jpg"/>"
												alt="" />
										</div>
										<div class="pro-nav-thumb">
											<img
												src="<c:url value="/public/assets/img/product/product-details-img4.jpg"/>"
												alt="" />
										</div>
									</div>
								</div>
								<div class="col-lg-7">
									<div class="product-details-des">
										<h3 class="productdetail">${item.name}</h3>
										<div class="pro-review">
											<span><a href="#">1 Review(s)</a></span>
										</div>
										<div class="price-box">
											<span class="regular-price">$${item.price}</span> 
											<c:if test="${item.sale_price!=0}"><span
												class="old-price"><del>$${item.sale_price}</del></span></c:if>
											
										</div>
										<p>${item.descriptions}</p>
										<div class="quantity-cart-box d-flex align-items-center mb-20">
											<div class="quantity">
												<div class="pro-qty">
													<input type="text" value="1">
												</div>
											</div>
											<a href="cart.html" class="btn btn-default">Add To Cart</a>
										</div>
										<div class="availability mb-20">
											<h5 class="cat-title">Availability:</h5>
											<span>In Stock</span>
										</div>
										<div class="share-icon">
											<h5 class="cat-title">Share:</h5>
											<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
												class="fa fa-twitter"></i></a> <a href="#"><i
												class="fa fa-pinterest"></i></a> <a href="#"><i
												class="fa fa-google-plus"></i></a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- product details inner end -->
					</div>
				</div>
			</div>
		</div>
	</c:forEach>



	<jsp:include page="/WEB-INF/views/client/footer/footer.jsp"></jsp:include>
</body>
</html>