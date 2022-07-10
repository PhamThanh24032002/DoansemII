<%--
  Created by IntelliJ IDEA.
  User: bt289
  Date: 3/30/2022
  Time: 4:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:url value="/admin/" var="rootpath" />
<!--sidebar wrapper -->
<div class="sidebar-wrapper" data-simplebar="true">
	<div class="sidebar-header">
		<div>
			<img src="<c:url value="/public/assetAdmin/images/logo-icon.png"/>"
				class="logo-icon" alt="logo icon">
		</div>
		<div>
			<h4 class="logo-text">Admin</h4>
		</div>
		<div class="toggle-icon ms-auto">
			<i class='bx bx-arrow-to-left'></i>
		</div>
	</div>
	<!--navigation-->
	<ul class="metismenu" id="menu">
		<li><a href="${rootpath}">
				<div class="parent-icon">
					<i class='bx bx-home-circle'></i>
				</div>
				<div class="menu-title">Dashboard</div>
		</a></li>
		<li><a href="${rootpath}category">
				<div class="parent-icon">
					<i class="bx bx-category"></i>
				</div>
				<div class="menu-title">Category</div>
		</a></li>
		<li><a href="${rootpath}product">
				<div class="parent-icon">
					<i class='bx bx-cookie'></i>
				</div>
				<div class="menu-title">Product</div>
		</a></li>
		<li><a href="${rootpath}colors">
				<div class="parent-icon">
					<i class='bx bxs-book-alt'></i>
				</div>
				<div class="menu-title">Colors</div>
		</a></li>
		<li><a href="${rootpath}sizes">
				<div class="parent-icon">
					<i class='bx bxs-book-alt'></i>
				</div>
				<div class="menu-title">Sizes</div>
		</a></li>
		<li><a href="${rootpath}Blog">
				<div class="parent-icon">
					<i class='bx bx-user-voice'></i>
				</div>
				<div class="menu-title">Blog</div>
		</a></li>
		<li><a href="${rootpath}payments">
				<div class="parent-icon">
					<i class='bx bx-user-voice'></i>
				</div>
				<div class="menu-title">Payment</div>
		</a></li>
		<li><a href="#">
				<div class="parent-icon">
					<i class='bx bxs-face'></i>
				</div>
				<div class="menu-title">Slides</div>
		</a></li>
		<li><a href="#">
				<div class="parent-icon">
					<i class='bx bxs-face'></i>
				</div>
				<div class="menu-title">Banner</div>
		</a></li>
		<li><a href="#">
				<div class="parent-icon">
					<i class='bx bxs-face'></i>
				</div>
				<div class="menu-title">Feedback</div>
		</a></li>
		<li><a href="#">
				<div class="parent-icon">
					<i class='bx bxs-face'></i>
				</div>
				<div class="menu-title">Link Information</div>
		</a></li>
		<li><a href="#">
				<div class="parent-icon">
					<i class='bx bxs-face'></i>
				</div>
				<div class="menu-title">Order Manager</div>
		</a></li>
		<li><a href="#">
				<div class="parent-icon">
					<i class='bx bxs-group'></i>
				</div>
				<div class="menu-title">Account Manager</div>
		</a></li>
	</ul>
	<!--end navigation-->
</div>
<!--end sidebar wrapper -->
