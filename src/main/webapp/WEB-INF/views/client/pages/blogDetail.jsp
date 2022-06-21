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
        <div class="breadcrumb-area bg-img" data-bg="<c:url value="/public/assets/img/banner/breadcrumb-banner.jpg"/>">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="breadcrumb-wrap text-center">
                            <nav aria-label="breadcrumb">
                                <h1 class="breadcrumb-title">Blog</h1>
                                <ul class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                                    <li class="breadcrumb-item"><a href="blog-left-sidebar.html">Blog</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Blog Details Left Sidebar</li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- breadcrumb area end -->

        <!-- blog main wrapper start -->
        <div class="blog-main-wrapper section-padding">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 order-2 order-lg-1">
                        <div class="blog-widget-wrapper">
                            <!-- widget item start -->
                            <div class="blog-widget">
                                <div class="blog-widget-img">
                                    <img src="<c:url value="/public/assets/img/blog/11.jpg"/>" alt="author thumb" />
                                </div>
                                <div class="blog-author-title text-center">
                                    <h5>Erik Jhonson</h5>
                                    <span>UI UX Designer</span>
                                    <div class="blog-widget-icon">
                                        <a href="#"><i class="fa fa-facebook"></i></a>
                                        <a href="#"><i class="fa fa-twitter"></i></a>
                                        <a href="#"><i class="fa fa-vimeo"></i></a>
                                        <a href="#"><i class="fa fa-pinterest-p"></i></a>
                                    </div>
                                </div>
                            </div>
                            <!-- widget item end -->

                            <!-- widget item start -->
                            <div class="blog-widget">
                                <h4 class="blog-widget-title">Search</h4>
                                <form class="widget-search-form">
                                    <input placeholder="Search keyword" type="text" class="search-field">
                                    <button type="submit" class="search-btn"><i class="fa fa-search"></i></button>
                                </form>
                            </div>
                            <!-- widget item end -->

                            <!-- widget item start -->
                            <div class="blog-widget">
                                <h4 class="blog-widget-title">Recent Posts</h4>
                                <ul class="recent-posts-inner">
                                    <li class="recent-posts">
                                        <div class="recent-posts-image">
                                            <a href="blog-details.html"><img src="<c:url value="/public/assets/img/blog/recent-01.jpg"/>" alt="post thumb"></a>
                                        </div>
                                        <div class="recent-posts-body">
                                            <span class="recent-posts-meta">February  13,  2018</span>
                                            <h6 class="recent-posts-title"><a href="blog-details.html">Diffrent title gose This is demo</a></h6>
                                        </div>
                                    </li>
                                    <li class="recent-posts">
                                        <div class="recent-posts-image">
                                            <a href="blog-details.html"><img src="<c:url value="/public/assets/img/blog/recent-02.jpg"/>" alt="post thumb"></a>
                                        </div>
                                        <div class="recent-posts-body">
                                            <span class="recent-posts-meta">February  13,  2018</span>
                                            <h6 class="recent-posts-title"><a href="blog-details.html">Diffrent title gose This is demo</a></h6>
                                        </div>
                                    </li>
                                    <li class="recent-posts">
                                        <div class="recent-posts-image">
                                            <a href="blog-details.html"><img src="<c:url value="/public/assets/img/blog/recent-03.jpg"/>" alt="post thumb"></a>
                                        </div>
                                        <div class="recent-posts-body">
                                            <span class="recent-posts-meta">February  13,  2018</span>
                                            <h6 class="recent-posts-title"><a href="blog-details.html">Diffrent title gose This is demo</a></h6>
                                        </div>
                                    </li>
                                    <li class="recent-posts">
                                        <div class="recent-posts-image">
                                            <a href="blog-details.html"><img src="<c:url value="/public/assets/img/blog/recent-04.jpg"/>" alt="post thumb"></a>
                                        </div>
                                        <div class="recent-posts-body">
                                            <span class="recent-posts-meta">February  13,  2018</span>
                                            <h6 class="recent-posts-title"><a href="blog-details.html">Diffrent title gose This is demo</a></h6>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <!-- widget item end -->

                            <!-- widget item start -->
                            <div class="blog-widget">
                                <h4 class="blog-widget-title">Categories</h4>
                                <ul class="blog-categories">
                                    <li><a href="blog-details.html">Shoes</a><span>(20)</span></li>
                                    <li><a href="blog-details.html">Fashion</a><span>(18)</span></li>
                                    <li><a href="blog-details.html">Wallet</a><span>(40)</span></li>
                                    <li><a href="blog-details.html">Life Style</a><span>(66)</span></li>
                                    <li><a href="blog-details.html">Electronics</a><span>(66)</span></li>
                                    <li><a href="blog-details.html">Jewellery & Cosmetics</a><span>(30)</span></li>
                                </ul>
                            </div>
                            <!-- widget item end -->

                            <!-- widget item start -->
                            <div class="blog-widget">
                                <h4 class="blog-widget-title">Tags</h4>
                                <div class="blog-tag">
                                    <a href="blog-details.html">Fashion</a>
                                    <a href="blog-details.html">Shoes</a>
                                    <a href="blog-details.html">Wallet</a>
                                    <a href="blog-details.html">Bags</a>
                                    <a href="blog-details.html">Jewelery</a>
                                </div>
                            </div>
                            <!-- widget item end -->
                        </div>
                    </div>
                    <div class="col-lg-9 order-1 order-lg-2">
                        <div class="row">
                            <div class="col-12">
                                <!-- blog single item start -->
                                <div class="blog-post-item">
                                    <div class="blog-thumb">
                                        <img src="assets/img/blog/blog-details-2.jpg" alt="blog thumb">
                                    </div>
                                    <div class="blog-content blog-details">
                                        <h5 class="blog-title">
                                            Celebrity Daughter Opens About Upto Having Her Eye
                                        </h5>
                                        <ul class="blog-meta">
                                            <li><span>By: </span>Admin,</li>
                                            <li><span>On: </span>14.07.2029</li>
                                        </ul>
                                        <p> Bigger ipsum dolor sit amet consectetur adipisicing elit. Voluptate perferendis
                                            consequuntur illo aliquid nihil ad neque, debitis praesentium libero ullam
                                            asperiores exercitationem deserunt inventore facilis, officiis,</p>
                                        <blockquote>
                                            <p>Quisque semper nunc vitae erat pellentesque, ac placerat arcu consectetur.
                                            venenatis elit ac ultrices convallis. Duis est nisi, tincidunt ac urna sed,
                                            cursus blandit lectus. In ullamcorper sit amet ligula ut eleifend. Proin
                                            dictum
                                            tempor ligula, ac feugiat metus. Sed finibus tortor eu scelerisque
                                            scelerisque.</p>
                                        </blockquote>
                                        <p>aliquam maiores asperiores recusandae commodi blanditiis ipsum tempora culpa
                                            possimus assumenda ab quidem a voluptatum quia natus? Ex neque, saepe
                                            reiciendis
                                            quasi velit perspiciatis error vel quas quibusdam autem nesciunt voluptas odit
                                            quis
                                            dignissimos eos aspernatur voluptatum est repellat. Pariatur praesentium,
                                            corrupti
                                            deserunt ducimus quo doloremque nostrum aspernatur saepe cupiditate sit autem
                                            exercitationem debitis, maiores vitae perferendis nemo? Voluptas illo, animi
                                            temporibus quod earum molestias eaque, iure rem amet autem dignissimos officia
                                            dolores numquam distinctio esse voluptates optio pariatur aspernatur omnis?
                                            Ipsam
                                            qui commodi velit natus reiciendis quod quibusdam nemo eveniet similique animi!
                                        </p>
                                    </div>
                                </div>
                                <!-- blog single item start -->

                                <!-- comment area start -->
                            <div class="comment-section section-padding">
                                <h5>03 Comment</h5>
                                <ul>
                                    <li>
                                        <div class="author-avatar">
                                            <img src="assets/img/blog/comment-icon.png" alt="">
                                        </div>
                                        <div class="comment-body">
                                            <span class="reply-btn"><a href="#">Reply</a></span>
                                            <h5 class="comment-author">Admin</h5>
                                            <div class="comment-post-date">
                                                15 Dec, 2019 at 9:30pm
                                            </div>
                                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Enim maiores
                                                adipisci optio ex, laboriosam facilis non pariatur itaque illo sunt?</p>
                                        </div>
                                    </li>
                                    <li class="comment-children">
                                        <div class="author-avatar">
                                            <img src="assets/img/blog/comment-icon.png" alt="">
                                        </div>
                                        <div class="comment-body">
                                            <span class="reply-btn"><a href="#">Reply</a></span>
                                            <h5 class="comment-author">Admin</h5>
                                            <div class="comment-post-date">
                                                20 Nov, 2019 at 9:30pm
                                            </div>
                                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Enim maiores
                                                adipisci optio ex, laboriosam facilis non pariatur itaque illo sunt?</p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="author-avatar">
                                            <img src="assets/img/blog/comment-icon.png" alt="">
                                        </div>
                                        <div class="comment-body">
                                            <span class="reply-btn"><a href="#">Reply</a></span>
                                            <h5 class="comment-author">Admin</h5>
                                            <div class="comment-post-date">
                                                25 Jan, 2019 at 9:30pm
                                            </div>
                                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Enim maiores
                                                adipisci optio ex, laboriosam facilis non pariatur itaque illo sunt?</p>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <!-- comment area end -->
    
                            <!-- start blog comment box -->
                            <div class="blog-comment-wrapper">
                                <h5>Leave A Reply</h5>
                                <p>Email address will not be published. Required fields are marked *</p>
                                <form action="#">
                                    <div class="comment-post-box">
                                        <div class="row">
                                            <div class="col-12">
                                                <label>Comment</label>
                                                <textarea name="commnet" placeholder="Write a comment"></textarea>
                                            </div>
                                            <div class="col-lg-4 col-md-4">
                                                <label>Name</label>
                                                <input type="text" class="coment-field" placeholder="Name">
                                            </div>
                                            <div class="col-lg-4 col-md-4">
                                                <label>Email</label>
                                                <input type="text" class="coment-field" placeholder="Email">
                                            </div>
                                            <div class="col-lg-4 col-md-4">
                                                <label>Website</label>
                                                <input type="text" class="coment-field" placeholder="Website">
                                            </div>
                                            <div class="col-12">
                                                <div class="coment-btn">
                                                    <input class="btn" type="submit" name="submit" value="POST COMMENT">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <!-- start blog comment box -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- blog main wrapper end -->
    </main>
    <!-- main wrapper end -->
 
<jsp:include page="/WEB-INF/views/client/footer/footer.jsp"></jsp:include>
</body>
</html>