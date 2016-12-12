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
	table{
	border-collapse: collapse;
	font-size: 11pt;
	}
	input {
		border: 0px solid #000000;
	}
	td{
		width: 115px;
		border: 1px solid #000000;
		margin: 0px;
	}
	tr{
		margin: 0px;
	}
	.cell1_1{
		background-color: #d9d9d9
	}
	
	.cell1_1 .cell1_x text-left{	
		margin-left: 5px;	
	}
	textarea {
		border: 0px solid #000000;
	}
	
	#text-center{
		text-align: center;
	}
	#cell_sign{
		font-size: 20pt;
		color: #dbe4f2;
	}
	
	.gapRL{
		border-right: 1px solid white; 
		border-left: 1px solid white;
	}
	
	.gqpTB{
		border-top: 1px solid white; 
		border-bottom: 1px solid white;
	}
	.gapTR{
		border-top: 1px solid white;
		border-right: 1px solid white;
	}
	.kalendae .k-days span.closed {
			background:red;
	}
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
	/*============================== */
		
	
</style>

</head>
<body>

	<form name = "admit" method="POST">
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

					<li><a href="#"><img alt="" src="../resources/assets/img/email.png"/> 전자우편<span class="fa arrow"></span></a>
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
					<li><a href="#"><img alt="" src="../resources/assets/img/mypage.png"/> 마이페이지<span class="fa arrow"></span></a>
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


			</div>

		</nav>
		
</div>
		<div id="page-wrapper">
			<div id="page-inner">
	<br/>
	<br/>
	<br/>
	<br/>
	<table>
		<tr>
			<td class="cell1_1">문서폼</td>
 			<td class="cell1_1" >
 			<input type="text" style="background-color: #d9d9d9" value="${ApprovalVO.approvalname}" readonly="readonly">
			</td>	
 			<td colspan="1" class="gapRL" style="border-top: 1px solid white; border-bottom: 1px solid white;"></td>
 			<td colspan="1" class="gapRL" style="border-top: 1px solid white; border-bottom: 1px solid white;"></td>
 			<td colspan="1" style="border-top: 1px solid white; border-bottom: 1px solid white; border-left: 1px solid white;"></td>
			<td id="text-center" style="background-color: #cccccc; font-weight: bold">
				<button style="width:115px; height: 30px; font-weight: bold " type="submit" name="save" id="finalize" onclick = "mySubmit(1)">
				결재
				</button>
			</td>
 			<td id="text-center" style="background-color: #efefef; font-weight: bold">
 				<button style="width:115px; height: 30px; font-weight: bold " type="submit" name="cancel" onclick = "mySubmit(2)" >
				반려
				</button>
 			</td>
 			</form>
		</tr>
		<tr>
 			<td colspan="5" class="gapRL" style = "margin: 200px"></td>
		</tr>
		<tr>
 			<td class="cell1_x" rowspan="1">문서번호</td>
 			<td id="text-center" colspan="4" rowspan="2" style=" font-weight: bold; height: 50px;">근 태 신 청 서</td>
 			<td colspan="2" rowspan="2" style="border-top: 1px solid white; border-right: 1px solid white;"><!--2*6 셀--></td>

		</tr>
		<tr>
 			<td id="text-center "class="cell1_x" style = "border-right: 0px; border-top: 0px; border-bottom: 0px;">
				<input type="text" readonly="readonly" id = "code" name="draft_index" value = "${ApprovalVO.draft_index }"/>
			</td>
		</tr>
		<tr>
 			<td id="text-center" colspan="3">구분</td>
 			<td id="text-center">직급</td>
 			<td id="text-center">직급</td>
 			<td id="text-center">직급</td>
 			<td id="text-center">직급</td>
 			<td id="text-center">직급</td>
		</tr>
		<tr>
 			<td class="cell1_x" style="border: 0px solid white; border-left: 1px solid black;">이름</td>
 			<td colspan="2">
 				<input type = "text"  value="${ApprovalVO.name }" style = "width: 228px; background-color: #ffffff;" readonly="readonly"/>
 			</td>
 			<td rowspan="4" id="text-center" style="font-size:27pt; color: #d9d9d9" class="final_id1">${List.get(0)}</td>
 			<td rowspan="4" id="text-center" style="font-size:27pt; color: #d9d9d9" class="final_id2">${List.get(1)}</td>
 			<td rowspan="4" id="text-center" style="font-size:27pt; color: #d9d9d9" class="final_id3">${List.get(2)}</td>
 			<td rowspan="4" id="text-center" style="font-size:27pt; color: #d9d9d9" class="final_id4">${List.get(3)}</td>
 			<td rowspan="4" id="text-center" style="font-size:27pt; color: #d9d9d9" class="final_id5">${List.get(4)}</td>
		</tr>
		<tr>
 			<td class="cell1_x">소속</td>
 			<td colspan="2" id="dept" >
	 			<input type = "text"  value="${ApprovalVO.dept }" style = "width: 228px; background-color: #ffffff;" readonly="readonly"/>
 			</td>
		</tr>
		<tr>
 			<td class="cell1_x">구분</td>
 			<td colspan="2"><input style="width: 227.5px;"type="text" id = "code2" name = "name" readonly="readonly" value ="${ApprovalVO.approvalname}"/></td>
		</tr>
		<tr>
 			<td class="cell1_x">사용일자</td>
 			<td colspan="2" >	<input type="text" readonly="readonly" value="${ApprovalVO.usedatestart}" style="width: 102px;">    &nbsp;~&nbsp;&nbsp;&nbsp;<input type="text" style="width: 92px; " readonly="readonly" value ="${ApprovalVO.usedateend}"></td>
		</tr>
		<tr>
 			<td>제출일자</td>
 			<td colspan="2">
 			<input type="text" value="${ApprovalVO.draftdate}" readonly="readonly"/>
 			</td>
 			<td id="text-center">사원이름</td>
 			<td id="text-center">사원이름</td>
 			<td id="text-center">사원이름</td>
 			<td id="text-center">사원이름</td>
 			<td id="text-center">사원이름</td>
		</tr>
		<tr>
 			<td colspan="2" style="height: 40px;">TITLE</td>
 			<td colspan="6"><input type = "text" name = "title" style = " width: 705px; height: 35px; border-color: #000000; border-width: 0px;" readonly="readonly" value="${ApprovalVO.title}"/></td>
		</tr>
		<tr>
 			<td style="height: 345px; " colspan="8"><textarea rows="" cols="100" style = "height: 345px; width: 1000px; resize:none; " readonly="readonly" >${ApprovalVO.content}</textarea></td>
		</tr>
		
	</table>
	
	<table id="grid-table-1">
             </table>
            <hr/>
            
            
		</div>
	</div>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script>
    $(document).ready(function(){
    	$('#finalize').click(function(){
    		<% System.out.println("결재");%>	
    	});
    });
    
    function mySubmit(index) {
    	if (index == 1 ) {
    		document.admit.action = "draft-doing"
    	}
		if (index == 2 ) {
			document.admit.action = "draft-return"
		}   	    	
    }
    
   	</script>
   	

	<script src="<c:url value='/resources/assets/js/jquery-1.10.2.js'/>" /></script>
	<!-- BOOTSTRAP SCRIPTS -->
	<script src="<c:url value='/resources/assets/js/bootstrap.min.js'/>" /></script>

	<!-- METISMENU SCRIPTS -->
	<script
		src="<c:url value='/resources/assets/js/jquery.metisMenu.js'/>" /></script>
	<!-- CUSTOM SCRIPTS -->
	<script src="<c:url value='/resources/assets/js/custom.js'/>" /></script>
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
			
			
			 function logout(){
				 location="/groupware/member_login/logOut";
			 }
			 
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


    </form>
	</body>
</html>