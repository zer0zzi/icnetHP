<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/include/include-header.jspf" %>

<style>
.back{ 
	background-color:#F8F9FA;
}
@font-face {
    font-family: 'WONDotum';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_two@1.0/WONDotum.woff') format('woff');
    font-weight: normal;
    font-style: normal;
</style>

 <!-- FONT -->
  <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic+Coding&display=swap&subset=korean" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:300,400,500,700&display=swap&subset=korean" rel="stylesheet">
  <!-- Bootstrap core CSS -->
  <link href="/icnet/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link href="/icnet/resources/css/padding.css" rel="stylesheet" type="text/css">
  <!-- Custom fonts for this template -->
  <link href="/icnet/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="/icnet/resources/css/grayscale.min.css" rel="stylesheet">
  <link href="/icnet/resources/css/ui.css" rel="stylesheet">
  
</head>
<body>
<div class="back">
  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
    <div class="container">
      <a class="navbar-brand js-scroll-trigger" href="#page-top"><img class="img-fluid"  src="../resources/img/logo1.png" alt="icnet^_^" href="#page-top"></a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        Menu
        <i class="fas fa-bars"></i>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#about"><span style="color:black">MYPAGE</span></a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#activity"><span style="color:black">SEMINAR</span></a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#project"><span style="color:black">REPORT</span></a>
          </li>	 
          </ul>
      </div>
    </div>
  </nav> 

	<form id="frm">
	<div id="r" class="text-center " style="font-family:WONDotum ;">
		<table align="center" class="board_view">
			<colgroup>
				<col width="15%">
				<col width="*"/>
			</colgroup>
			<div class="mb-5">
			<h2>게시글 작성</h2>
			</div>
			<tbody>
				<tr>
					<th scope="row" class="text-center">제목</th>
					<td><input type="text" id="TITLE" name="TITLE" class="wdp_90"></input></td>
				</tr>
				<tr>
					<td colspan="2" class="view_text">
					<div id="s" class="text-left mb-1">
							<select name="seminar">
							<option value="전체 게시물" selected="selected">전체 게시물</option>
	 						<option value="스쿨웨어">스쿨웨어</option>
 	 						<option value="블록체인">블록체인</option>
 	 						<option value="Na-Lab">Na-Lab</option>
							</select>
					</div>
						<textarea rows="20" cols="100" title="내용" id="CONTENTS" name="CONTENTS"></textarea>
					<input type="file" name="file">
					</td>
				</tr>
			</tbody>
		</table>
		<br>
		<a href="<c:url value='/sample/insertBoard.do' />" class="button" id="write" ><span style="color:black">작성하기</span></a>
		<a href="<c:url value='/sample/openBoardList.do' />" class="button" id="list" ><span style="color:black">목록으로</span></a>
	</div>
	</form>
	
	<%@ include file="/WEB-INF/include/include-body.jspf" %>
	<script type="text/javascript">
	$(document).ready(function(){
		$("#list").on("click", function(e){
			e.preventDefault();
			fn_openBoardList();
		});		
	});
	
	function fn_openBoardList(){
		var comSubmit = new ComSubmit();
		comSubmit.setUrl("<c:url value='/sample/openBoardList.do' />");
		comSubmit.submit();
	}
	
	$(document).ready(function(){
		$("#list").on("click", function(e){ //목록으로 버튼
			e.preventDefault();
			fn_openBoardList();
		});
		
		$("#write").on("click", function(e){ //작성하기 버튼
			e.preventDefault();
			fn_insertBoard();
		});
		$("#addFile").on("click", function(e){ //파일 추가 버튼
			e.preventDefault();
			fn_addFile();
		});

		$("a[name='delete']").on("click", function(e){ //삭제 버튼
			e.preventDefault();
			fn_deleteFile($(this));
		});
	});

	function fn_openBoardList(){
		var comSubmit = new ComSubmit();
		comSubmit.setUrl("<c:url value='/sample/openBoardList.do' />");
		comSubmit.submit();
	}

	function fn_insertBoard(){
		var comSubmit = new ComSubmit("frm");
		comSubmit.setUrl("<c:url value='/sample/insertBoard.do' />");
		comSubmit.submit();
	}
	
	function fn_addFile(){
		var str = "<p><input type='file' name='file_"+(gfv_count++)+"'><a href='#this' class='btn' name='delete'>삭제</a></p>";
		$("#fileDiv").append(str);
		$("a[name='delete']").on("click", function(e){ //삭제 버튼
			e.preventDefault();
			fn_deleteFile($(this));
		});
	}
	function fn_deleteFile(obj){
		obj.parent().remove();
	}
</script>
 <!-- Bootstrap core JavaScript -->
  <script src="/icnet/resources/vendor/jquery/jquery.min.js"></script>
  <script src="/icnet/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Plugin JavaScript -->
  <script src="/icnet/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for this template -->
  <script src="/icnet/resources/js/grayscale.min.js"></script>
</div>
</body>
</html>