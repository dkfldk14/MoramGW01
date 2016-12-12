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

#logoutButton{
background-color: 
#399695;
border: 1px solid 
#1db88e;
color: #ffffff;
font-weight : 200;
font-size: 100%;
padding: 7px;
margin: 10px;
}

#logoutButton:hover {
	background-color: #3fc3c4;
	border: 1px solid #ffd777;
	color: #ffffff;
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
					<span id="moramHeader">

						<div style="padding-top: 0px;">
						<div style="display: inline;  margin-bottom: 30px; ">
							<button id="hide" style="background-color: #40efbe; border: #40efbe">
								<img width="25px" height="25px" alt="리스트"
									src="../resources/assets/img/home_img/menutoggle.png" />
							</button>
							<button id="show"
								style="display: none; background-color: #40efbe; border: #40efbe; ">
								<img style="margin-left: 0px;" width="25px" height="25px"
									alt="리스트" src="../resources/assets/img/home_img/menutoggle.png" />
							</button></div>
							<div style="font-size: 30px; font-weight: 800; color: white; margin-top: 30px; display: inline; line-height:200%">MORAM</div>
						</div>
					
					</span>
				</div>
				<div class="navbar-collapse collapse">
					<ul class="nav navbar-nav navbar-right">
						<li><button id="logoutButton" onclick="logout()">로그아웃</button></li>

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
						src="<c:url value="../resources/assets/img/find_user.png"/>"
						align="center" id="profileimage" width="128px" height="128px"/> 
						<br/><br/>
						<span style="font-weight: 700; color: gray;"><img src="../resources/assets/img/home_img/user (2).png" style="width: 18px"; height="18px; "/> Moram 1팀 사원</span><class ="img-responsive" /></li>
						
						
						<li>
					
					</li>

					<li id="test" class="current"><br/><a href="/groupware/main1"><img alt="" src="../resources/assets/img/main.png"/> MAIN PAGE</a></li>
					<li><a href=""><img alt="" src="../resources/assets/img/approval.png"/> 결재<span class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li id="test" class="childTab"><a href="/groupware/draft/approval-drafter">나의 결재함</a></li>
							<li class="childTab"><a href="/groupware/draft/approval-finalizer">미결함</a></li>
							<li id="test" class="childTab"><a href="/groupware/draft/approval-return">반려함</a></li>
							<li class="childTab"><a href="/groupware/draft/approval-finish">기결함</a></li>
						</ul></li>

					<li><a href="#"><img alt="" src="../resources/assets/img/email.png"/> 전자우편<span	class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li class="childTab"><a href="/groupware/email/list?page=1">받은 메일함</a></li>
							<li class="childTab"><a href="/groupware/email/write">편지쓰기</a></li>
							<li class="childTab"><a href="/groupware/email/send-mailbox">보낸 메일함</a></li>
							<li class="childTab"><a href="/groupware/email/delete-mailbox">휴지통</a></li>
							

						</ul></li>
					<li><a href="#"><i class="fa fa-edit "></i>게시판<span
							class="fa arrow"></span></a>
						<ul class="nav nav-second-level">

							<li class="childTab"><a href="/groupware/notice_board/list">공지게시</a></li>
							<li class="childTab"><a href="/groupware/lecture_board/list">수업자료</a></li>
							<li class="childTab"><a href="/groupware/news_board/list">IT news</a></li>
							<li class="childTab"><a href="/groupware/interview_board/list">면접후기</a></li>


						</ul></li>


					<li><a href="#"><img alt="" src="../resources/assets/img/teamproject.png"/> Project 게시판<span
							class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							
							<!-- authorization은 각 조별 게시판에 들어가도록 권한을 부여 -->
							<li class="childTab" id = "authorization1"><a href="/groupware/team_one_board/list">시나브로</a></li>
							<li class="childTab" id = "authorization2"><a href="/groupware/team_two_board/list">그냥2조</a></li>
							<li class="childTab" id = "authorization3"><a href="/groupware/team_three_board/list">성준이네</a></li>


						</ul></li>
					<li><a href="#"><img alt="" src="../resources/assets/img/mypage.png"/> 마이페이지<span	class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li class="childTab"><a href="/groupware/member_update">개인정보수정</a></li>
							<li class="childTab"><a href="#">나의 이력서</a></li>
							<li class="childTab"><a href="/groupware/mypage/my_page">나의 이력관리</a></li>
						</ul></li>
					<li id="admin"><a href="#"><img alt="" src="../resources/assets/img/manager.png"/> 관리자<span class="fa arrow"></span></a>
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
		<script type="text/javascript">
			var admin ="<%=type%>"
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
			var profileimage= '${profileimage}';
			if(profileimage !=null && profileimage!=''){
				$("#profileimage").attr('src', profileimage);
			}
			 function logout(){
				 location="/groupware/member_login/logOut";
			 }
			 
			 
			 
			</script>

</body>
</html>