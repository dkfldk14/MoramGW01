<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

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
						<li><a href="#">Report Bug</a></li>
					</ul>
				</div>

			</div>
		</div>
		<nav class="navbar-default navbar-side" role="navigation">
			<div class="sidebar-collapse">
				<ul class="nav" id="main-menu">
					<li class="text-center user-image-back"><img
						src="<c:url value="../resources/assets/img/find_user.png"/>"
						align="center" /> <class ="img-responsive" /></li>


					<li><a href="#"><i class="fa fa-desktop "></i>MAIN PAGE1</a></li>
					<li><a href="#"><i class="fa fa-edit "></i>결제<span
							class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a href="/groupware/draft/draft-myApproval">나의
									결재함page1</a></li>
							<li><a href="#">미결함</a></li>
							<li><a href="#">반려함</a></li>
							<li><a href="#">기결함</a></li>
						</ul></li>

					<li><a href="#"><i class="fa fa-table "></i>전자우편<span
							class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a href="#">받은 메일함1</a></li>
							<li><a href="#">보낸 메일함</a></li>
							<li><a href="#">휴지통</a></li>
							<li><a href="#">주소록</a></li>
						</ul></li>
					<li><a href="#"><i class="fa fa-edit "></i>게시판<span
							class="fa arrow"></span></a>

						<ul class="nav nav-second-level">
							<li><a href="#">공지게시</a></li>
							<li><a href="#">수업자료</a></li>
							<li><a href="#">IT news</a></li>
							<li><a href="#">면접후기</a></li>

						</ul></li>


					<li><a href="#"><i class="fa fa-sitemap "></i>Project 게시판<span
							class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a href="#">시나브로</a></li>
							<li><a href="#">그냥2조</a></li>
							<li><a href="#">성준이네</a></li>
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
					<li><a href="#"><i class="fa fa-qrcode "></i>마이페이지<span
							class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a href="#">개인정보수정</a></li>
							<li><a href="#">나의 이력서</a></li>
							<li><a href="#">나의 이력관리</a></li>
						</ul></li>
					<li><a href="#"><i class="fa fa-bar-chart-o"></i>관리자<span
							class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a href="#">사용자관리</a></li>
							<li><a href="#">권한관리</a></li>
							<li><a href="#">문서함관리</a></li>

							<li><a href="#">결재함관리</a></li>
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
									<th scope="cols">췤</th>
									<th scope="cols">췤췤</th>
									<th scope="cols">암더코리안탑클라스</th>
									<th scope="cols">힙합모범 노블레스</th>
									<th scope="cols">페이블러스 터블런스</th>
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
</body>
</html>