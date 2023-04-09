<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/include/include-header.jspf" %>
<style>
.board_list {width: 500px; margin: 0 auto; text-align: center; padding: 15px 0;}
.board_list tfoot {text-align: center;}
.button {
	border-radius:10px;
    width:455px;
    background-color: #323231;
    border: none;
    color:#fff;
    padding: 15px 0;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 15px;
    margin-top: 10px;
    margin-left:38%;
    cursor: pointer;
}
a { text-decoration:none } 
.s{
	padding-top:10px;
	padding-bottom:10px;
	 text-align: center;
}
.t{
	padding-top:150px;
	 text-align: center;
}
.u
{
	padding-top:100px;
	 text-align: center;
}
@font-face {
    font-family: 'WONDotum';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_two@1.0/WONDotum.woff') format('woff');
    font-weight: normal;
    font-style: normal;
	}
@font-face {
    font-family: 'yg-jalnan';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_four@1.2/JalnanOTF00.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
@font-face {
    font-family: 'ON-IGothic';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_eleven@1.0/ON-IGothic.woff') format('woff');
    font-weight: normal;
    font-style: normal;
	}
</style>

  <!-- Custom fonts for this template -->
  <link href="/icnet/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
</head>
<body>
<div class="t">
<p style="font-family:yg-jalnan; font-size:30pt"><i class="far fa-lightbulb"></i>&nbspICNet</p>
</div>
<div id="r">
<form id="frm">
	<table class="board_list">
		<tbody>
			<tr>
				<td><input type="text" id="user_id" name="ID" class="wdp_90" placeholder="아이디" style="width:450px; height:30px;"></td>
			</tr>
			<tr>
				<td><input type="password" id="user_pwd" name="PASSWORD" class="wdp_90"  placeholder="비밀번호 " style="width:450px; height:30px;"></td>
			</tr>
		</tbody>
	</table>
	<div class="button">
		<a href="#this" id="login_btn" class="btn" style="font-family:yg-jalnan"><span style="color:#ffffff">로그인</span></a>
	</div>
</form>
</div>
<div class="u">
  <footer class="board_list">
    <div class="container">
     <p style="font-family:ON-IGothic; font-size:9pt"><span style="color:#A4A4A4">Copyright &copy; <b>ICnet</b> All rights reserved.</span></p>
    </div>
  </footer>
  </div>
<%@ include file="/WEB-INF/include/include-header.jspf" %>
<script>
$(document).ready(function() {
	$("#login_btn").unbind("click").click(function(e) {
		e.preventDefault();
		fn_login();
	});
});

function fn_login() {
	if($("#user_id").val().length < 1)
	{
		alert("아이디를 입력해주세요.");
	}
	else if($("#user_pwd").val().length < 1)
	{
		alert("비밀번호를 입력해주세요.");
	}
	else
	{
		var comSubmit = new ComSubmit("frm");
		comSubmit.setUrl("<c:url value='/user/loginTry.do' />");
		comSubmit.submit();
	}
}
</script>
</body>
</html>