<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
						align="center" /> <class ="img-responsive" /></li>


					<li id="test" class="current"><a href="/groupware/main1"><i class="fa fa-desktop "></i>MAIN PAGE</a></li>
					<li><a href=""><i class="fa fa-edit "></i>결제<span
							class="fa arrow"></span></a>
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
							<li class="childTab"><a href="/groupware/team_one_board/list">시나브로</a></li>
							<li class="childTab"><a href="/groupware/team_two_board/list">그냥2조</a></li>
							<li class="childTab"><a href="/groupware/team_three_board/list">성준이네</a></li>
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
							<li class="childTab"><a href="/groupware/member_update">개인정보수정</a></li>
							<li class="childTab"><a href="#">나의 이력서</a></li>
							<li class="childTab"><a href="/groupware/my_page">나의 이력관리</a></li>
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
	
		<!-- /. NAV SIDE  -->
		<div id="page-wrapper">
			<div id="page-inner" class="test">

				<table>
					<tr>
						<th>아이디</th>
						<th>이름</th>
						<th>부서</th>
						<th>승인여부</th>
						<th></th>
						
					</tr>

					<c:forEach var="vo" items="${member_list }" varStatus="no">
						<tr>
							<td id="id_${no.index }">${vo.id }</td>
							<td id="name_${no.index }"><a href="/groupware/admin_member_detail?userid=${vo.id }">${vo.name }</a></td>
							<td id="dept_${no.index }">
								<select id="dept_select_${no.index }">
									<option>0</option>
									<option>1</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>
								</select>
							</td>
							<td id="usertype_${no.index }">
								<select id="usertype_select_${no.index }">
									<option>0</option>
									<option>1</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>
								</select>
							</td>
							<td><input type="button" id="${no.index }" class="btn" value="저장"></td>
						</tr>
					</c:forEach>
				</table>
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



		<script type="text/javascript">
			var admin =<%=type%>
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
			
			$(document).ready(function() {
				var i = 0;
				var listSize = ${member_list.size()};
				console.log("listSize:" + listSize);
				
				
				//db에 저장된 dept와 usertype으로 값들을 셋팅
				<c:forEach items="${member_list}" var = "vo">	
				$('#dept_select_'+i).val('${vo.dept}');
				$('#usertype_select_'+i).val('${vo.usertype}');
				i++;
				</c:forEach>
			});
			
			tabSetting();
			
			$('.btn').click(function(event){
				//선택된 태그
				var selectTag=event.target;
				//선택된 태그의 id값
				var num=$(selectTag).attr('id');
				
				var id = $('#id_'+num).text();
				
				var name = $('#name_'+num).text();
				
				var dept = $('#dept_select_'+num+' option:selected').val();
				
				var usertype = $('#usertype_select_'+num+' option:selected').val();
				
				
				$.ajax({
					type: 'post',
					url: '/groupware/admin_update_member',
					data: {
						id:id,
						dept:dept,
						usertype:usertype
					},
					success: function(res, status, xhr){
						if(res=='OK'){
							alert('저장됨');
						}else{
							alert('다시 시도하세요');
						}
					}
				});
			})
			
			
		</script></body>
</html>
