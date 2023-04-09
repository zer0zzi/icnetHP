<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/include/include-header.jspf" %>

<title>ICNet</title>
<style>
    .bg{
        position: relative;
        top:0px;
        background-image: url(https://blog.naver.com/rlaxotmf/20208018462);                                                               
        height: 100vh;
        width: 100%;
        background-size: cover;
    }
    table {

    margin-left: auto;
    margin-right: auto;
 	 }

    body { 
		background-color:#f7f8f9;
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

  <div class="bg">
  <div id="p" class="text-center mt-5 " style="font-family:WONDotum ;">
  <div class="mb-5">
	<h2>세미나 자료 제출</h2>
	</div>
	<div id="o" class="text-left mb-1">
	<select name="seminar">
	 <option value="전체 게시물" selected="selected">전체 게시물</option>
	 <option value="스쿨웨어">스쿨웨어</option>
 	 <option value="블록체인">블록체인</option>
 	 <option value="Na-Lab">Na-Lab</option>
	</select>
	</div>
	<table class="board_list">
		<colgroup>
			<col width="20%">
			<col width="*">
			<col width="15%">
			<col width="20%">
		</colgroup>
		
		<thead>
			<tr> 
				<th scope="col" style="font-family:WONDotum ;">글번호</th>
				<th scope="col" style="font-family:WONDotum ;">제목</th>
				<th scope="col" style="font-family:WONDotum ;">조회수</th>
				<th scope="col" style="font-family:WONDotum ;">작성일</th>
			</tr>
		</thead>
		<tbody>
			<c:choose>
				<c:when test="${fn:length(list) > 0}">
					<c:forEach items="${list }" var="row">
						<tr>
							<td>${row.IDX }</td>
							<td class="title">
								<a href="#this" name="title">${row.TITLE }</a>
								<input type="hidden" id="IDX" value="${row.IDX }">
							</td>
							<td>${row.HIT_CNT }</td>
							<td>${row.CREA_DTM }</td>
						</tr>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<tr> 
						<td colspan="4" style="font-family:WONDotum ;">조회된 게시물이 없습니다.</td>
					</tr>
				</c:otherwise>
			</c:choose>
		</tbody>
	</table>
	<br/>
	<div id="q" class=" text-right">
	<a href="<c:url value='/sample/openBoardWrite.do' />" class="button" id="write" ><span style="color:black">글쓰기</span></a>
	</div>
	<%@ include file="/WEB-INF/include/include-body.jspf" %>
	<script type="text/javascript">
		$(document).ready(function(){
			$("write").on("click", function(e){ //글쓰기 버튼
				e.preventDefault();
				fn_openBoardWrite();
			});	
			
			$("a[name='title']").on("click", function(e){ //제목 
				e.preventDefault();
				fn_openBoardDetail($(this));
			});
		});
		
		
		function fn_openBoardWrite(){
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/sample/openBoardWrite.do' />");
			comSubmit.submit();
		}
		
		function fn_openBoardDetail(obj){
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/sample/openBoardDetail.do' />");
			comSubmit.addParam("IDX", obj.parent().find("#IDX").val());
			comSubmit.submit();
		}
	</script>	
	</div>
	</div>
	 <!-- Bootstrap core JavaScript -->
  <script src="/icnet/resources/vendor/jquery/jquery.min.js"></script>
  <script src="/icnet/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Plugin JavaScript -->
  <script src="/icnet/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for this template -->
  <script src="/icnet/resources/js/grayscale.min.js"></script>
	
</body>
</html>