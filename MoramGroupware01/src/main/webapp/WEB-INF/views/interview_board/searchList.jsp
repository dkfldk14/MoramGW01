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
   
   <!-- board-list -->
<link href="<c:url value="/resources/assets/css/board-list.css"/>"
   rel="stylesheet" />
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

	<% String type = String.valueOf(session.getAttribute("usertype")); %>
	<% String dept = String.valueOf(session.getAttribute("dept")); %>	
	<% String profileimage = String.valueOf(session.getAttribute("profileimage")); %>

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
					align="center"  id="profileimage" width="128px" height="128px"  /> <class ="img-responsive" /></li>


				<li><a href="../"><i class="fa fa-desktop "></i>메인</a></li>
				<li><a href="#"><i class="fa fa-edit "></i>전자결재<span
						class="fa arrow"></span></a>
					<ul class="nav nav-second-level">
						  <li><a href="/groupware/draft/approval-drafter">나의 결재함</a></li>
                     <li><a href="/groupware/draft/approval-finalizer">미결함</a></li>
                     <li><a href="/groupware/draft/approval-return">반려함</a></li>
                     <li><a href="/groupware/draft/approval-finish">기결함</a></li>
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
						<li><a href="/../groupware/notice_board/list">공지게시</a></li>
						<li><a href="/../groupware/lecture_board/list">수업자료</a></li>
						<li><a href="/../groupware/news_board/list">IT news</a></li>
						<li><a href="/../groupware/interview_board/list">면접후기</a></li>

					</ul></li>


				<li><a href="#"><i class="fa fa-sitemap "></i>Project 게시판<span
						class="fa arrow"></span></a>
					<ul class="nav nav-second-level">
						<li id = "authorization1"><a href="/../groupware/team_one_board/list">시나브로</a></li>
						<li id = "authorization2"><a href="/../groupware/team_two_board/list">그냥2조</a></li>
						<li id = "authorization3"><a href="/../groupware/team_three_board/list">성준이네</a></li>
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
						 <li><a href="/groupware/member_update">개인정보수정</a></li>
                     
                     <li><a href="/groupware/mypage/my_page">나의 이력관리</a></li>
					</ul></li>
				<li id="admin"><a href="#"><i class="fa fa-bar-chart-o"></i>관리자<span
						class="fa arrow"></span></a>
					<ul class="nav nav-second-level">
						<li><a href="/groupware/member_manage">사용자관리</a></li>
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

				<h1>면접 후기 게시판</h1>
				<nav>
					<ul style="float: right;">
						<li style="display: inline-block;"><a class="btn btn-default"  href="register" style="margin-right: 10px">새 글 쓰기</a>
						<li><a class="btn btn-default" href="list">전체 리스트</a>
					</ul>

				</nav>
				



				
				<table class="table_list">
	<colgroup>
	<col width = "8%"/>
	<col width = "*"/>
	<col width = "10%"/>
	<col width = "20%"/>
	<col width = "8%"/>
	</colgroup>
	<thead>
		<th scope="col" class="col">번호</th>
		<th scope="col" class="col">제목</th>
		<th scope="col" class="col">작성자</th>
		<th scope="col" class="col">작성일</th>
		<th scope="col" class="col">조회수</th>
	</thead>
	<tbody>
		
		<c:forEach var = "vo" items="${searchList }">
			<tr>
				<td class="num">${vo.bno }</td>
				<td class="title">
					<a href="${vo.bno}">${vo.title }(${vo.replycnt})</a>
				</td>
				<td>${vo.name }</td>
				<td class="date"><fmt:formatDate value="${vo.regdate }"
					pattern="yyyy-MM-dd HH:mm:ss"/></td>
				<td class="num">${vo.viewcnt }</td>
			</tr>
		</c:forEach>
		
	</tbody>
	</table>

					<hr/>

				<ul class="pageLinks">
					<c:if test="${pageMaker.hasPrev }">
						<li><a href="${pageMaker.startPageNum -1 }">Prev</a></li>
					</c:if>

					<c:forEach begin="${pageMaker.startPageNum }"
						end="${pageMaker.endPageNum }" var="num">

						<li><button type="button" class="btn btn-default"
								id="pagebtn${num}" onclick="location.href='?page=${num}'">${num}</button></li>
					</c:forEach>

					<c:if test="${pageMaker.hasNext }">
						<li><a href="${pageMaker.endPageNum + 1 }">Next</a></li>
					</c:if>
				</ul>

				<form id="pageForm">
					<input type="hidden" name="page"
						value="${pageMaker.searchCriteria.page }" />
					<input type="hidden" name="bno" />
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
		
///////////////팀 별 게시판 권한 부여 ////////////////////
		var dept = '<%=dept%>';
		
		//alert('profileimage : ' + profileimage);
		if(dept != "1팀" && dept != "5팀"){
			$('#authorization1').click(function(){
				alert('당신은 1조가 아닙니다');
				return false;
			});
		}
		
		if(dept != "2팀" && dept != "5팀"){
			$('#authorization2').click(function(){
				alert('당신은 2조가 아닙니다');
				return false;
			});
		}
		
		if(dept != "3팀" && dept != "5팀"){
			$('#authorization3').click(function(){
				alert('당신은 3조가 아닙니다');
				return false;
			});
		}
		///////////////////////////////////////////////////////
		
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
		
		$(function () {
			var getpage = getQuerystring('page');
			if(getpage != null && getpage !=''){
				$("#pagebtn"+getpage).css("color", "white");
				$("#pagebtn"+getpage).css("background-color", "#59DFDF");
			} else {
				$("#pagebtn1").css("color", "white");
				$("#pagebtn1").css("background-color", "#59DFDF");
			}
		});
		
		function getQuerystring(paramName){

			var _tempUrl = window.location.search.substring(1); //url에서 처음부터 '?'까지 삭제
			var _tempArray = _tempUrl.split('&'); // '&'을 기준으로 분리하기
			
			if(_tempArray!=null && _tempArray!=''){
				for(var i = 0; _tempArray.length; i++) {
					var _keyValuePair = _tempArray[i].split('='); // '=' 을 기준으로 분리하기
				
					if(_keyValuePair[0] == paramName){ // _keyValuePair[0] : 파라미터 명
						// _keyValuePair[1] : 파라미터 값
						return _keyValuePair[1];
					}
				}
			}
		};
	
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
		
	});
	</script>
</body>
</html>