<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<%@ include file = "../../include/head.jsp" %>
<!-- <link rel="stylesheet" href="./../plugins/fontawesome-free/css/all.min.css"> -->
<!-- <link rel="stylesheet" href="./../dist/css/adminlte.min.css"> -->

<body class="hold-transition sidebar-mini">
<div class="wrapper">

  <!-- Navbar -->
  <%@ include file = "../../include/main_header.jsp" %>

  <!-- Main Sidebar Container -->
  <%@ include file = "../../include/left_menu.jsp" %>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
  	<section class="content-header">
  		<h1>
  			게시판
  			<small>목록페이지</small>
  		</h1>
  		<ol class="breadcrumb">
  			<li><i class="fa fa-edit"></i> article</li>
  			<li class="active"><a href="<c:url value="/article/list" />" >&nbsp;list</a></li>
  		</ol>
  	</section>
  	<!-- main content -->
  	<section class="content container-fluid">
 		<div class="col-lg-12">
             <div class="box box-primary">
                 <div class="box-header with-border">
                     <h3 class="box-title">게시글 목록</h3>
                 </div>
                 <div class="box-body">
                     <table class="table table-bordered">
                         <tbody>
                         <tr>
                             <th style="width: 30px">#</th>
                             <th>제목</th>
                             <th style="width: 100px">작성자</th>
                             <th style="width: 150px">작성시간</th>
                             <th style="width: 60px">조회</th>
                         </tr>
                         <c:forEach items="${articles}" var="article">
                         <tr>
                             <td>${article.articleNo}</td>
                             <td><a href="${path}/article/read?articleNo=${article.articleNo}">${article.title}</a></td>
                             <td>${article.writer}</td>
                             <td>
                             	<fmt:formatDate value="${article.regDate}" pattern="yyyy-MM-dd a HH:mm"/>
                           	 </td>
                             <td><span class="badge bg-red">${article.viewCnt}</span></td>
                         </tr>
                         </c:forEach>
                         </tbody>
                     </table>
                 </div>
                 <div class="box-footer">
                     <div class="pull-right">
                         <button type="button" class="btn btn-success btn-flat" id="writeBtn">
                             <i class="fa fa-pencil"></i> 글쓰기
                         </button>
                     </div>
                 </div>
             </div>
         </div>
  	</section>
  </div>

  <!-- Main Footer -->
  <%@ include file = "../../include/main_footer.jsp" %>  
</div>
<!-- ./wrapper -->

<!-- REQUIRED SCRIPTS -->
<%@ include file = "../../include/plugin_js.jsp" %>
<script>

    $(document).ready(function () {

        var result = "${msg}";
        if (result == "regSuccess") {
            alert("게시글 등록이 완료되었습니다.");
        } else if (result == "modSuccess") {
            alert("게시글 수정이 완료되었습니다.");
        } else if (result == "delSuccess") {
            alert("게시글 삭제가 완료되었습니다.");
        }

        $("#writeBtn").on("click", function (event) {
            self.location = "/spring_study_210710/write";
        });
    });

</script>
</body>
</html>