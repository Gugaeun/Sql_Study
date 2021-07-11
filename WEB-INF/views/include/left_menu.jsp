<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<aside class="main-sidebar sidebar-dark-primary elevation-4">
  <a href="<c:url value='/' />" class="brand-link">
     <center><span class="brand-text font-weight-light" style="">메가IT 웹개발</span></center>
  </a>
    
  <!-- Sidebar -->
  <div class="sidebar">
    <!-- Sidebar user panel (optional) -->
    <div class="user-panel mt-3 pb-3 mb-3 d-flex">
<%-- 		<c:if test="${emtpy login}"> --%>
    		<div class="pull-left info">
                <p style="color:#ffffff">Guest</p>
                <%-- Status --%>
                <a href="#"><i class="fa fa-circle text-danger"></i> OFFLINE</a>
            </div>
<%--     	</c:if> --%>
<%--     	<c:if test="${not emtpy login}"> --%>
<!--     		<div class="pull-left info"> -->
<%--                 <p>${login.userName}</p> --%>
<%--                 Status --%>
<!--                 <a href="#"><i class="fa fa-circle text-success"></i> ONLINE</a> -->
<!--             </div> -->
<%--     	</c:if> --%>
    </div>

	<!-- search form (Optional) -->
	<form action="#" method="get" class="sidebar-form">
		<div class="input-group">
			<input type="text" name="q" class="form-control" placeholder="Search...">
			<span class="input-group-btn">
				<button type="submit" name="search" id="search-btn" class="btn btn-flat">
					<i class="fa fa-search"></i>
				</button>
			</span>
		</div>
	</form>
	<!-- /.search form -->

    <!-- Sidebar Menu -->
    <nav class="mt-2">
      <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
        <!-- Add icons to the links using the .nav-icon class
             with font-awesome or any other icon font library -->
        <li class="nav-item has-treeview">  <!-- menu-open 시에 메뉴가 펼쳐짐  -->
          <a href="#" class="nav-link active">
            <i class="nav-icon fas fa-tachometer-alt"></i>
            <p>
              게시판
              <i class="right fas fa-angle-left"></i>
            </p>
          </a>
          <ul class="nav nav-treeview">
            <li class="nav-item">
              <a href="<c:url value="/list" />" class="nav-link active">
                <i class="far fa-circle nav-icon"></i>
                <p>게시판(기본)</p>
              </a>
            </li>
            <li class="nav-item">
              <a href="#" class="nav-link">
                <i class="far fa-circle nav-icon"></i>
                <p>게시판(페이징)</p>
              </a>
            </li>
            <li class="nav-item">
              <a href="#" class="nav-link">
                <i class="far fa-circle nav-icon"></i>
                <p>게시판(페이징+검색)</p>
              </a>
            </li>
          </ul>
        </li>
      </ul>
    </nav>
    <!-- /.sidebar-menu -->
  </div>
  <!-- /.sidebar -->
</aside>