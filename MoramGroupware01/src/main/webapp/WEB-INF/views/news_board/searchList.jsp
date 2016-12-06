<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
<style>
table {
	width: 100%;
}

table, th, td {
	border-bottom: 1px solid gray;
	border-collapse: collapse;
}

th {
	height: 50%;
	background-color: lightpink;
	border-left: 1px solid gray;
}

li {
	display: inline-block;
}
</style>
</head>

<body>

	<!-- 위의 탭 버튼들을 나타냄 -->
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

		<!-- 옆쪽에 창을 나타내는 코드  -->
		<nav class="navbar-default navbar-side" role="navigation">
		<div class="sidebar-collapse">
			<ul class="nav" id="main-menu">
				<li class="text-center user-image-back"><img
					src="<c:url value="../resources/assets/img/find_user.png"/>"
					align="center" /> <class ="img-responsive" /></li>


				<li><a href="../"><i class="fa fa-desktop "></i>메인</a></li>
				<li><a href="#"><i class="fa fa-edit "></i>전자결재<span
						class="fa arrow"></span></a>
					<ul class="nav nav-second-level">
						<li><a href="#">나의 결재함</a></li>
						<li><a href="#">미결함</a></li>
						<li><a href="#">반려함</a></li>
						<li><a href="#">기결함</a></li>
					</ul></li>

				<li><a href="#"><i class="fa fa-table "></i>전자우편<span
						class="fa arrow"></span></a>
					<ul class="nav nav-second-level">
						<li><a href="#">받은 메일함</a></li>

						<li><a href="#">편지쓰기</a></li>
						<li><a href="#">보낸 메일함</a></li>
						<li><a href="#">휴지통</a></li>
						<li><a href="#">주소록</a></li>
					</ul></li>
				<li><a href="#"><i class="fa fa-edit "></i>게시판<span
						class="fa arrow"></span></a>

					<ul class="nav nav-second-level">
						<li><a href="/../groupware/notice_board/list">공지게시</a></li>
						<li><a href="/../groupware/lecture_board/list">수업자료</a></li>
						<li><a href="/../groupware/news_board/list">IT news</a></li>
						<li><a href="/../groupware/interview_board/list">면접후기</a></li>

					</ul></li>


				<li><a href="#"><i class="fa fa-sitemap "></i>Project 게시판<span
						class="fa arrow"></span></a>
					<ul class="nav nav-second-level">
						<li><a href="/../groupware/team_one_board/list">시나브로</a></li>
						<li><a href="/../groupware/team_two_board/list">그냥2조</a></li>
						<li><a href="/../groupware/team_three_board/list">성준이네</a></li>
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





		<!-- 내가한 코드 -->
		<div id="page-wrapper">
			<div id="page-inner">

				<h1>searchList 페이지 입니다.</h1>
				<nav>
				<ul>
					<li><a href="register">New Content</a>
				</ul>

				<ul>
					<li><a href="list">전체 리스트로...</a>
				</ul>

				</nav>


				<table>
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>작성자</th>
						<th>작성 시간</th>
						<th>조회수</th>
					</tr>

					<c:forEach var="vo" items="${searchList }">
						<tr>
							<td>${vo.bno }</td>
							<td><a href="${vo.bno}">${vo.title }(${vo.replycnt})</a></td>
							<td>${vo.userid }</td>
							<td><fmt:formatDate value="${vo.regdate }"
									pattern="yyyy-MM-dd HH:mm:ss" /></td>
							<td>${vo.viewcnt }</td>
						</tr>
					</c:forEach>

				</table>

				<ul class="pageLinks">
					<c:if test="${pageMaker.hasPrev }">
						<li><a href="${pageMaker.startPageNum - 1 }">Prev</a></li>
					</c:if>

					<c:forEach begin="${pageMaker.startPageNum }"
						end="${pageMaker.endPageNum }" var="num">
						<li><a href="${num }">${num }</a></li>

					</c:forEach>

					<c:if test="${pageMaker.hasNext }">
						<li><a href="${pageMaker.endPageNum + 1 }">Next</a>
					</c:if>

				</ul>

				<form id="pageForm">
					<input type="hidden" name="page"
						value="${pageMaker.searchCriteria.page }" /> <input type="hidden"
						name="bno" />
								<input type="hidden" name="searchType"
					value="${pageMaker.searchCriteria.searchType }"/>
					<input type="hidden" name="keyword"
					value="${pageMaker.searchCriteria.keyword }"/>
				</form>
			</div>
		</div>

	<script src="<c:url value='../resources/assets/js/jquery-1.10.2.js'/>" /></script>
   <!-- BOOTSTRAP SCRIPTS -->
   <script src="<c:url value='../resources/assets/js/bootstrap.min.js'/>" /></script>

   <!-- METISMENU SCRIPTS -->
   <script src="<c:url value='../resources/assets/js/jquery.metisMenu.js'/>" /></script>
   <!-- CUSTOM SCRIPTS -->
   <script src="<c:url value='../resources/assets/js/custom.js'/>" /></script>

		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
		<script>
	$(document).ready(function(){
		var frm = $('#pageForm');
		$('.pageLinks li a').click(function(){
			event.preventDefault();
			var targetPage = $(this).attr('href');
			frm.find('[name="page"]').val(targetPage);
			frm.find('[name="bno"]').val();
			frm.find('[name=searchType]').val();
			frm.find('[name=keyword]').val();
			
			frm.attr('action', 'searchList');
			frm.attr('method', 'get');
			frm.submit();
		});
		
		$('table tr td a').click(function(){
			event.preventDefault();
			var bno = $(this).attr('href');
			frm.find('[name="bno"]').val(bno);
			frm.attr('action', 'detail');
			frm.attr('method', 'get');
			frm.submit();
		});
		
	});
	</script>
</body>
</html>