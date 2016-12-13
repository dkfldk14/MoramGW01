<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MORAM Groupware</title>

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

<style type="text/css">
table.type09 {
	border-collapse: collapse;
	text-align: left;
	line-height: 1.5;
}

table.type09 thead th {
	padding: 10px;
	font-weight: bold;
	vertical-align: top;
	color: #369;
	border-bottom: 3px solid #036;
}

table.type09 tbody th {
	width: 150px;
	padding: 10px;
	font-weight: bold;
	vertical-align: top;
	border-bottom: 1px solid #ccc;
	background: #f3f6f7;
}

table.type09 td {
	width: 350px;
	padding: 10px;
	vertical-align: top;
	border-bottom: 1px solid #ccc;
}


.pageLinks li{
 list-style-type : none;
 width: 50%;
 }
</style>



</head>
<body>

<% String type = String.valueOf(session.getAttribute("usertype")); %>
	<div id="login_id" data-id=${login_id } style="display: hidden;"></div>


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
		<nav class="navbar-default navbar-side" role="navigation">
			<div class="sidebar-collapse">
				<ul class="nav" id="main-menu">
					<li class="text-center user-image-back"><img
						src="<c:url value="../resources/assets/img/find_user.png"/>"
						align="center"   id="profileimage" width="128px" height="128px" /> <class ="img-responsive" /></li>


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
							<li><a href="/groupware/email/list">받은 메일함</a></li>
                  
                     <li><a href="/groupware/email/write">편지쓰기</a></li>
                     <li><a href="/groupware/email/send-mailbox">보낸 메일함</a></li>
                     <li><a href="/groupware/email/delete-mailbox">휴지통</a></li>
                     
							

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

	</div>


	<!-- 여기 입력 -->
	<div>
		<a>후에에에에엥</a>
	</div>

	<div id="page-wrapper">
		<div id="page-inner">
			<div class="row">
				<div class="col-md-12">


					<div class="panel panel-back noti-box">
						<table class="type09">
							<thead>
								<tr>
									<th scope="cols">번호</th>
									<th scope="cols">작성일</th>
									<th scope="cols">출근시간</th>
									<th scope="cols">퇴근시간</th>
									<th scope="cols">출결 현황</th>
								</tr>
							</thead>
							<tbody id="check_all">
								<tr>
									<!-- 									<td>xxx년 xx월 xx일 (뷁)</td>
									<td>enter</td>
									<td>leave</td>
									<td>출결여부</td> -->
								</tr>
								<!-- <tr>
									<th scope="row">항목명</th>
									<td>내용이 들어갑니다.</td>
								</tr> -->
							</tbody>
						</table>

						<br /> <br /> <br />

						<table class="type09">
							<tr>
								<th>게시판 종류</th>
								<th>제목</th>
								<th>작성날짜</th>
							</tr>




							<c:forEach var="vo" items="${useridList1}">
								<tr>
									<c:if test="${vo.code eq 1 }">
										<td>공지게시판</td>
									</c:if>

									<c:if test="${vo.code eq 2 }">
										<td>수업자료게시판</td>
									</c:if>

									<c:if test="${vo.code eq 3 }">
										<td>ITNews게시판</td>
									</c:if>

									<c:if test="${vo.code eq 4 }">
										<td>면접후기게시판</td>
									</c:if>

									<td>${vo.title }</td>



									<td><fmt:formatDate value="${vo.regdate }"
											pattern="yyyy-MM-dd HH:mm:ss" /></td>
								</tr>
							</c:forEach>

						</table>
						<hr />
						
						<div id = "linksOfNum">
						<ul class="pageLinks">
							<c:if test="${pageMaker.hasPrev }">
								<li style="display: inline"><a href="${pageMaker.startPageNum -1 }">Prev</a></li>
							</c:if>

							<c:forEach begin="${pageMaker.startPageNum }"
								end="${pageMaker.endPageNum }" var="num">

								<li style="display: inline"><a href="${num }">${num }</a></li>

							</c:forEach>

							<c:if test="${pageMaker.hasNext }">
								<li style="display: inline"><a href="${pageMaker.endPageNum + 1 }">Next</a></li>
							</c:if>
						</ul>
						</div>
						
						<form id="pageForm">
							<input type="hidden" name="page"
								value="${pageMaker.criteria_userid.page }" />
						</form>


					</div>

				</div>
			</div>
		</div>
	</div>


	<!-- =========================== -->

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script>
	$(document).ready(function(){		
		var frm = $('#pageForm');
		$('.pageLinks li a').click(function(){
			event.preventDefault(); //기본 이벤트 처리 방식을 방지
			//pageForm 안에 있는 name="page"인 요소를 찾아서
			//이동할 페이지 번호를 세팅
			var targetPage = $(this).attr('href');
			frm.find('[name="page"]').val(targetPage);
			//페이징 화면
			frm.attr('action', 'my_page');
			//페이징화면을 처리하는 Controller 의 method(요청 처리 방식)
			frm.attr('method', 'get');
			//form 양식을 서버로 전송
			frm.submit();
		});
		
	});//end document function
	</script>


	<script src="<c:url value='../resources/assets/js/jquery-1.10.2.js'/>" /></script>
	<!-- BOOTSTRAP SCRIPTS -->
	<script src="<c:url value='../resources/assets/js/bootstrap.min.js'/>" /></script>

	<!-- METISMENU SCRIPTS -->
	<script
		src="<c:url value='../resources/assets/js/jquery.metisMenu.js'/>" /></script>
	<!-- CUSTOM SCRIPTS -->
	<script src="<c:url value='../resources/assets/js/custom.js'/>" /></script>


	<script src="<c:url value='../resources/assets/js/my_attendance.js'/>" /></script>
	
	<script type="text/javascript">
	var admin ='<%=type%>';
	function tabSetting() {
		console.log("값:" + admin);
		if (admin != '관리자') {
			$('#admin').hide();
		}

		if (admin == '미승인') {
			$('.childTab').click(function() {
				alert('승인 후 이용해주세요');
				return false;
			})
		}
	}
	tabSetting();
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
	
	</script>

</body>
</html>