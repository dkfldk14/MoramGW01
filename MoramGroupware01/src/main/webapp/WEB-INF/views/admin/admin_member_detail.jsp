<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<html lang="en">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>MORAM Groupware</title>
<link href='<c:url value="/resources/assets/css/bootstrap.min.css"/>'
	rel="stylesheet" />
<!-- Bootstrap -->
<!-- <link href="css/bootstrap.min.css" rel="stylesheet"> -->
<!-- font awesome -->
<link rel="stylesheet"
	href='<c:url value="/resources/assets/css/font-awesome.min.css"/>'
	media="screen" title="no title" charset="utf-8">
<!-- Custom style -->
<link rel="stylesheet"
	href='<c:url value="/resources/assets/css/style.css"/>' media="screen"
	title="no title" charset="utf-8">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
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
	
<link href='<c:url value="/resources/assets/css/bootstrap.min.css"/>'
	rel="stylesheet" />	
<style>
table, th, td{
	border-bottom:1px solid gray;
	border-collapse: collapse;
}

th{
	background-color: lightpink;
	border-left: 1px solid white;
	text-align: center;
}
td{
	text-align: center;
}
ul{
	list-style-type: none;
}

li{
	display: inline-block;
}
</style>
</head>
<body>
<% String type = String.valueOf(session.getAttribute("usertype")); %>
	<%-- <% String id = String.valueOf(session.getAttribute("login_id")); %> --%>
	<div id="login_id" data-id=${id } style="display: hidden;"></div>
	<div id="wrapper">
		<div class="navbar navbar-inverse navbar-fixed-top">
			<div class="adjust-nav">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target=".sidebar-collapse">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<!--     <a class="navbar-brand" href="#"><i class="fa fa-square-o "></i></a> -->
				</div>
				<div class="navbar-collapse collapse">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="#">See Website</a></li>
						<li><a href="#">Open Ticket</a></li>
						<li><a href="/groupware/member_login/logOut">Log outs</a></li>
					</ul>
				</div>

			</div>
		</div>
	</div>
	<!-- /. NAV TOP  -->
		<nav class="navbar-default navbar-side" role="navigation">
			<div class="sidebar-collapse">
				<ul class="nav" id="main-menu">
					<li class="text-center user-image-back"><img
						src="<c:url value="resources/assets/img/find_user.png"/>"
						align="center"  id="profileimage" width="128px" height="128px" /> <class ="img-responsive" /></li>


					<li id="test" class="current"><a href="/groupware/main1"><i class="fa fa-desktop "></i>MAIN PAGE</a></li>
					<li><a href="#"><i class="fa fa-edit "></i>전자결재<span class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li id="test" class="childTab"><a href="/groupware/draft/approval-drafter">나의 결재함page</a></li>
							<li class="childTab"><a href="/groupware/draft/approval-finalizer">미결함</a></li>
							<li id="test" class="childTab"><a href="/groupware/draft/approval-return">반려함</a></li>
							<li class="childTab"><a href="/groupware/draft/approval-finish">기결함</a></li>
						</ul></li>

					<li><a href="#"><i class="fa fa-table "></i>전자우편<span
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


					<li><a href="#"><i class="fa fa-sitemap "></i>Project 게시판<span
							class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							
							<!-- authorization은 각 조별 게시판에 들어가도록 권한을 부여 -->
							<li class="childTab" id = "authorization1"><a href="/groupware/team_one_board/list">시나브로</a></li>
							<li class="childTab" id = "authorization2"><a href="/groupware/team_two_board/list">그냥2조</a></li>
							<li class="childTab" id = "authorization3"><a href="/groupware/team_three_board/list">성준이네</a></li>

						</ul></li>
					<li><a href="#"><i class="fa fa-qrcode "></i>마이페이지<span
							class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li class="childTab"><a href="/groupware/member_update">개인정보수정</a></li>
							
							<li class="childTab"><a href="/groupware/mypage/my_page">나의 이력관리</a></li>
						</ul></li>
					<li id="admin"><a href="#"><i class="fa fa-bar-chart-o"></i>관리자<span
							class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li class="childTab"><a href="/groupware/member_manage">사용자관리</a></li>
							
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
				<article class="container">
		<div class="page-header">
			<h1>회원정보</h1>
		</div>
		<div class="col-md-6 col-md-offset-3">
			<form id="form">
				<div class="form-group">
					<label for="InputEmail">아이디</label><br> <input type="text"
						class="form-control" id="UserId" value="${MemberVO.id }" readonly><br>
					<p class="help-block" id="id_result"></p>
				</div>
				<div class="form-group">
					<label for="username">이름</label><br> <input type="text"
						class="form-control" id="username" value="${MemberVO.name }" readonly>
				</div>
				<div class="form-group">
					<label for="sex">성별</label><br> <input type="checkbox"
						name="sexinfo" id="sexinfo" value="남자">남자 <input type="checkbox"
						name="sexinfo" id="sexinfo1"value="여자">여자
				</div>
				<div class="form-group">
					<br> <label for="birth">생년월일</label><br> <input
						type="text" class="form-control" id="birth"
						value="${MemberVO.birth }" readonly>
				</div>

				<div class="form-group">
					<label for="birth">전화번호</label><br> <input type="tel"
						class="form-control" id="tel" value="${MemberVO.telephone }" readonly>
				</div>

				<div class="form-group">
					<label for="birth">휴대폰 번호</label><br> <input type="tel"
						class="form-control" id="sell" value="${MemberVO.cellphone }" readonly>
				</div>

				<div class="form-group">
					<label for="birth">주소</label><br>
					<div class="input-group">
						<input type="text" class="form-control postcodify_postcode5"
							id="post_num" value="${MemberVO.mailno }" readonly="readonly"> <span
							class="input-group-btn">
							<button type="button" id="postcodify_search_button"
								class="btn btn-success">
								우편번호 검색<i class="fa fa-check spaceLeft"></i>
							</button>
						</span>
					</div>
					<input type="text" class="form-control-1 postcodify_address"
						id="another_ad1" value="${MemberVO.address }" readonly="readonly"> <input type="text"
						class="form-control-1 postcodify_details" id="another_ad2"
						value="${MemberVO.addaddress }" readonly>
				</div>
				<div class="form-group">
					<label for="email">이메일 주소</label><br> <input type="email"
						class="form-control" id="email" value="${MemberVO.email }" readonly>
				</div>
				<div class="form-group text-center">
					<button type="button" id="memberList_btn" class="btn btn-info">
						회원 목록<i class="fa fa-check spaceLeft"></i>
					</button>
				</div>
			</form>
		</div>
	</article>
			
				<!-- /. PAGE INNER  -->
			</div>
		<!-- /. PAGE WRAPPER  -->
		</div>
	<!-- /. WRAPPER  -->
	<!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
	<!-- JQUERY SCRIPTS -->


		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<!-- 우편번호 검색 CDN -->
	<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed-->
	<!-- <script src="/groupware/resources/assets/js/bootstrap.min.js"></script> -->
	

	<script src="<c:url value='resources/assets/js/jquery-1.10.2.js'/>" /></script>
	<!-- BOOTSTRAP SCRIPTS -->
	<script src="<c:url value='resources/assets/js/bootstrap.min.js'/>" /></script>

	<!-- METISMENU SCRIPTS -->
	<script src="<c:url value='resources/assets/js/jquery.metisMenu.js'/>" /></script>
	<!-- CUSTOM SCRIPTS -->
	<script src="<c:url value='resources/assets/js/custom.js'/>" /></script>



		<script type="text/javascript">
			var admin ="<%=type%>"
			function tabSetting() {
				console.log("값:" + admin);
				if (admin != 1) {
					$('#admin').hide();
				}

				if (admin == 0) {
					$('.childTab').click(function() {
						alert('승인 후 이용해주세요');
						return false;
					})
				}
			}
			tabSetting();
			
			var gender = "${MemberVO.gender}";
			console.log("성별"+gender);
			
			if(gender == "남자"){
				$('input:checkbox[id="sexinfo"]').prop("checked", true);
			}else{
				$('input:checkbox[id="sexinfo1"]').prop("checked", true);
			}
			
			$('#memberList_btn').click(function(){
				location = '/groupware/member_manage';
			})
			
			var name = "${name}";
			var url = '/groupware/checktime/myimage/'+name;
			$.getJSON(url, function(data){
				var profileimage='';
				$(data).each(function(){
					profileimage=this.profileimage;
				});
	
				if(profileimage!=null && profileimage!=''){
					$('#profileimage').attr("src", profileimage);
				};
			});
			
		</script></body>
</html>
