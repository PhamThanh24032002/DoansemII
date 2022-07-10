<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="meta description">
<title>Juan - Shoes Store HTML Template</title>
<jsp:include page="WEB-INF/views/client/script/script.jsp"></jsp:include>
</head>

<body>
	<jsp:include page="WEB-INF/views/client/header/header.jsp"></jsp:include>
	<!-- main wrapper start -->
	<main>
		<!-- hero slider section start -->
		<section class="hero-slider">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<div
							class="hero-slider-active slick-arrow-style slick-arrow-style_hero slick-dot-style">
							<!-- single slider item start -->
							<div class="hero-single-slide">
								<div class="hero-slider-item bg-img"
									data-bg="<c:url value="/public/assets/img/slider/banner-4-561.jpg"/>">
									<div class="hero-slider-content slide-1">
										<h5 class="slide-subtitle">Top Selling!</h5>
										<h2 class="slide-title">New Collection</h2>
										<p class="slide-desc">Lorem ipsum dolor sit amet,
											consectetur adipisicing elit, sed do eiusmod tempor incidid</p>
										<a href="shop.html" class="btn btn-hero">SHOP NOW</a>
									</div>
								</div>
							</div>
							<!-- single slider item end -->

							<!-- single slider item start -->
							<div class="hero-single-slide">
								<div class="hero-slider-item bg-img"
									data-bg="<c:url value="/public/assets/img/slider/slider_3.webp"/>">
									<div class="hero-slider-content slide-1">
										<h5 class="slide-subtitle">Best Selling!</h5>
										<h2 class="slide-title">Top Collection</h2>
										<p class="slide-desc">Lorem ipsum dolor sit amet,
											consectetur adipisicing elit, sed do eiusmod tempor incidid</p>
										<a href="shop.html" class="btn btn-hero">SHOP NOW</a>
									</div>
								</div>
							</div>
							<!-- single slider item end -->
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- hero slider section end -->

		<!-- service features start -->
		<section class="service-policy-area">
			<div class="container">
				<div class="row">
					<!-- single policy item start -->
					<div class="col-lg-4">
						<div class="service-policy-item mt-30 bg-1">
							<div class="policy-icon">
								<img src="<c:url value="/public/assets/img/icon/policy-1.png"/>"
									alt="policy icon">
							</div>
							<div class="policy-content">
								<h5 class="policy-title">FREE SHIPPING</h5>
								<p class="policy-desc">Free shipping on all order</p>
							</div>
						</div>
					</div>
					<!-- single policy item start -->

					<!-- single policy item start -->
					<div class="col-lg-4">
						<div class="service-policy-item mt-30 bg-2">
							<div class="policy-icon">
								<img src="<c:url value="/public/assets/img/icon/policy-2.png"/>"
									alt="policy icon">
							</div>
							<div class="policy-content">
								<h5 class="policy-title">ONLINE SUPPORT</h5>
								<p class="policy-desc">Online support 24 hours a day</p>
							</div>
						</div>
					</div>
					<!-- single policy item start -->

					<!-- single policy item start -->
					<div class="col-lg-4">
						<div class="service-policy-item mt-30 bg-3">
							<div class="policy-icon">
								<img src="<c:url value="/public/assets/img/icon/policy-3.png"/>"
									alt="policy icon">
							</div>
							<div class="policy-content">
								<h5 class="policy-title">MONEY RETURN</h5>
								<p class="policy-desc">Back guarantee under 5 days</p>
							</div>
						</div>
					</div>
					<!-- single policy item start -->
				</div>
			</div>
		</section>
		<!-- service features end -->

		<!-- our product area start -->
		<section class="our-product section-padding">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<div class="section-title text-center">
							<h2 class="title">Our Product</h2>
							<p class="sub-title">Lorem ipsum dolor sit amet consectetur
								adipisicing</p>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-12">
						<div
							class="product-carousel-4 mbn-50 slick-row-15 slick-arrow-style">
							<c:forEach items="${products}" var="item">

								<!-- product single item start -->
								<div class="product-item mb-50">
									<div class="product-thumb">
										<a href="product-details.html"> <img
											src="<c:url value="/public/assets/img/product"/>/${item.image}"
											alt="">
										</a>
									</div>
									<div class="product-content">
										<h5 class="product-name">
											<a href="product-details.html">${item.name}</a>
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
							</c:forEach>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- our product area end -->

		<!-- banner statistic area start -->
		<div class="banner-statistics">
			<div class="container">
				<div class="row no-gutters mtn-30">
					<div class="col-md-6">
						<div class="img-container mt-30">
							<a href="product-details.html"> <img
								src="<c:url value="/public/assets/img/banner/banner-1.jpg"/>"
								alt="banner-image">
							</a>
							<div class="banner-text">
								<h5 class="banner-subtitle">sports shoes</h5>
								<h3 class="banner-title">
									20% Off<br>For Sports men
								</h3>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="img-container mt-30">
							<a href="product-details.html"> <img
								src="<c:url value="/public/assets/img/banner/banner-2.jpg"/>"
								alt="banner-image">
							</a>
							<div class="banner-text">
								<h5 class="banner-subtitle">sports shoes</h5>
								<h3 class="banner-title">
									20% Off<br>For Sports men
								</h3>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- banner statistic area end -->

		<!-- top seller area start -->
		<section class="top-seller-area section-padding">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<div class="section-title text-center">
							<h2 class="title">top seller</h2>
							<p class="sub-title">Lorem ipsum dolor sit amet consectetur
								adipisicing</p>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-xl-4 col-lg-5 col-md-5">
						<div class="product-banner">
							<a href="#"> <img
								src="<c:url value="/public/assets/img/banner/banner-3.jpg"/>"
								alt="product banner">
							</a>
						</div>
					</div>
					<div class="col-xl-8 col-lg-7 col-md-7">
						<div class="top-seller-carousel slick-row-15 mtn-30">
							<!-- product item start -->
							<div class="slide-item">
								<div class="pro-item-small mt-30">
									<div class="product-thumb">
										<a href="product-details.html"> <img
											src="<c:url value="/public/assets/img/product/pro-small-1.jpg"/>"
											alt="">
										</a>
									</div>
									<div class="pro-small-content">
										<h6 class="product-name">
											<a href="product-details.html">Simple Fabric Shoe</a>
										</h6>
										<div class="price-box">
											<span class="price-regular">$80.00</span> <span
												class="price-old"><del>$70.00</del></span>
										</div>
										<div class="ratings">
											<span><i class="ion-android-star"></i></span> <span><i
												class="ion-android-star"></i></span> <span><i
												class="ion-android-star"></i></span> <span><i
												class="ion-android-star"></i></span> <span><i
												class="ion-android-star"></i></span>
										</div>
										<div class="product-link-2">
											<a href="#" data-toggle="tooltip" title="Wishlist"><i
												class="ion-android-favorite-outline"></i></a> <a href="#"
												data-toggle="tooltip" title="Add To Cart"><i
												class="ion-bag"></i></a> <a href="#" data-toggle="modal"
												data-target="#quick_view"> <span data-toggle="tooltip"
												title="Quick View"><i class="ion-ios-eye-outline"></i></span>
											</a>
										</div>
									</div>
								</div>
							</div>
							<!-- product item start -->

							<!-- product item start -->
							<div class="slide-item">
								<div class="pro-item-small mt-30">
									<div class="product-thumb">
										<a href="product-details.html"> <img
											src="<c:url value="/public/assets/img/product/pro-small-2.jpg"/>"
											alt="">
										</a>
									</div>
									<div class="pro-small-content">
										<h6 class="product-name">
											<a href="product-details.html">exclusive mens shoe</a>
										</h6>
										<div class="price-box">
											<span class="price-regular">$80.00</span> <span
												class="price-old"><del>$70.00</del></span>
										</div>
										<div class="ratings">
											<span><i class="ion-android-star"></i></span> <span><i
												class="ion-android-star"></i></span> <span><i
												class="ion-android-star"></i></span> <span><i
												class="ion-android-star"></i></span> <span><i
												class="ion-android-star"></i></span>
										</div>
										<div class="product-link-2">
											<a href="#" data-toggle="tooltip" title="Wishlist"><i
												class="ion-android-favorite-outline"></i></a> <a href="#"
												data-toggle="tooltip" title="Add To Cart"><i
												class="ion-bag"></i></a> <a href="#" data-toggle="modal"
												data-target="#quick_view"> <span data-toggle="tooltip"
												title="Quick View"><i class="ion-ios-eye-outline"></i></span>
											</a>
										</div>
									</div>
								</div>
							</div>
							<!-- product item start -->

							<!-- product item start -->
							<div class="slide-item">
								<div class="pro-item-small mt-30">
									<div class="product-thumb">
										<a href="product-details.html"> <img
											src="<c:url value="/public/assets/img/product/pro-small-3.jpg"/>"
											alt="">
										</a>
									</div>
									<div class="pro-small-content">
										<h6 class="product-name">
											<a href="product-details.html">Quickiin Mens shoes</a>
										</h6>
										<div class="price-box">
											<span class="price-regular">$80.00</span> <span
												class="price-old"><del>$70.00</del></span>
										</div>
										<div class="ratings">
											<span><i class="ion-android-star"></i></span> <span><i
												class="ion-android-star"></i></span> <span><i
												class="ion-android-star"></i></span> <span><i
												class="ion-android-star"></i></span> <span><i
												class="ion-android-star"></i></span>
										</div>
										<div class="product-link-2">
											<a href="#" data-toggle="tooltip" title="Wishlist"><i
												class="ion-android-favorite-outline"></i></a> <a href="#"
												data-toggle="tooltip" title="Add To Cart"><i
												class="ion-bag"></i></a> <a href="#" data-toggle="modal"
												data-target="#quick_view"> <span data-toggle="tooltip"
												title="Quick View"><i class="ion-ios-eye-outline"></i></span>
											</a>
										</div>
									</div>
								</div>
							</div>
							<!-- product item start -->

							<!-- product item start -->
							<div class="slide-item">
								<div class="pro-item-small mt-30">
									<div class="product-thumb">
										<a href="product-details.html"> <img
											src="<c:url value="/public/assets/img/product/pro-small-4.jpg"/>"
											alt="">
										</a>
									</div>
									<div class="pro-small-content">
										<h6 class="product-name">
											<a href="product-details.html">Primitive Men shoes</a>
										</h6>
										<div class="price-box">
											<span class="price-regular">$80.00</span> <span
												class="price-old"><del>$70.00</del></span>
										</div>
										<div class="ratings">
											<span><i class="ion-android-star"></i></span> <span><i
												class="ion-android-star"></i></span> <span><i
												class="ion-android-star"></i></span> <span><i
												class="ion-android-star"></i></span> <span><i
												class="ion-android-star"></i></span>
										</div>
										<div class="product-link-2">
											<a href="#" data-toggle="tooltip" title="Wishlist"><i
												class="ion-android-favorite-outline"></i></a> <a href="#"
												data-toggle="tooltip" title="Add To Cart"><i
												class="ion-bag"></i></a> <a href="#" data-toggle="modal"
												data-target="#quick_view"> <span data-toggle="tooltip"
												title="Quick View"><i class="ion-ios-eye-outline"></i></span>
											</a>
										</div>
									</div>
								</div>
							</div>
							<!-- product item start -->

							<!-- product item start -->
							<div class="slide-item">
								<div class="pro-item-small mt-30">
									<div class="product-thumb">
										<a href="product-details.html"> <img
											src="<c:url value="/public/assets/img/product/pro-small-2.jpg"/>"
											alt="">
										</a>
									</div>
									<div class="pro-small-content">
										<h6 class="product-name">
											<a href="product-details.html">Sports Mens shoes</a>
										</h6>
										<div class="price-box">
											<span class="price-regular">$80.00</span> <span
												class="price-old"><del>$70.00</del></span>
										</div>
										<div class="ratings">
											<span><i class="ion-android-star"></i></span> <span><i
												class="ion-android-star"></i></span> <span><i
												class="ion-android-star"></i></span> <span><i
												class="ion-android-star"></i></span> <span><i
												class="ion-android-star"></i></span>
										</div>
										<div class="product-link-2">
											<a href="#" data-toggle="tooltip" title="Wishlist"><i
												class="ion-android-favorite-outline"></i></a> <a href="#"
												data-toggle="tooltip" title="Add To Cart"><i
												class="ion-bag"></i></a> <a href="#" data-toggle="modal"
												data-target="#quick_view"> <span data-toggle="tooltip"
												title="Quick View"><i class="ion-ios-eye-outline"></i></span>
											</a>
										</div>
									</div>
								</div>
							</div>
							<!-- product item start -->

							<!-- product item start -->
							<div class="slide-item">
								<div class="pro-item-small mt-30">
									<div class="product-thumb">
										<a href="product-details.html"> <img
											src="<c:url value="/public/assets/img/product/pro-small-3.jpg"/>"
											alt="">
										</a>
									</div>
									<div class="pro-small-content">
										<h6 class="product-name">
											<a href="product-details.html">Quickiin Mens shoes</a>
										</h6>
										<div class="price-box">
											<span class="price-regular">$80.00</span> <span
												class="price-old"><del>$70.00</del></span>
										</div>
										<div class="ratings">
											<span><i class="ion-android-star"></i></span> <span><i
												class="ion-android-star"></i></span> <span><i
												class="ion-android-star"></i></span> <span><i
												class="ion-android-star"></i></span> <span><i
												class="ion-android-star"></i></span>
										</div>
										<div class="product-link-2">
											<a href="#" data-toggle="tooltip" title="Wishlist"><i
												class="ion-android-favorite-outline"></i></a> <a href="#"
												data-toggle="tooltip" title="Add To Cart"><i
												class="ion-bag"></i></a> <a href="#" data-toggle="modal"
												data-target="#quick_view"> <span data-toggle="tooltip"
												title="Quick View"><i class="ion-ios-eye-outline"></i></span>
											</a>
										</div>
									</div>
								</div>
							</div>
							<!-- product item start -->
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- top seller area end -->

		<!-- latest blog area start -->
		<section class="latest-blog-area">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<div class="section-title text-center">
							<h2 class="title">our blog</h2>
							<p class="sub-title">Lorem ipsum dolor sit amet consectetur
								adipisicing</p>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-12">
						<div class="blog-carousel-active slick-row-15">
							<!-- blog single item start -->
							<div class="blog-post-item">
								<div class="blog-thumb">
									<a href="blog-details.html"> <img
										src="<c:url value="/public/assets/img/blog/blog-1.jpg"/>"
										alt="blog thumb">
									</a>
								</div>
								<div class="blog-content">
									<h5 class="blog-title">
										<a href="blog-details.html"> Celebrity Daughter Opens
											About to Having Her Eye color </a>
									</h5>
									<ul class="blog-meta">
										<li><span>By: </span>Admin,</li>
										<li><span>On: </span>14.07.2029</li>
									</ul>
									<a href="blog-details.html" class="read-more">Read More...</a>
								</div>
							</div>
							<!-- blog single item start -->

							<!-- blog single item start -->
							<div class="blog-post-item">
								<div class="blog-thumb">
									<a href="blog-details.html"> <img
										src="<c:url value="/public/assets/img/blog/blog-2.jpg"/>"
										alt="blog thumb">
									</a>
								</div>
								<div class="blog-content">
									<h5 class="blog-title">
										<a href="blog-details.html"> Sotto Winner Offering Money
											To Any Man That Will Date Her </a>
									</h5>
									<ul class="blog-meta">
										<li><span>By: </span>Admin,</li>
										<li><span>On: </span>14.07.2029</li>
									</ul>
									<a href="blog-details.html" class="read-more">Read More...</a>
								</div>
							</div>
							<!-- blog single item start -->

							<!-- blog single item start -->
							<div class="blog-post-item">
								<div class="blog-thumb">
									<a href="blog-details.html"> <img
										src="<c:url value="/public/assets/img/blog/blog-3.jpg"/>"
										alt="blog thumb">
									</a>
								</div>
								<div class="blog-content">
									<h5 class="blog-title">
										<a href="blog-details.html"> Children Left Home Alone For
											4 Days In TV Series Experiment </a>
									</h5>
									<ul class="blog-meta">
										<li><span>By: </span>Admin,</li>
										<li><span>On: </span>14.07.2029</li>
									</ul>
									<a href="blog-details.html" class="read-more">Read More...</a>
								</div>
							</div>
							<!-- blog single item start -->

							<!-- blog single item start -->
							<div class="blog-post-item">
								<div class="blog-thumb">
									<a href="blog-details.html"> <img
										src="<c:url value="/public/assets/img/blog/blog-2.jpg"/>"
										alt="blog thumb">
									</a>
								</div>
								<div class="blog-content">
									<h5 class="blog-title">
										<a href="blog-details.html"> People Are Willing Lie When
											To Comes Money Research from </a>
									</h5>
									<ul class="blog-meta">
										<li><span>By: </span>Admin,</li>
										<li><span>On: </span>14.07.2029</li>
									</ul>
									<a href="blog-details.html" class="read-more">Read More...</a>
								</div>
							</div>
							<!-- blog single item start -->
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- latest blog area end -->

		<!-- brand area start -->
		<div class="brand-area section-padding">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<div class="brand-active-carousel">
							<div class="brand-item">
								<a href="#"> <img
									src="<c:url value="/public/assets/img/brand/br1.png"/>"
									alt="brand image">
								</a>
							</div>
							<div class="brand-item">
								<a href="#"> <img
									src="<c:url value="/public/assets/img/brand/br2.png"/>"
									alt="brand image">
								</a>
							</div>
							<div class="brand-item">
								<a href="#"> <img
									src="<c:url value="/public/assets/img/brand/br3.png"/>"
									alt="brand image">
								</a>
							</div>
							<div class="brand-item">
								<a href="#"> <img
									src="<c:url value="/public/assets/img/brand/br4.png"/>"
									alt="brand image">
								</a>
							</div>
							<div class="brand-item">
								<a href="#"> <img
									src="<c:url value="/public/assets/img/brand/br5.png"/>"
									alt="brand image">
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- brand area end -->
	</main>
	<!-- main wrapper end -->

	<!-- Quick view modal start -->
	<c:forEach items="${products}" var="item">
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
										<h3 class="pro-det-title">${item.name}</h3>
										<div class="pro-review">
											<span><a href="#">1 Review(s)</a></span>
										</div>
										<div class="price-box">
											<span class="regular-price">$${item.price}</span>
											<c:if test="${item.sale_price!=0}">
												<span class="old-price"><del>$${item.sale_price}</del></span>
											</c:if>

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
		<!-- Quick view modal end -->
	</c:forEach>


	<jsp:include page="WEB-INF/views/client/footer/footer.jsp"></jsp:include>
</body>
</html>