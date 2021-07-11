<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html lang="en">
<%@ include file = "include/head.jsp" %>
<body class="hold-transition sidebar-mini">
<div class="wrapper">

  <!-- Navbar -->
  <%@ include file = "include/main_header.jsp" %>

  <!-- Main Sidebar Container -->
  <%@ include file = "include/left_menu.jsp" %>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
  	<section class="content-header">
  		<h1>
  			메인페이지
  		</h1>
<!--   		<ol class="breadcrumb"> -->
<%--   			<li><a href="<c:url value="/" />"><i class="fa fa-dashboard"></i> home</a></li> --%>
<!--   		</ol> -->
  	</section>
  	
  	<!-- main content -->
  	<section class="content container-fluid">
  		<p>메인 페이지입니다.</p>
  	</section>
  </div>

  <!-- Main Footer -->
  <%@ include file = "include/main_footer.jsp" %>  
</div>
<!-- ./wrapper -->

<!-- REQUIRED SCRIPTS -->
<%@ include file = "include/plugin_js.jsp" %>
</body>
</html>
