<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
<%@ include file="/WEB-INF/include/include-header.jspf" %>
<style>
.signUp_agree {text-align:center;}
.signUp_agree_textarea{text-align:center;}
.signUp_agree_textarea textarea{resize:none;}
.board_list {
	width: 500px; 
	margin: 0 auto; 
	text-align: center; 
	padding-left: 90px;}
.board_list tfoot {text-align: center;}
.button {
	border-radius:10px;
    width:150px;
    background-color: #323231;
    border: none;
    color:#fff;
    padding: 10px 0;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin-top: 10px;
    margin-left:46%;
    cursor: pointer;
}
.bbtt {
	border-radius: 10px;
    width: 90px;
    background-color: #323231;
    color: #fff;
    padding: 7px 0;
    text-align: center;
    display: inline-block;
    font-size: 13px;
    margin-top: 0px;
    margin-left: 5%;
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
<p style="font-family:yg-jalnan;font-size:29pt;margin-top: 30px;margin-bottom: 30px;"><i class="far fa-lightbulb" ></i> 회원 정보 등록</p>
</div>
<div id="r">
<form id="frm">
	<table class="board_list">
		<tbody>
			<tr>
				<td><input type="name" id="user_name" name="NAME" class="wdp_90"  placeholder=" 이름 " style="width:450px; height:30px; border-radius: 5px;"></td>
			</tr>
			<tr>
				<td><input type="schoolnumber" id="user_num" name="NUMBER" class="wdp_90"  placeholder=" 학번 " style="width:450px; height:30px; border-radius: 5px;"></td>
			</tr>
			<tr>
				<td><input type="major" id="user_maj" name="MAJOR" class="wdp_90"  placeholder=" 학과 " style="width:450px; height:30px; border-radius: 5px;"></td>
			</tr>
			<tr>
				<td><input type="text" id="user_id" name="ID" class="wdp_90" placeholder=" 아이디" style="width:450px; height:30px; border-radius: 5px;"></td>
				<td><a href="#" id="user_id_checkBtn" class="bbtt" style="font-family:yg-jalnan"><span style="color:#ffffff">중복확인</span></a></td>
			</tr>
			<tr>
				<td><input type="password" id="user_pwd" name="PASSWORD" class="wdp_90"  placeholder=" 비밀번호 " style="width:450px; height:30px; border-radius: 5px;"></td>
			</tr>
		</tbody>
	</table>
	<br>
	<div class="button">
		<a href="#this" class="btn" id="signUpBtn" style="font-family:yg-jalnan"><span style="color:#ffffff">회원등록</span></a>
	</div>
	<div class="button">
	<a href="<c:url value='/home/mainPage.do' />" class="btn" id="homeBtn" style="font-family:yg-jalnan"><span style="color:#ffffff">취소</span></a>
	</div>
</form>
</div>
<%@ include file="/WEB-INF/include/include-body.jspf" %>
<script>
//	$(document).ready(function(){
//		$("#homeBtn").on("click", function(e){
//		e.preventDefault();
//		fn_mainPage();
//		});		
//	});

//	function fn_mainPage(){
//		var comSubmit = new ComSubmit();
//		comSubmit.setUrl("<c:url value='/home/mainPage.do' />");
//		comSubmit.submit();
//	}
	$(document).ready(function() {
		$("#user_id_checkBtn").unbind("click").click(function(e) {
			e.preventDefault();
			fn_userIDCheck();
		});
		});
	function fn_userIDCheck() {
		var userId = $("#user_id").val();
		var userData = {"ID":userId}
		
		if(userId.length < 1)
			{
			alert("아이디를 입력해주시기 바랍니다.");
			}
		else
		{
			$.ajax({
				type : "POST",
				url: "/user/checkUserID.do",
				data : userData,
				dataType : "json",
				error : function(error) {
					alert("서버가 응답하지 않습니다. \n다시 시도해주시기 바랍니다.");
				},
				success : function(result) {
					if (result == 0)
						{
						$("#user_id").attr("disabled", true);
						alert("사용이 가능한 아이디입니다.");
						}
					else if(result == 1)
						{
						alert("이미 존재하는 아이디입니다. \n다른 아이디를 사용해주세요.");
						}
					else
						{
						alert("에러가 발생하였습니다.");
						}
				}
			});
		}
	}
</script>
</body>
</html>