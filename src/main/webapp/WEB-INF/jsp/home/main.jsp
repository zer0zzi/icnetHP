<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>ICNet</title>
  
  <style>
  .button {
	border-radius:10px;
    width:150px;
    background-color: #688A08;
    border: none;
    color:#fff;
    padding: 20px 0;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 15px;
    margin-top: 10px;
    margin-left:5%;
    cursor: pointer;
}
	.intro_count {
    padding: 120px 0;
    background: linear-gradient(rgba(0,0,0,.7), rgba(0,0,0,.7)), url(../resources/img/seminar.jpg) no-repeat center / cover;
    background-position-y: 60%;
    background-attachment: fixed;
}
    .bg-1{
        position: relative;
        top:0px;
        background-image: url(https://c.pxhere.com/photos/ee/f0/macbook_macbook_pro_apple_device_apple_macbook_new_macbook_pro_macbook_pro_2016_back_and_white-1385826.jpg!d);                                                               
        height: 100vh;
        width: 100%;
        background-size: cover;
    }
    .bg-cover{
       position: relative;
       top:0px;
       height: 100vh;
       width: 100%;
       background-color: rgba(0, 0, 0, 0.3); 
       z-index: 1;
    }
    .bg-2{
        position: relative;
        top:0px;
        background-image: url(../resources/img/image2.png);                                                               
        height: 100%;
        width: 100%;
        background-size: cover;
    }
    .bg-3{
        position: relative;
        top:0px;
        background-image: url(../resources/img/image3.png);                                                               
        height: 100vh;
        width: 100%;
        background-size: cover;
    }
    .my-hr1{
    border:0;
    height:2px;
    }
    .my-hr2{
    border:0;
    height:1px;
    }
    @font-face {
    font-family: 'ON-IGothic';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_eleven@1.0/ON-IGothic.woff') format('woff');
    font-weight: normal;
    font-style: normal;
	}

	@font-face {
    font-family: 'Arita-dotum-Medium';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/Arita-dotum-Medium.woff') format('woff');
    font-weight: normal;
    font-style: normal;
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

</head>

<body id="page-top">

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
            <a class="nav-link js-scroll-trigger" href="#about">ABOUT</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#activity">ACTIVITY</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#project">PROJECT</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#signup">CONTACT</a>
          </li>
        </ul>
      </div>
      <div id="n">
      <a href="../user/openLogin.do" id="login"><img src="../resources/img/button.png"/></a>
      <!-- <img class="img-fluid" src="../resources/img/button.png" href="<c:url value='/user/openLogin.do' />" alt=""> -->
    </div>
    </div>
  </nav>

  <!-- Header -->
  <section id="main">
  <header class="bg-1">
  	<div class="bg-cover">
    <div class="container d-flex h-100 align-items-center">
      <div class="mx-auto text-center">
        <h1 class="mx-auto my-0 text-godoMaum" style="font-family:Bodoni MT; font-size:50pt">ICNet</h1>
        <h5 class="mx-auto mt-0 mb-5" style="font-family:Bodoni MT; font-size:15pt">since 2009</h2>
        <!-- <a href="#about" classs="btn btn-primary js-scroll-trigger"><FONT FACE="Bodoni MT">Get Started</FONT></a> -->
      </div>
    </div>
    </div>
  </header>
</section>

  <!-- About Section -->
  <section id="about">
  <div class="bg-3">
    <div class="container">
      <div class="row">
        <div id="l" class="col-lg-10 mx-auto text-center">
        <h1 class="ml-4 mb-3 text-left" style="font-family:HYHeadLine;"><span style="color:#CCCC00">A</span><a style="font-family:HYHeadLine; font-color:#323231">BOUT</a></h1>
          <!-- <p class="text-white-50 mt-5 mb-4" style="font-family:HY견고딕; font-size:40px"><span style="color:#">I</span>CNET</p>-->
           <div id="a" class="row justify-content-center no-gutters">
        <div class="col-lg-6">
          <img class="img-fluid" src="../resources/img/sample.jpg" alt="">
        </div>
        <div class="col-lg-6 order-lg-first">
          <div class=" text-center h-100 project">
            <div class="d-flex h-100">
              <div class="project-text w-100 my-auto text-center text-lg-left">
              <div id="f">
                <a style="font-family:청소년서체 ; font-color:#323231; font-size:30pt; font-weight: lighter">ICNet은<br>어떤&nbsp;</a><a style="font-family:청소년서체 ; font-color:#323231; font-size:30pt; font-weight: bold">동아리</a><a style="font-family:청소년서체 ; font-color:#323231; font-size:30pt; font-weight: lighter">인가요?</a><br>
               </div>
               <div id="g">
                <p class="mb-0 "style="font-family:WONDotum ; font-color:#323231; font-size:14pt">매주 진행되는 세미나를 통해 실무와 실습을 위주로 웹/App 개발 능력을 키워나가는 나사렛대학교 IT융합학부의 대표적인 창업 동아리입니다.</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="container">
      <div id="d" class="row">
        <div class="col-lg-3 col-md-6 text-center">
          <div class="mt-5">
            <i class="fas fa-4x fa-chalkboard-teacher text-primary mb-4"></i>
            <h3 class="h4 mb-2" style="font-family:청소년서체; font-size:20pt"><span style="color:#323231">주기적인세미나</span></h3>
            <hr color="#CCCC00" class="my-hr1">
            <p class="text-muted mb-0" style="font-family:WONDotum;  font-size:13pt" ><span style="color:#323231">일주일에 한번씩 주기적인 세미나를 통해 실력 향상을 도모합니다.</span></p>
          </div>
        </div>
        <div class="col-lg-3 col-md-6 text-center">
          <div class="mt-5">
            <i class="fas fa-4x fa-file-alt text-primary mb-4"></i>
            <h3 class="h4 mb-2" style="font-family:청소년서체; font-size:20pt"><span style="color:#323231">주간연구보고서</span></h3>
            <hr color="#CCCC00" class="my-hr1">
            <p class="text-muted mb-0" style="font-family:WONDotum; font-size:13pt"><span style="color:#323231">일주일 동안 자신이 자율적으로 학습하게 될 목표치를 설정합니다.</span></p>
          </div>
        </div>
        <div class="col-lg-3 col-md-6 text-center">
          <div class="mt-5">
            <i class="fas fa-4x fa-laptop-code text-primary mb-4"></i>
            <h3 class="h4 mb-2" style="font-family:청소년서체; font-size:20pt"><span style="color:#323231">코딩학습</span></h3>
           <hr color="#CCCC00" class="my-hr1">
            <p class="text-muted mb-0" style="font-family:WONDotum; font-size:13pt"><span style="color:#323231">선/후배간의 교류를 통해 이해하기 힘든 부분을 더욱 쉽게 이해할 수 있도록 합니다.</span></p>
          </div>
        </div>
        <div class="col-lg-3 col-md-6 text-center">
          <div class="mt-5">
            <i class="fas fa-4x fa-calendar text-primary mb-4"></i>
            <h3 class="h4 mb-2" style="font-family:청소년서체; font-size:20pt"><span style="color:#323231">학교행사참여</span></h3>
            <hr color="#CCCC00" class="my-hr1">
            <p class="text-muted mb-0" style="font-family:WONDotum; font-size:13pt"><span style="color:#323231">학술제, 창업 동아리등의 다양한 학교 행사에 꾸준히 참여합니다.</span></p>
          </div>
        </div>
      </div>
    </div>
      </div>
      </div>
      <div  id="img1">
   
      <!--  <img src="" class="img-fluid" alt=""> -->
      </div>
    </div>
    </div>
  </section>
  
  <!-- Activity Section -->
  <section id="activity"  >
  <div class="bg-2">
  <div class="container">
      <div class="row">
        <div id="e" class="col-lg-10 mx-auto">
  <h1 class="mb-5 ml-4 text-left" style="font-family:HYHeadLine;"><span style="color:#CCCC00">A</span><a style="font-family:HYHeadLine; font-color:#323231">CTIVITY</a></h1>
  </div>
  </div>
  </div>
  <div id="e" class="container">
  <p class="text-white mb-5 text-center" style="font-family:WONDotum; font-size:19px"><span style="color:#323231"><b>ICNet</b>은 '박희동' 교수님의 지도하에 프로젝트 진행을 위해 소수의 학생들로 설립된 동아리 입니다.<br>일주일에 한번씩 교수님과의 세미나 및 미팅을 통해 각종 프로젝트를 진행, 관리하는 활동을 합니다.</span></p>
 </div>
  <div id="e" class="container">
  <img class="img-fluid"  src="../resources/img/image1.png" alt="">
  <a onclick="this.nextSibling.style.display=(this.nextSibling.style.display=='none')?'block':'none';" href="javascript:void(0)"> 
	<p class="text-center" style="font-size:20pt"><br><br>▼</p>
	</a><div style="DISPLAY: none">
	<div id ="h" class="container">
	<p class="text-left">
	<p class style="font-family:WONDotum; font-size:15pt;"><span style="color:#CCCC00"><br><b><2010></b></span><br></p>
	<p  style="font-family:WONDotum; font-size:13pt;">
	- 장애인 건강및 모니터링 시스템_(정보통신산업 진흥원)<br>
	- 센서 및 임베디드 시스템 기반의 홈 오토메이션_(정보통신산업 진흥원)<br>
	- 다중 센서 네트워크 성능 분석 및 센서 노드 제어_(정보통신산업 진흥원)<br>
	</p>
	<p class style="font-family:WONDotum; font-size:15pt;"><span style="color:#CCCC00"><br><b><2011></b></span><br></p>
	<p  style="font-family:WONDotum; font-size:13pt;">
	- MBAN 기반의 헬스케어 서비스를 위한 고 신뢰성MAC/라우팅 기술 및 서비스 아키텍처 연구(1차)_(한국연구재단)<br>
	- 음성인식 기반의 홈네트워크 제어_(정보통신산업 진흥원)<br>
	- 스마트센서를 이용한 전력 소비 제어_(정보통신산업 진흥원)<br>
	- 바이오센서 및 안드로이드 기반의 u-Health 캠퍼스_(정보통신산업 진흥원)<br>
	</p>
	<p class style="font-family:WONDotum; font-size:15pt;"><span style="color:#CCCC00"><br><b><2012></b></span><br></p>
	<p  style="font-family:WONDotum; font-size:13pt;">
	- MBAN 기반의 헬스케어 서비스를 위한 고 신뢰성 MAC/라우팅 기술 및 서비스 아키텍처 연구(2차)_(한국연구재단)<br>
	- RSSI를 이용한 지능형 교통 제어 시스템_(정보통신산업 진흥원)<br>
	- 제스처 인식 기반 스마트 홈_(정보통신산업 진흥원)<br>
	- 알람 기능 기반의 어린이 안전 지킴이 App 개발_(정보통신산업 진흥원)<br>
	- 유헬스 에이전트 시스템_(정보통신산업 진흥원)<br>
	</p>
	<p class style="font-family:WONDotum; font-size:15pt;"><span style="color:#CCCC00"><br><b><2013~2015></b></span><br></p>
	<p  style="font-family:WONDotum; font-size:13pt;">
	- u-Health 시스템 표준 구현(IEEE11073-2013) ~> HL7 표준을 이용한 u-Health 원격의료 서비스 구현(HL7-2014~)<br>
	- 학과 웹 페이지 / Mobile Application 개발(2013~)<br>
	- OpenCV를 통한 모션 제어(2014~)<br>
	- 센서 네트워크(2014~)<br>
	- Arduino(2014~)<br>
	- JSP 웹 페이지 구축(2014~)<br>
	- Android application development(2014~)<br>
		</p>
	<p class style="font-family:WONDotum; font-size:15pt;"><span style="color:#CCCC00"><br><b><2016></b></span><br></p>
    <p  style="font-family:WONDotum; font-size:13pt;">
	- 블루투스 비콘을 이용한 실시간 자동 출결 시스템_(제13회 IT학부 학술제/이장열,정영록)<br>
	</p>
	<p class style="font-family:WONDotum; font-size:15pt;"><span style="color:#CCCC00"><br><b><2017></b></span><br></p>
	<p  style="font-family:WONDotum; font-size:13pt;">
	- 머신러닝을 이용한 얼굴인식 전자출결 시스템에 관련한 연구_(한국디지털콘텐츠 학회 논문 경진 대회/원종민,방기민,전이삭)<br>
	</p>
	<p class style="font-family:WONDotum; font-size:15pt;"><span style="color:#CCCC00"><br><b><2018></b></span><br></p>
	<p  style="font-family:WONDotum; font-size:13pt;">
	- 기술적 분석지표와 딥러닝을 활용한 주가 예측 기법_(한국디지털콘텐츠 학회 논문 경진 대회/원종민)<br>
	- Seq2Seq모델을 이용한 Q&A 채팅 봇(제 15회 IT학부학술제/원종민)<br>
	- 블록체인 기술을 사용한 전자투표 시스템에 관한 연구_(한국디지털콘텐츠 학회 논문 경진 대회/방기민,전이삭)<br>
	</p>
	<br>
	</div>
	</div>
    </div>

    </div>
  </section>
<!-- PROJECT -->
 <section id="project">
 <div class="bg-2">
    <div class="container">
      <div class="row">
        <div id="m" class="col-lg-10 mx-auto text-center">
        <h1 class="ml-4 mb-3 text-left" style="font-family:HYHeadLine;"><span style="color:#CCCC00">P</span><a style="font-family:HYHeadLine; font-color:#323231">ROJECT</a></h1>
        <h2 class="ml-5 mb-3 text-left" style="font-family:Tmon몬소리OTF; font-color:#323231"><br>Schoolware</h2>
        <div id="i" class="container">
        <p class="text-left" style="font-family:WONDotum;">저희 ICnet이 개발한 홈페이지 'Schoolware'는 LMS로서 학교 사이트 이외 웹&앱 을 일부 학과에게 서비스하는 홈페이지 입니다.</p>
        <img class="img-fluid"  src="../resources/img/schoolware.png" alt="" >
        </div>
        </div>
        </div>
        </div>
        </div>
      
 </section>
 <section id="introduction">
	<div role="complementary" class="intro_count text-center" id="count-div">
		<div class="container">
			<div class="button">
			<a href="../resources/hwp/ICNet.hwp" id="login_btn" style="font-family:yg-jalnan"  download><span style="color:#E6E6E6">지원하기</span></a>
			</div>
			</div>
		</div>
	</div>
</section>

  <!-- Contact section -->
  <section id="signup" class="contact-section bg-2">
    <div class="container">
      <div class="row">
        <div id="e" class="col-lg-10 mx-auto text-center">
        <h1 class="ml-4 mb-3 text-left" style="font-family:HYHeadLine;"><span style="color:#CCCC00">C</span><a style="font-family:HYHeadLine; font-color:#323231">ONTACT</a></h1>
     	 <div class="container">
      <div id="j" class="row">
        <div id="k" class="col-lg-4 col-md-6 text-center">
          <div class="mt-5">
            <h3 class="h4 mb-2" style="font-family:청소년서체; font-size:20pt"><span style="color:#323231">PROFESSOR</span></h3>
            <hr color="#CCCC00" class="my-hr2">
            <p class="text-muted mb-0" style="font-family:WONDotum;  font-size:13pt" ><span style="color:#323231"><a href="https://cms.kornu.ac.kr/user/indexFrame.action?framePath=div3_1.jsp&siteId=it&leftPage=&rightPage=3_1.html&codyMenuSeq=2159584&dum=dum&prfId=2179036&page=&siteId=it&command=view&prfSeq=2217422&search=&column="><img class="img-fluid"  src="../resources/img/professor.png" alt=""><br>박희동 교수님</a></span></p>
          </div>
        </div>
        <div id="k" class="col-lg-4 col-md-6 text-center">
          <div class="mt-5">
            <h3 class="h4 mb-2" style="font-family:청소년서체; font-size:20pt"><span style="color:#323231">EMAIL</span></h3>
            <hr color="#CCCC00" class="my-hr2">
            <p class="text-muted mb-0" style="font-family:WONDotum; font-size:13pt"><span style="color:#323231"></span>yongbumjung@naver.com</p>
          </div>
        </div>
        <div id="k" class="col-lg-4 col-md-6 text-center">
          <div class="mt-5">
            <h3 class="h4 mb-2" style="font-family:청소년서체; font-size:20pt"><span style="color:#323231">ADDRESS</span></h3>
           <hr color="#CCCC00" class="my-hr2">
            <p class="text-muted mb-0" style="font-family:WONDotum; font-size:13pt"><span style="color:#323231">충청남도 천안시 서북구 쌍용동 월봉로 48, 브릿지관 320호 (나사렛대학교 브릿지관 320호)</span></p>
          </div>
        </div>
      </div>
    </div>
     	 </div>
     	 </div>
   </div>
  </section>
  <!-- Footer -->
  <footer class="bg-2 small text-center text-black-50">
    <div class="container">
      Copyright &copy; <b>ICnet</b> All rights reserved.
    </div>
  </footer>
  
  <script type="text/javascript">
  $(document).ready(function(){
		$("#login").on("click", function(e){ //로그인 버튼
			e.preventDefault();
			fn_openLogin();
		});
		
	function fn_openLogin(){
		var comSubmit = new ComSubmit();
		comSubmit.setUrl("<c:url value='/user/openLogin.do'/>");
		comSubmit.submit();
	}
  </script>
  <!-- Bootstrap core JavaScript -->
  <script src="/icnet/resources/vendor/jquery/jquery.min.js"></script>
  <script src="/icnet/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Plugin JavaScript -->
  <script src="/icnet/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for this template -->
  <script src="/icnet/resources/js/grayscale.min.js"></script>

</body>

</html>