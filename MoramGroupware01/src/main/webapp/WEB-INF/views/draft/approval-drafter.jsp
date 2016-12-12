<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
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

.tg  {border-collapse:collapse;border-spacing:0;border-color:#ccc;}
.tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 20px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#fff;}
.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 20px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#f0f0f0;}
.tg .tg-jo0b{background-color:#f9f9f9;font-weight:bold;vertical-align:top}
.tg .tg-e3ma{background-color:#efefef;vertical-align:top}
.tg .tg-yzt1{background-color:#efefef;vertical-align:top}
.tg .tg-9hbo{font-weight:bold;vertical-align:top}
.tg .tg-yw4l{vertical-align:top}
.tg .tg-b7b8{background-color:#f9f9f9;vertical-align:top}
</style>
</head>
<body>

	<div id="wrapper">
		<div class="navbar navbar-inverse navbar-fixed-top">
			<div class="adjust-nav">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
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
					src="<c:url value="/resources/assets/img/find_user.png"/>"
					align="center" /> <class ="img-responsive" /></li>


				<li><a href="/groupware/main1"><i class="fa fa-desktop "></i>메인</a></li>
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
							<li class="childTab"><a href="#">나의 이력서</a></li>
							<li class="childTab"><a href="/groupware/mypage/my_page">나의 이력관리</a></li>
						</ul></li>
					<li id="admin"><a href="#"><i class="fa fa-bar-chart-o"></i>관리자<span
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
		
		
</div>
		<div id="page-wrapper">
			<div id="page-inner">
			
<form action="register-sample" method="get">
<table class="tg">
  <tr>
    <th class="tg-yzt1" colspan="9" style="text-align: center; font-size: 25px; font-style: bold;" >기 안 함</th>
  </tr>
  <tr>
    <td class="tg-9hbo">검색</td>
    <td class="tg-jo0b">날짜</td>
    <td class="tg-yw4l" colspan="6"></td>
    <td class="tg-jo0b" style="padding: 0px;">
	<input type="submit" style="height: 41px; width: 97px; " value="결재 작성">
	</td>
  </tr>
  </form>
  <tr>
    <td class="tg-yzt1"><input type="checkbox"/></td>
    <td class="tg-e3ma">결재번호</td>
    <td class="tg-yzt1">문서구분</td>
    <td class="tg-e3ma" colspan="2">TITLE</td>
    <td class="tg-e3ma">기안일자</td>
    <td class="tg-yzt1">상신자</td>
    <td class="tg-e3ma">현재결재자</td>
    <td class="tg-yzt1">진행상태</td>
  </tr>
  
	 <c:forEach var="dto" items="${DrafterDTO }">
  <tr>
    <td class="tg-yzt1"></td>
    <td class="tg-b7b8">${dto.draft_index }</td>
    <td class="tg-yw4l">${dto.approvalname }</td>
    <td class="tg-b7b8" colspan="2">${dto.title }</td>
    <td class="tg-b7b8">${dto.draftdate }</td>
    <td class="tg-yw4l">${dto.aname }</td>
    <td class="tg-b7b8">${dto.cname }</td>
    <td class="tg-yw4l">${dto.progress }</td>
  </tr>
	</c:forEach>
  
</table>

		</div>
	</div>

	<script src="<c:url value='/resources/assets/js/jquery-1.10.2.js'/>" /></script>
	<!-- BOOTSTRAP SCRIPTS -->
	<script src="<c:url value='/resources/assets/js/bootstrap.min.js'/>" /></script>

	<!-- METISMENU SCRIPTS -->
	<script
		src="<c:url value='/resources/assets/js/jquery.metisMenu.js'/>" /></script>
	<!-- CUSTOM SCRIPTS -->
	<script src="<c:url value='/resources/assets/js/custom.js'/>" /></script>



	<!-- jQuery CDN -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>


</body>
</html>