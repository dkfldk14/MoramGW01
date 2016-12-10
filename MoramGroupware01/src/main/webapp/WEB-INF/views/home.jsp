<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix ="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Free Bootstrap Admin Template : Main-Home</title>
<!-- BOOTSTRAP STYLES-->
<link href="<c:url value="/resources/assets/css/bootstrap.css"/>"
	rel="stylesheet" />
<!-- FONTAWESOME STYLES-->
<link href="<c:url value="/resources/assets/css/font-awesome.css"/>"
	rel="stylesheet" />
<!-- CUSTOM STYLES-->
<link href="<c:url value="/resources/assets/css/custom.css"/>"
	rel="stylesheet" />
<!-- GOOGLE FONTS-->
<link href='http://fonts.googleapis.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css' />
	
	<!-- 날씨 css -->
<link href="<c:url value="/resources/assets/css/weather.css"/>"
	rel="stylesheet" />

<style>
#logoutButton{
background-color: #ffd777;
border: 1px solid #3fc3c4;
color: #3f3f3f;
font-size: 110%;
padding: 7px;
margin: 10px;
}

#logoutButton:hover {
	background-color: #3fc3c4;
	border: 1px solid #ffd777;
	color: #ffffff;
}
#profileimage{
border-radius: 70px;
-moz-border-radius: 7px;
-khtml-border-radius: 7px;
-webkit-border-radius: 7px;
}
</style>
	

</head>  
<body>
<% String type = String.valueOf(session.getAttribute("usertype")); %>
<% String dept = String.valueOf(session.getAttribute("dept"));%>

	<%-- <% String id = String.valueOf(session.getAttribute("login_id")); %> --%>
	<div id="login_id" data-id=${id } style="display: hidden;"></div>

		<div id="wrapper">
			<div class="navbar navbar-inverse navbar-fixed-top">
				<div class="adjust-nav">
					<div class="navbar-header">
						<span id="moramHeader">Moram</span>
							<button id="hide"><img width="20px" height="20px" alt="리스트" src="resources/assets/img/list.png"/></button>
							<button id="show"><img style="margin-left: 0px;" width="20px" height="20px" alt="리스트" src="resources/assets/img/list.png"/></button>
							
					
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target=".sidebar-collapse">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<!--     <a class="navbar-brand" href="#"><i class="fa fa-square-o "></i></a> -->
				</div>
				<div class="navbar-collapse collapse">
					<ul class="nav navbar-nav navbar-right">
						<li><button id="logoutButton" onclick="logout();">Logout</button></li>
					
					</ul>
				</div>

				</div>
			</div>
		</div>
		<!-- /. NAV TOP  -->
		<nav id = "navPM" class="navbar-default navbar-side" role="navigation">
			<div class="sidebar-collapse">
				<ul class="nav" id="main-menu">
					
					<li>
						<div>
							<br/>
						</div>
					</li>
					
					<li class="text-center user-image-back"><img
						src="<c:url value="resources/assets/img/find_user.png"/>"
						align="center" id="profileimage" width="128px" height="128px"/> 
						<span>Moram 소속 1팀 </span><class ="img-responsive" /></li>


					<li id="test" class="current"><a href="/groupware/main1"><img alt="" src="resources/assets/img/main.png"/> MAIN PAGE</a></li>
					<li><a href=""><img alt="" src="resources/assets/img/approval.png"/> 결재<span class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li id="test" class="childTab"><a href="/groupware/draft/approval-drafter">나의 결재함</a></li>
							<li class="childTab"><a href="/groupware/draft/approval-finalizer">미결함</a></li>
							<li id="test" class="childTab"><a href="/groupware/draft/approval-return">반려함</a></li>
							<li class="childTab"><a href="/groupware/draft/approval-finish">기결함</a></li>
						</ul></li>

					<li><a href="#"><img alt="" src="resources/assets/img/email.png"/> 전자우편<span
							class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li class="childTab"><a href="email/list?page=1">받은 메일함</a></li>
							<li class="childTab"><a href="email/write">편지쓰기</a></li>
							<li class="childTab"><a href="email/send-mailbox">보낸 메일함</a></li>
							<li class="childTab"><a href="email/delete-mailbox">휴지통</a></li>
							

						</ul></li>
					<li><a href="#"><i class="fa fa-edit "></i>게시판<span
							class="fa arrow"></span></a>
						<ul class="nav nav-second-level">

							<li class="childTab"><a href="/groupware/notice_board/list">공지게시</a></li>
							<li class="childTab"><a href="/groupware/lecture_board/list">수업자료</a></li>
							<li class="childTab"><a href="/groupware/news_board/list">IT news</a></li>
							<li class="childTab"><a href="/groupware/interview_board/list">면접후기</a></li>


						</ul></li>


					<li><a href="#"><img alt="" src="resources/assets/img/teamproject.png"/> Project 게시판<span
							class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							
							<!-- authorization은 각 조별 게시판에 들어가도록 권한을 부여 -->
							<li class="childTab" id = "authorization1"><a href="/groupware/team_one_board/list">시나브로</a></li>
							<li class="childTab" id = "authorization2"><a href="/groupware/team_two_board/list">그냥2조</a></li>
							<li class="childTab" id = "authorization3"><a href="/groupware/team_three_board/list">성준이네</a></li>

							<!--  <li>
                                <a href="#">Second Level Link<span class="fa arrow"></span></a>
                                <ul class="nav nav-third-level">
                                    <li>
                                        <a href="#">Third Level Link</a>
                                    </li>
                                    <li>
                                        <a href="#">Third Level Link</a>
                                    </li>
                                    <li>
                                        <a href="#">Third Level Link</a>
                                    </li>

                                </ul>

                            </li> -->
						</ul></li>
					<li><a href="#"><img alt="" src="resources/assets/img/mypage.png"/> 마이페이지<span
							class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li class="childTab"><a href="/groupware/member_update">개인정보수정</a></li>
							<li class="childTab"><a href="#">나의 이력서</a></li>
							<li class="childTab"><a href="/groupware/mypage/my_page">나의 이력관리</a></li>
						</ul></li>
					<li id="admin"><a href="#"><img alt="" src="resources/assets/img/manager.png"/> 관리자<span
							class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li class="childTab"><a href="/groupware/member_manage">사용자관리</a></li>
							<li class="childTab"><a href="#">권한관리</a></li>
							<li class="childTab"><a href="#">문서함관리</a></li>
							<li class="childTab"><a href="#">결재함관리</a></li>
						</ul></li>

					<!--  <li>
                        <a href="#"><i class="fa fa-edit "></i>Last Link </a>
                    </li>
                    <li>
                        <a href="blank.html"><i class="fa fa-table "></i>Blank Page</a>
                    </li>  -->
				</ul>

			</div>

		</nav>
	
		<!-- /. NAV SIDE  -->
		<div id="page-wrapper">
			<div id="page-inner" class="test">
				<div class="row">
					<div class="col-md-12">
						      <h2>${name}님,<%-- <%=type %> --%></h2>   
                        <h5> ＜바꿔달라는 요청이 있어서 바꿉니다 ㅠ＞ </h5>
					</div>
				</div>
				<!-- /. ROW  -->
				<hr />
				
				
				
				<div class="row">
					<div class="col-md-3 col-sm-6 col-xs-6">
						<div class="panel panel-back noti-box">
							<div id = "check-inout">
							<div id = "margin-box-weather">
								<button class="check-in" id="check-in">입실</button>
								<button class="check-out" id="check-out">퇴실</button>
								<div>
									<p id="font-garo" style="margin-top: 20px;">입실 시간 : <a id="check-in-text"></a></p>
									
									<p id="font-garo" style="margin-top: -10px;">퇴실 시간 : <a id="check-out-text"></a></p>
									
								</div>
							</div>
							</div>
						</div>
					</div>
					
				
					<div id="margin-box2">
						<div class="panel panel-back noti-box">
<!-- 							<span class="icon-box bg-color-red set-icon"> <i
								class="fa fa-envelope-o"></i>
							</span> -->
							<div style="margin-left: 10px;">
								
								<div class="text-box1">
									<img id="main_img" alt="이메일" src="resources/assets/img/home_img/email.png"/>
									<!-- <img id="main_img" alt="이메일" src="resources/assets/img/home_img/heos.png"/> -->
									<a class="text-line1">New</a>
								</div>
								
								
								<div class="text-box2">
									<img id="main_img" alt="리스트" src="resources/assets/img/home_img/list.png"/>
									<a class="text-line1">뉴</a>
								</div>
							
								<div class="text-box3">
									<img id="main_img" alt="벨" src="resources/assets/img/home_img/bell.png"/>
									<a class="text-line1">${count }</a>
								</div>
							</div>
						</div>
					</div>
				
					<!-- div 추가해줘야 함.  -->
					<!--  <div class="col-md-3 col-sm-3 col-xs-6">
                        <h5>Widget Box One</h5>
                        <div class="panel panel-primary text-center no-boder bg-color-blue">
                            <div class="panel-body">
                                <i class="fa fa-bar-chart-o fa-5x"></i>
                                <h3>120 GB </h3>
                            </div>
                            <div class="panel-footer back-footer-blue">
                                Disk Space Available
                            
                            </div>
                        </div>
                    </div> -->
					<!--  <div class="col-md-3 col-sm-3 col-xs-6">
                        <h5>Widget Box Two</h5>
                        <div class="alert alert-info text-center">
                            <i class="fa fa-desktop fa-5x"></i>
                            <h3>100$ </h3>
                            Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                        </div>
                    </div> -->
					<!--  <div class="col-md-6">
                        <h5>Buttons Samples</h5>
                        <a href="#" class="btn btn-default">default</a>
                        <a href="#" class="btn btn-primary">primary</a>
                        <a href="#" class="btn btn-danger">danger</a>
                        <a href="#" class="btn btn-success">success</a>
                        <a href="#" class="btn btn-info">info</a>
                        <a href="#" class="btn btn-warning">warning</a>
                        <br />
                        <br />
                        <h5>Progressbar Samples</h5>
                        <div class="progress progress-striped">
                            <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                <span class="sr-only">40% Complete (success)</span>
                            </div>
                        </div>
                        <div class="progress progress-striped active">
                            <div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
                                <span class="sr-only">20% Complete</span>
                            </div>
                        </div>


                    </div> -->

				</div>
				<!-- /. ROW  -->
				<hr />
				<div class="row">
					<div id="col4-layout" style="display: inline-block; float: left;">
						<!-- <div class="form-group">
							<label>Text Input Example</label> <input class="form-control" />
							<p class="help-block">Help text here.</p>
						</div> -->
						<div class="panel panel-back noti-box">
							<div href="#" class="weather" style="width: 300px; height: 75px;">
								<table id="weather" style="width: 150px"></table>
							</div>
							
							
						<!-- 원형그래프 -->
							<div class="box-layout" id="pie-chart-layout">
								<div >
									<div id="chart_div"></div>
								</div>
							</div>
						</div>
					
					</div>
					
					<!-- 막대그래프 -->
					<div>
						<div class="box-layout" id="graph-layout">
							<div id="box-inner-items">
								<div id="container" style="min-width: 310px; height: 400px; margin: 0 auto"></div>
							</div>
						</div>
					</div>
	
				</div>
				<hr />
				
				<!-- 게시판 -->
				<div class="row">
					<div class="col-md-6">
						<h5>IT NEWS</h5>
						<table class="table table-striped table-bordered table-hover">
							<thead>
								<tr>
									<th>#</th>
									<th>TITLE</th>
									<th>DATE</th>
	
								</tr>
							</thead>
							<tbody id = "ittablebody"></tbody>
						</table>

					</div>
					<div class="col-md-6">
						<h5>NOTICE</h5>
						<div>
							<table class="table table-striped table-bordered table-hover">
								<thead>
									<tr>
										<th>#</th>
										<th>TITLE</th>
										<th>DATE</th>
									</tr>
								</thead>
								<tbody id = "noticebody"></tbody>	
							</table>
						</div>
					</div>
				</div>
				<!-- /. ROW  -->
			

				<div class="row">
					<div class="col-md-4">
					
				</div>
				<!-- /. ROW  -->
				<hr />
				<div class="row">
					<div class="col-md-12">
			
					</div>
				</div>
				<!-- /. ROW  -->
			</div>
			
			
			
			<!-- /. PAGE INNER  -->
			
			
		</div>
		<!-- /. PAGE WRAPPER  -->
	</div>
	<!-- /. WRAPPER  -->
	<!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
	<!-- JQUERY SCRIPTS -->




	<script src="<c:url value='resources/assets/js/jquery-1.10.2.js'/>" /></script>
	<!-- BOOTSTRAP SCRIPTS -->
	<script src="<c:url value='resources/assets/js/bootstrap.min.js'/>" /></script>

	<!-- METISMENU SCRIPTS -->
	<script src="<c:url value='resources/assets/js/jquery.metisMenu.js'/>" /></script>
	<!-- CUSTOM SCRIPTS -->
	<script src="<c:url value='resources/assets/js/custom.js'/>" /></script>
	
	
	<!-- 날씨 정보 css,js -->
	<script src="<c:url value='resources/assets/js/weather.js'/>" /></script>
	
	<!-- 파이 -->
	<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
	
	<!-- 막대 -->
	<script src="https://code.highcharts.com/highcharts.js"></script>
	<script src="https://code.highcharts.com/modules/exporting.js"></script>
	
	<script type="text/javascript">
	
	var admin = <%=type%>
	var dept = <%=dept%>
	function tabSetting() {
		// 탭 컨텐츠 hide 후 현재 탭메뉴 페이지만 show
		/* $('.test').hide();
		$($('.current').find('a').attr('href')).show(); */
 		
		console.log("값:"+admin);
		if(admin != 1){
			$('#admin').hide();			
		}
				
		if(admin==0){
			$('.childTab').click(function () {
				alert('승인 후 이용해주세요');
				return false;
			})
		}
		
		//팀별 게시판에 각 팀원 들이 들어가게끔 수정해야한다.
		//오쌤은 dept 값이 5번이므로 모든 팀프로젝트 게시판에 들어가야한다.
		
		if(dept != 1 && dept != 5){
			$('#authorization1').click(function(){
				alert('당신은 1조가 아닙니다.');
				return false;
			})
		}
		
		if(dept != 2 && dept != 5){
			$('#authorization2').click(function() {
				alert('당신은 2조가 아닙니다.');
				return false;
			})
		}
		
		if(dept != 3 && dept != 5){
			$('#authorization3').click(function(){
				alert('당신은 3조가 아닙니다.');
				return false;
			})
		}
	
	}
		 function logout(){
			 location="/groupware/member_login/logOut";
		 }

		</script>
		<script>

		// Tab 메뉴 클릭 이벤트 생성
		/* $('.childTab').click(function (event) { */
			/* var tagName = event.target.tagName; // 현재 선택된 태그네임
			var selectedLiTag = (tagName.toString() == 'A') ? $(event.target).parent('li') : $(event.target); // A태그일 경우 상위 Li태그 선택, Li태그일 경우 그대로 태그 객체 */
			/* var currentLiTag = $('li[class~=current]'); // 현재 current 클래그를 가진 탭
			var isCurrent = false;   */
			 
			
			// 현재 클릭된 탭이 current를 가졌는지 확인
			/* isCurrent = $(selectedLiTag).hasClass('current'); */
			
			/* console.log(isCurrent); */
			
			
			/* if($(selectedLiTag).find('a').attr('href') != ''){
				
				if($(selectedLiTag).find('a').attr('href') != '#page-inner'){
				if(admin == 0){
					alert('승인 후 이용하세요');
					return false;
				}} */
				// current를 가지지 않았을 경우만 실행
			/* 	if (!isCurrent) {
					$($(currentLiTag).find('a').attr('href')).hide();
					$(currentLiTag).removeClass('current');
	 				
					$(selectedLiTag).addClass('current');
					$($(selectedLiTag).find('a').attr('href')).show();
				} */
				

			/* } *//* else{
				$($(currentLiTag).find('a').attr('href')).show();
	/* 		} */
			 
	/* 		return false;
		}); */ 
		
	
 
	/* $(function () { */
		// 탭 초기화 및 설정
		tabSetting();
	/* }); */
	
	
	var profileimage= '${profileimage}';
	if(profileimage !=null && profileimage!=''){
		$("#profileimage").attr('src', profileimage);
	}
	</script>




</body>
</html>
