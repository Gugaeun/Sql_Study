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
  			<small>입력페이지</small>
  		</h1>
  		<ol class="breadcrumb">
  			<li><i class="fa fa-edit"></i> article</li>
  			<li class="active"><a href="<c:url value="/article/write" />" >&nbsp;write</a></li>
  		</ol>
  	</section>
  	<!-- main content -->
  	<section class="content container-fluid">
         <div class="col-lg-12">
             <form role="form" id="writeForm" method="post" action="${path}/article/write">
                 <div class="box box-primary">
                     <div class="box-header with-border">
                         <h3 class="box-title">게시글 작성</h3>
                     </div>
                     <div class="box-body">
                         <div class="form-group">
                             <label for="title">제목</label>
                             <input class="form-control" id="title" name="title" placeholder="제목을 입력해주세요">
                         </div>
                         <div class="form-group">
                             <label for="content">내용</label>
                             <textarea class="form-control" id="content" name="content" rows="10"
                                       placeholder="내용을 입력해주세요" style="resize: none;"></textarea>
                         </div>
                         <div class="form-group">
                             <label for="writer">작성자</label>
                             <input class="form-control" id="writer" name="writer">
                         </div>
                     </div>
                     <div class="box-footer">
                         <button type="button" class="btn btn-primary listBtn">
                         	<i class="fa fa-list"></i> 목록
                     	 </button>
                         <div class="pull-right" style="margin-top:10px;">
                             <button type="reset" class="btn btn-warning"><i class="fa fa-reply"></i> 초기화</button>
                             <button type="button" class="btn btn-success"><i class="fa fa-save"></i> 저장</button>
                         </div>
                     </div>
                 </div>
             </form>
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

	function test1() {
		
	}
	
	//목록 버튼 클릭 이벤트 처리
	$(".listBtn").on("click", function () {
	    self.location = "/spring_study_210710/list";
	});

</script>
</body>
</html>