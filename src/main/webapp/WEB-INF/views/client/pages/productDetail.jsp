<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<jsp:include page="/WEB-INF/views/client/script/script.jsp"></jsp:include>
</head>

<body>
<jsp:include page="/WEB-INF/views/client/header/header.jsp"></jsp:include>

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
                        <button class="search-btn"><i class="ion-ios-search-strong"></i></button>
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
                                </ul>
                            </li>
                            <li class="menu-item-has-children"><a href="#">pages</a>
                                <ul class="megamenu dropdown">
                                    <li class="mega-title menu-item-has-children"><a href="#">column 01</a>
                                        <ul class="dropdown">
                                            <li><a href="shop.html">shop grid left
                                                    sidebar</a></li>
                                            <li><a href="shop-grid-right-sidebar.html">shop grid right
                                                    sidebar</a></li>
                                            <li><a href="shop-list-left-sidebar.html">shop list left sidebar</a></li>
                                            <li><a href="shop-list-right-sidebar.html">shop list right sidebar</a></li>
                                        </ul>
                                    </li>
                                    <li class="mega-title menu-item-has-children"><a href="#">column 02</a>
                                        <ul class="dropdown">
                                            <li><a href="product-details.html">product details</a></li>
                                            <li><a href="product-details-affiliate.html">product
                                                    details
                                                    affiliate</a></li>
                                            <li><a href="product-details-variable.html">product details
                                                    variable</a></li>
                                            <li><a href="product-details-group.html">product details
                                                    group</a></li>
                                        </ul>
                                    </li>
                                    <li class="mega-title menu-item-has-children"><a href="#">column 03</a>
                                        <ul class="dropdown">
                                            <li><a href="cart.html">cart</a></li>
                                            <li><a href="checkout.html">checkout</a></li>
                                            <li><a href="compare.html">compare</a></li>
                                            <li><a href="wishlist.html">wishlist</a></li>
                                        </ul>
                                    </li>
                                    <li class="mega-title menu-item-has-children"><a href="#">column 04</a>
                                        <ul class="dropdown">
                                            <li><a href="my-account.html">my-account</a></li>
                                            <li><a href="login-register.html">login-register</a></li>
                                            <li><a href="contact-us.html">contact us</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li class="menu-item-has-children "><a href="#">shop</a>
                                <ul class="dropdown">
                                    <li class="menu-item-has-children"><a href="#">shop grid layout</a>
                                        <ul class="dropdown">
                                            <li><a href="shop.html">shop grid left sidebar</a></li>
                                            <li><a href="shop-grid-right-sidebar.html">shop grid right sidebar</a></li>
                                            <li><a href="shop-grid-full-3-col.html">shop grid full 3 col</a></li>
                                            <li><a href="shop-grid-full-4-col.html">shop grid full 4 col</a></li>
                                        </ul>
                                    </li>
                                    <li class="menu-item-has-children"><a href="#">shop list layout</a>
                                        <ul class="dropdown">
                                            <li><a href="shop-list-left-sidebar.html">shop list left sidebar</a></li>
                                            <li><a href="shop-list-right-sidebar.html">shop list right sidebar</a></li>
                                            <li><a href="shop-list-full-width.html">shop list full width</a></li>
                                        </ul>
                                    </li>
                                    <li class="menu-item-has-children"><a href="#">products details</a>
                                        <ul class="dropdown">
                                            <li><a href="product-details.html">product details</a></li>
                                            <li><a href="product-details-affiliate.html">product details affiliate</a></li>
                                            <li><a href="product-details-variable.html">product details variable</a></li>
                                            <li><a href="product-details-group.html">product details group</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li class="menu-item-has-children "><a href="#">Blog</a>
                                <ul class="dropdown">
                                    <li><a href="blog-left-sidebar.html">blog left sidebar</a></li>
                                    <li><a href="blog-right-sidebar.html">blog right sidebar</a></li>
                                    <li><a href="blog-grid-full-width.html">blog grid no sidebar</a></li>
                                    <li><a href="blog-details.html">blog details</a></li>
                                    <li><a href="blog-details-audio.html">blog details audio</a></li>
                                    <li><a href="blog-details-video.html">blog details video</a></li>
                                    <li><a href="blog-details-left-sidebar.html">blog details left sidebar</a></li>
                                </ul>
                            </li>
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
                                <a href="#" class="dropdown-toggle" id="currency" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    Currency
                                    <i class="fa fa-angle-down"></i>
                                </a>
                                <div class="dropdown-menu" aria-labelledby="currency">
                                    <a class="dropdown-item" href="#">$ USD</a>
                                    <a class="dropdown-item" href="#">$ EURO</a>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="dropdown mobile-top-dropdown">
                                <a href="#" class="dropdown-toggle" id="myaccount" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    My Account
                                    <i class="fa fa-angle-down"></i>
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
                            <li><i class="fa fa-mobile"></i>
                                <a href="#">0123456789</a>
                            </li>
                            <li><i class="fa fa-envelope-o"></i>
                                <a href="#">info@yourdomain.com</a>
                            </li>
                        </ul>
                    </div>
                    <div class="off-canvas-social-widget">
                        <a href="#"><i class="fa fa-facebook"></i></a>
                        <a href="#"><i class="fa fa-twitter"></i></a>
                        <a href="#"><i class="fa fa-pinterest-p"></i></a>
                        <a href="#"><i class="fa fa-linkedin"></i></a>
                        <a href="#"><i class="fa fa-youtube-play"></i></a>
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
        <div class="breadcrumb-area bg-img" data-bg="assets/img/banner/breadcrumb-banner.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="breadcrumb-wrap text-center">
                            <nav aria-label="breadcrumb">
                                <h1 class="breadcrumb-title">shop</h1>
                                <ul class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                                    <li class="breadcrumb-item"><a href="shop.html">Shop</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Product Details Variable</li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- breadcrumb area end -->

        <!-- product details wrapper start -->
        <div class="product-details-wrapper section-padding">
            <div class="container custom-container">
                <div class="row">
                    <div class="col-12">
                        <!-- product details inner end -->
                        <div class="product-details-inner">
                            <div class="row">
                                <div class="col-lg-5">
                                    <div class="product-large-slider mb-20">
                                        <div class="pro-large-img img-zoom">
                                            <img src="<c:url value="/public/assets/img/product/product-details-img1.jpg"/>" alt="" />
                                        </div>
                                        <div class="pro-large-img img-zoom">
                                            <img src="<c:url value="/public/assets/img/product/product-details-img2.jpg"/>"  alt=""/>
                                        </div>
                                        <div class="pro-large-img img-zoom">
                                            <img src="<c:url value="/public/assets/img/product/product-details-img3.jpg"/>"  alt=""/>
                                        </div>
                                        <div class="pro-large-img img-zoom">
                                            <img src="<c:url value="/public/assets/img/product/product-details-img4.jpg"/>"  alt=""/>
                                        </div>
                                    </div>
                                    <div class="pro-nav slick-row-5">
                                        <div class="pro-nav-thumb"><img src="<c:url value="/public/assets/img/product/product-details-img1.jpg"/>"  alt="" /></div>
                                        <div class="pro-nav-thumb"><img src="<c:url value="/public/assets/img/product/product-details-img2.jpg"/>"  alt="" /></div>
                                        <div class="pro-nav-thumb"><img src="<c:url value="/public/assets/img/product/product-details-img3.jpg"/>"  alt="" /></div>
                                        <div class="pro-nav-thumb"><img src="<c:url value="/public/assets/img/product/product-details-img4.jpg"/>"  alt="" /></div>
                                    </div>
                                </div>
                                <div class="col-lg-7">
                                    <div class="product-details-des">
                                        <h3 class="pro-det-title">Primitive Mens Premium Shoes</h3>
                                        <div class="pro-review">
                                            <span><a href="#">1 Review(s)</a></span>
                                        </div>
                                        <div class="price-box">
                                            <span class="regular-price">$70.00</span>
                                            <span class="old-price"><del>$80.00</del></span>
                                        </div>
                                        <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.<br>
                                        Phasellus id nisi quis justo tempus mollis sed et dui. In hac habitasse platea dictumst. Suspendisse ultrices mauris diam. Nullam sed aliquet elit. Mauris consequat nisi ut mauris efficitur lacinia.</p>
                                        <div class="quantity-cart-box d-flex align-items-center mb-20">
                                            <div class="quantity">
                                                <div class="pro-qty"><input type="text" value="1"></div>
                                            </div>
                                            <a href="cart.html" class="btn btn-default">Add To Cart</a>
                                        </div>
                                        <div class="pro-size mb-20">
                                            <h5 class="cat-title">Color :</h5>
                                            <select class="nice-select">
                                                <option>Đỏ</option>
                                                <option>Xanh</option>
                                                <option>Tím</option>
                                                <option>Vàng</option>
                                            </select>
                                        </div>
                                        <div class="pro-size mb-20">
                                            <h5 class="cat-title">Size :</h5>
                                            <select class="nice-select">
                                                <option>S</option>
                                                <option>M</option>
                                                <option>L</option>
                                                <option>XL</option>
                                            </select>
                                        </div>
                                        <div class="availability mb-20">
                                            <h5 class="cat-title">Availability:</h5>
                                            <span>In Stock</span>
                                        </div>
                                        <div class="share-icon">
                                            <h5 class="cat-title">Share:</h5>
                                            <a href="#"><i class="fa fa-facebook"></i></a>
                                            <a href="#"><i class="fa fa-twitter"></i></a>
                                            <a href="#"><i class="fa fa-pinterest"></i></a>
                                            <a href="#"><i class="fa fa-google-plus"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- product details inner end -->

                        <!-- product details reviews start -->
                        <div class="product-details-reviews section-padding">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="product-review-info">
                                        <ul class="nav review-tab">
                                            <li>
                                                <a class="active" data-toggle="tab" href="#tab_one">description</a>
                                            </li>
                                            <li>
                                                <a data-toggle="tab" href="#tab_two">information</a>
                                            </li>
                                            <li>
                                                <a data-toggle="tab" href="#tab_three">reviews</a>
                                            </li>
                                        </ul>
                                        <div class="tab-content reviews-tab">
                                            <div class="tab-pane fade show active" id="tab_one">
                                                <div class="tab-one">
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Ipsum metus feugiat sem, quis fermentum turpis eros eget velit. Donec ac tempus ante. Fusce ultricies massa massa. Fusce aliquam, purus eget sagittis vulputate, sapien libero hendrerit est, sed commodo augue nisi non neque.</p>
                                                    <div class="review-description">
                                                        <div class="tab-thumb">
                                                            <img src="assets/img/about/services.jpg" alt="">
                                                        </div>
                                                        <div class="tab-des">
                                                            <h3>Product Information :</h3>
                                                            <ul>
                                                                <li>Donec non est at libero vulputate rutrum</li>
                                                                <li>Morbi ornare lectus quis justo gravida</li>
                                                                <li>Pellentesque aliquet, sem eget laoreet</li>
                                                                <li>Donec a neque libero</li>
                                                                <li>Pellentesque aliquet, sem eget laoreet</li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <p>Cras neque metus, consequat et blandit et, luctus a nunc. Etiam gravida vehicula tellus, in imperdiet ligula euismod eget. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nam erat mi, rutrum at sollicitudin rhoncus, ultricies posuere erat. Duis convallis, arcu nec aliquam consequat, purus felis vehicula felis, a dapibus enim lorem nec augue. Nunc facilisis sagittis ullamcorper.</p>
                                                    <p>Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt.</p>
                                                </div>
                                            </div>
                                            <div class="tab-pane fade" id="tab_two">
                                                <table class="table table-bordered">
                                                    <tbody>
                                                        <tr>
                                                            <td>color</td>
                                                            <td>black, blue, red</td>
                                                        </tr>
                                                        <tr>
                                                            <td>size</td>
                                                            <td>L, M, S</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <div class="tab-pane fade" id="tab_three">
                                                <form action="#" class="review-form">
                                                    <h5>1 review for <span>Chaz Kangeroo Hoodies</span></h5>
                                                    <div class="total-reviews">
                                                        <div class="rev-avatar">
                                                            <img src="assets/img/about/avatar.jpg" alt="">
                                                        </div>
                                                        <div class="review-box">
                                                            <div class="ratings">
                                                                <span class="good"><i class="fa fa-star"></i></span>
                                                                <span class="good"><i class="fa fa-star"></i></span>
                                                                <span class="good"><i class="fa fa-star"></i></span>
                                                                <span class="good"><i class="fa fa-star"></i></span>
                                                                <span><i class="fa fa-star"></i></span>
                                                            </div>
                                                            <div class="post-author">
                                                                <p><span>admin -</span> 30 Nov, 2018</p>
                                                            </div>
                                                            <p>Aliquam fringilla euismod risus ac bibendum. Sed sit amet sem varius ante feugiat lacinia. Nunc ipsum nulla, vulputate ut venenatis vitae, malesuada ut mi. Quisque iaculis, dui congue placerat pretium, augue erat accumsan lacus</p>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <div class="col">
                                                            <label class="col-form-label"><span class="text-danger">*</span> Your Name</label>
                                                            <input type="text" class="form-control" required>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <div class="col">
                                                            <label class="col-form-label"><span class="text-danger">*</span> Your Email</label>
                                                            <input type="email" class="form-control" required>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <div class="col">
                                                            <label class="col-form-label"><span class="text-danger">*</span> Your Review</label>
                                                            <textarea class="form-control" required></textarea>
                                                            <div class="help-block pt-10"><span class="text-danger">Note:</span> HTML is not translated!</div>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <div class="col">
                                                            <label class="col-form-label"><span class="text-danger">*</span> Rating</label>
                                                            &nbsp;&nbsp;&nbsp; Bad&nbsp;
                                                            <input type="radio" value="1" name="rating">
                                                            &nbsp;
                                                            <input type="radio" value="2" name="rating">
                                                            &nbsp;
                                                            <input type="radio" value="3" name="rating">
                                                            &nbsp;
                                                            <input type="radio" value="4" name="rating">
                                                            &nbsp;
                                                            <input type="radio" value="5" name="rating" checked>
                                                            &nbsp;Good
                                                        </div>
                                                    </div>
                                                    <div class="buttons">
                                                        <button class="sqr-btn" type="submit">Continue</button>
                                                    </div>
                                                </form> <!-- end of review-form -->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div> 
                        <!-- product details reviews end --> 

                        <!-- featured product area start -->
                        <section class="Related-product">
                            <div class="container">
                                <div class="row">
                                    <div class="col-12">
                                        <div class="section-title text-center">
                                            <h2 class="title">Related Product</h2>
                                            <p class="sub-title">Lorem ipsum dolor sit amet consectetur adipisicing</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-12">
                                        <div class="product-carousel-4 mbn-50 slick-row-15 slick-arrow-style">
                                            <!-- product single item start -->
                                            <div class="product-item mb-50">
                                                <div class="product-thumb">
                                                    <a href="product-details.html">
                                                        <img src="<c:url value="/public/assets/img/product/product-1.jpg"/>" alt="">
                                                    </a>
                                                </div>
                                                <div class="product-content">
                                                    <h5 class="product-name">
                                                        <a href="product-details.html">Leather Mens Slipper</a>
                                                    </h5>
                                                    <div class="price-box">
                                                        <span class="price-regular">$80.00</span>
                                                        <span class="price-old"><del>$70.00</del></span>
                                                    </div>
                                                    <div class="product-action-link">
                                                        <a href="#" data-toggle="tooltip" title="Wishlist"><i class="ion-android-favorite-outline"></i></a>
                                                        <a href="#" data-toggle="tooltip" title="Add To Cart"><i class="ion-bag"></i></a>
                                                        <a href="#" data-toggle="modal" data-target="#quick_view"> <span data-toggle="tooltip"
                                                            title="Quick View"><i class="ion-ios-eye-outline"></i></span> </a>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- product single item start -->

                                            <!-- product single item start -->
                                            <div class="product-item mb-50">
                                                <div class="product-thumb">
                                                    <a href="product-details.html">
                                                        <img src="<c:url value="/public/assets/img/product/product-2.jpg"/>" alt="">
                                                    </a>
                                                </div>
                                                <div class="product-content">
                                                    <h5 class="product-name">
                                                        <a href="product-details.html">Quickiin Mens shoes</a>
                                                    </h5>
                                                    <div class="price-box">
                                                        <span class="price-regular">$80.00</span>
                                                        <span class="price-old"><del>$70.00</del></span>
                                                    </div>
                                                    <div class="product-action-link">
                                                        <a href="#" data-toggle="tooltip" title="Wishlist"><i class="ion-android-favorite-outline"></i></a>
                                                        <a href="#" data-toggle="tooltip" title="Add To Cart"><i class="ion-bag"></i></a>
                                                        <a href="#" data-toggle="modal" data-target="#quick_view"> <span data-toggle="tooltip"
                                                            title="Quick View"><i class="ion-ios-eye-outline"></i></span> </a>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- product single item start -->

                                            <!-- product single item start -->
                                            <div class="product-item mb-50">
                                                <div class="product-thumb">
                                                    <a href="product-details.html">
                                                        <img src="<c:url value="/public/assets/img/product/product-3.jpg"/>" alt="">
                                                    </a>
                                                </div>
                                                <div class="product-content">
                                                    <h5 class="product-name">
                                                        <a href="product-details.html">Rexpo Womens shoes</a>
                                                    </h5>
                                                    <div class="price-box">
                                                        <span class="price-regular">$80.00</span>
                                                        <span class="price-old"><del>$70.00</del></span>
                                                    </div>
                                                    <div class="product-action-link">
                                                        <a href="#" data-toggle="tooltip" title="Wishlist"><i class="ion-android-favorite-outline"></i></a>
                                                        <a href="#" data-toggle="tooltip" title="Add To Cart"><i class="ion-bag"></i></a>
                                                        <a href="#" data-toggle="modal" data-target="#quick_view"> <span data-toggle="tooltip"
                                                            title="Quick View"><i class="ion-ios-eye-outline"></i></span> </a>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- product single item start -->

                                            <!-- product single item start -->
                                            <div class="product-item mb-50">
                                                <div class="product-thumb">
                                                    <a href="product-details.html">
                                                        <img src="<c:url value="/public/assets/img/product/product-4.jpg"/>" alt="">
                                                    </a>
                                                </div>
                                                <div class="product-content">
                                                    <h5 class="product-name">
                                                        <a href="product-details.html">Primitive Mens shoes</a>
                                                    </h5>
                                                    <div class="price-box">
                                                        <span class="price-regular">$80.00</span>
                                                        <span class="price-old"><del>$70.00</del></span>
                                                    </div>
                                                    <div class="product-action-link">
                                                        <a href="#" data-toggle="tooltip" title="Wishlist"><i class="ion-android-favorite-outline"></i></a>
                                                        <a href="#" data-toggle="tooltip" title="Add To Cart"><i class="ion-bag"></i></a>
                                                        <a href="#" data-toggle="modal" data-target="#quick_view"> <span data-toggle="tooltip"
                                                            title="Quick View"><i class="ion-ios-eye-outline"></i></span> </a>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- product single item start -->

                                            <!-- product single item start -->
                                            <div class="product-item mb-50">
                                                <div class="product-thumb">
                                                    <a href="product-details.html">
                                                        <img src="<c:url value="/public/assets/img/product/product-5.jpg"/>" alt="">
                                                    </a>
                                                </div>
                                                <div class="product-content">
                                                    <h5 class="product-name">
                                                        <a href="product-details.html">Leather Mens Slipper</a>
                                                    </h5>
                                                    <div class="price-box">
                                                        <span class="price-regular">$80.00</span>
                                                        <span class="price-old"><del>$70.00</del></span>
                                                    </div>
                                                    <div class="product-action-link">
                                                        <a href="#" data-toggle="tooltip" title="Wishlist"><i class="ion-android-favorite-outline"></i></a>
                                                        <a href="#" data-toggle="tooltip" title="Add To Cart"><i class="ion-bag"></i></a>
                                                        <a href="#" data-toggle="modal" data-target="#quick_view"> <span data-toggle="tooltip"
                                                            title="Quick View"><i class="ion-ios-eye-outline"></i></span> </a>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- product single item start -->
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>
                        <!-- featured product area end -->
                    </div>
                </div>
            </div>
        </div>
        <!-- product details wrapper end -->
    </main>
    <!-- main wrapper end -->

    <!-- Quick view modal start -->
    <div class="modal" id="quick_view">
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
                                        <img src="<c:url value="/public/assets/img/product/product-details-img1.jpg"/>" alt="product thumb" />
                                    </div>
                                    <div class="pro-large-img img-zoom">
                                        <img src="<c:url value="/public/assets/img/product/product-details-img2.jpg"/>" alt="product thumb"/>
                                    </div>
                                    <div class="pro-large-img img-zoom">
                                        <img src="<c:url value="/public/assets/img/product/product-details-img3.jpg"/>" alt="product thumb"/>
                                    </div>
                                    <div class="pro-large-img img-zoom">
                                        <img src="<c:url value="/public/assets/img/product/product-details-img4.jpg"/>" alt="product thumb"/>
                                    </div>
                                </div>
                                <div class="pro-nav slick-row-5">
                                    <div class="pro-nav-thumb"><img src="<c:url value="/public/assets/img/product/product-details-img1.jpg"/>" alt="" /></div>
                                    <div class="pro-nav-thumb"><img src="<c:url value="/public/assets/img/product/product-details-img2.jpg"/>" alt="" /></div>
                                    <div class="pro-nav-thumb"><img src="<c:url value="/public/assets/img/product/product-details-img3.jpg"/>" alt="" /></div>
                                    <div class="pro-nav-thumb"><img src="<c:url value="/public/assets/img/product/product-details-img4.jpg"/>" alt="" /></div>
                                </div>
                            </div>
                            <div class="col-lg-7">
                                <div class="product-details-des">
                                    <h3 class="pro-det-title">Primitive Mens Premium Shoes</h3>
                                    <div class="pro-review">
                                        <span><a href="#">1 Review(s)</a></span>
                                    </div>
                                    <div class="price-box">
                                        <span class="regular-price">$70.00</span>
                                        <span class="old-price"><del>$80.00</del></span>
                                    </div>
                                    <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.</p>
                                    <div class="quantity-cart-box d-flex align-items-center mb-20">
                                        <div class="quantity">
                                            <div class="pro-qty"><input type="text" value="1"></div>
                                        </div>
                                        <a href="cart.html" class="btn btn-default">Add To Cart</a>
                                    </div>
                                    <div class="availability mb-20">
                                        <h5 class="cat-title">Availability:</h5>
                                        <span>In Stock</span>
                                    </div>
                                    <div class="share-icon">
                                        <h5 class="cat-title">Share:</h5>
                                        <a href="#"><i class="fa fa-facebook"></i></a>
                                        <a href="#"><i class="fa fa-twitter"></i></a>
                                        <a href="#"><i class="fa fa-pinterest"></i></a>
                                        <a href="#"><i class="fa fa-google-plus"></i></a>
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
 


<jsp:include page="/WEB-INF/views/client/footer/footer.jsp"></jsp:include>
</body>
</html>