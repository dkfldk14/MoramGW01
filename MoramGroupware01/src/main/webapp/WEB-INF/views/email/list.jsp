<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

<style>
ul {
	list-style-type: none;
	
}

ul .in {
	display: inline;
	

	/* 각 메뉴의 왼쪽에 "|" 표시(분류 표시) */
	/* font:bold 24px Dotum; */ /* 폰트 설정 - 12px의 돋움체 굵은 글씨로 표시 */
	/* padding:0 20px; 	 */
	*/
}

table {
	font-size: 120%
}

.div_in {
	border: solid 1px #EAEAEA;
}

.div_head {
	border: solid 1px #EAEAEA;
	color: #48DAD2;
	/* background: #48DAD2; */
}

#tr_inner {
	border-bottom: solid 1px #EAEAEA;
	border-top: solid 1px #EAEAEA;
}

#tr_header {
	border-bottom: solid 1px #EAEAEA;
	border-top: solid 1px #EAEAEA;
	color: #0B233f;
}
button {
   color: white;
   padding: 8px 16px;
   text-align: center;
   text-decoration: none;
   display: inline-block;
  
   margin: 4px 2px;
   -webkit-transition-duration: 0.4s; /* Safari */
   transition-duration: 0.4s;
   cursor: pointer;
     color: black;
   border: 1px solid #d6d6d6;
  
   
     background-color: white;
   color: #a8abad;
   font-weight : 850;
    font-size: 13px;
   border: 1px solid #d6d6d6;
   
   
}

.buttondelete {
  background-color: white;
   color: #a8abad;
   
    font-size: 13px;
   border: 1px solid #d6d6d6;
}


#searchbtn{
  background-color: white;
   color: #a8abad;
     font-weight : 850;
    font-size: 13px;
   border: 1px solid #d6d6d6;

}

.buttondelete:hover {
  background-color: #edf8ff;
   color: #3a3939;
   font: bold;
   font-weight: 900;
}

.buttonreturn {
  background-color: white;
   color: #a8abad;
   font-weight : 850;
    font-size: 13px;
   border: 1px solid #d6d6d6;
}

.buttonreturn:hover {
  background-color: #edf8ff;
   color: #3a3939;
   font: bold;
   font-weight: 900;
}

.buttonforward {
  background-color: white;
      color: #a8abad;
     font-weight : 850;
   border: 1px solid #d6d6d6;
   font-size: 13px;
	
}



.buttonforward:hover {
   background-color: #edf8ff;
   color: #3a3939;
   font-weight: 900;
}

label input {
   display: none; /* <-- hide the default checkbox */
}

label span { /* <-- style the artificial checkbox */
   height: 10px;
   width: 10px;
   border: 1px solid grey;
   display: inline-block;
   position: relative;
}

[type=checkbox]:checked+span:before {
   /* <-- style its checked state..with a ticked icon */
   content: '\2714';
   position: absolute;
   top: -5px;
   left: 0;
}

ul.pagination {
    display: inline-block;
    padding: 0;
    margin: 0;
}

ul.pagination li {display: inline;}

ul.pagination li a {
    color: black;
    float: left;
    padding: 8px 16px;
    text-decoration: none;
    transition: background-color .3s;
    border: 1px solid #ddd;
}

ul.pagination li a.active {
    background-color: #A5DBCE;
    color: white;
    border: 1px solid #A5DBCE;
}

ul.pagination li a:hover:not(.active) {background-color: #ddd;}

div.center {text-align: center;}
</style>
</head>
<body>
<% String type = String.valueOf(session.getAttribute("usertype")); %>
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
		<!-- /. NAV TOP  -->
		<nav class="navbar-default navbar-side" role="navigation">
			<div class="sidebar-collapse">
				<ul class="nav" id="main-menu">
					<li class="text-center user-image-back"><img
						src="<c:url value="../resources/assets/img/find_user.png"/>"
						align="center" /> <class ="img-responsive" /></li>


					<li><a href="/groupware/main1"><i class="fa fa-desktop "></i>MAIN1</a></li>
					<li><a href="#"><i class="fa fa-edit "></i>전자결재<span
							class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li class="childTab"><a href="#">나의 결재함</a></li>
						<li class="childTab"><a href="#">미결함</a></li>
						<li class="childTab"><a href="#">반려함</a></li>
						<li class="childTab"><a href="#">기결함</a></li>
						</ul></li>


					<li><a href="#"><i class="fa fa-table "></i>전자우편<span
							class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
						<li class="childTab"><a href="list?page=1">받은 메일함</a></li>
						<li class="childTab"><a href="write">편지쓰기</a></li>
						<li class="childTab"><a href="send-mailbox">보낸 메일함</a></li>
						<li class="childTab"><a href="delete-mailbox">휴지통</a></li>
					</ul></li>
					<li><a href="#"><i class="fa fa-edit "></i>게시판<span
							class="fa arrow"></span></a>

						<ul class="nav nav-second-level">
							<li class="childTab"><a href="/groupware/notice_board/list">공지게시</a></li>
							<li class="childTab"><a href="/groupware/lecture_board/list">수업자료</a></li>
							<li class="childTab"><a href="/groupware/news_board/list">IT news</a></li>
							<li class="childTab"><a href="groupware/interview_board/list">면접후기</a></li>
						
						</ul></li>


					<li><a href="#"><i class="fa fa-sitemap "></i>Project 게시판<span
							class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li class="childTab"><a href="/groupware/team_one_board/list">시나브로</a></li>
						<li class="childTab"><a href="/groupware/team_two_board/list">그냥2조</a></li>
						<li class="childTab"><a href="/groupware/team_three_board/list">성준이네</a></li>
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
	</div>





		<!-- /. NAV SIDE  -->
		<div id="page-wrapper">
			<div id="page-inner">








				<div class="row">
				<!-- 	<div class="col-md-12">
						<h2>손동민님,</h2>
						<h5>♡반갑습니당. 오늘하루도 힘내십시오 ♡</h5>
					</div> -->
				</div>
				<!-- /. ROW  -->
			
				<div class="row">
					<div class="col-md-12">

						<div>




						<div>
							<div style="padding-bottom: 10px;  ">
								<input type="text" id="keyword" name="keyword" placeholder=" 이메일 검색"
									style="height: 35px; width: 250px;" />
								<!-- value 값을 설정해야함 -->

								<button id="searchBtn" value="메일 검색" >검색</button>
								<div style="display: inline-block;">
									<span style="font-size: 12px; font-weight: 600; padding-left: 5px;">받은메일함</span>
									<span> | </span> 
									<span style="font-size: 12px; font-weight: 700; padding-left: 5px; color: green;">${messages}</span>
									<span> ／ </span> 
									<span style="font-size: 12px; font-weight: 700; padding-left: 5px; color: black;">${messages}</span>
			
									<a href="list?page=1"><img src="df"></a>
								</div>
							</div>

							<div style="padding-bottom: 10px;">
								<button class="buttondelete" onclick="fn_userDel(this);">삭제</button>
								<button class="buttonreturn">답장</button>
								<button class="buttonforward">전달</button>


							</div>


							<table style="height: 50px" id="myTable">
								<tr style="height: 30px" id="tr_header">
									<td style="width: 50px"><label
										class="mt-checkbox mt-checkbox-single mt-checkbox-outline"><input
											type="checkbox" id="mail-group-checkbox"
											onclick="allChk(this);" /><span></span></label></td>
									<th style="width: 150px">Date</th>
									<th style="width: 300px">From</th>
									<th style="width: 1000px">Title</th>
								</tr>

								<!-- 
					   <label class="mt-checkbox mt-checkbox-single mt-checkbox-outline">
         <input type="checkbox" class="mail-group-checkbox"> <span></span>
      </label>
 -->

								<c:forEach var="email" items="${email}">

									<tr style="height: 30px" id="tr_inner">
										<td style="width: 50px"><label
											class="mt-checkbox mt-checkbox-single mt-checkbox-outline"><input
												type="checkbox" name="RowCheck"
												class="mail-group-checkbox row-check-box"
												value="${email.num }" /><span></span></label></td>
										<td style="width: 150px">${email.senddate }</td>
										<td style="width: 300px"><a
											href="write?to_email=${email.from_email}">${email.from_email }</td>
										<td style="width: 1000px"><a
											href="detail-receive?num=${email.num }&page=${pageMaker.criteria.page}">${email.subject }</a></td>


									</tr>
								</c:forEach>
								




							</table>
							<input type="hidden" name=email_from/>
	
							<p>
							<div id="labelcenter">
								<label for="1"></label> <label class="text" for="1"> </label>


								<div class="center">
									<ul class="pagination">
							

										<c:if test="${pageMaker.hasPrev }">
											<li><a href="${pageMaker.startPageNum - 1 }">«</a></li>
										</c:if>

										<c:forEach begin="${pageMaker.startPageNum }"
											end="${pageMaker.endPageNum }" var="num">
											<li><a href="list?page=${num }">${num }</a></li>
										</c:forEach>

										<c:if test="${pageMaker.hasNext }">
											<li><a href="${pageMaker.endPageNum + 1 }">»</a></li>
										</c:if>
									</ul>
								</div>
								
				</div>


						</div>
					</div>
				</div>
			
			</div>



		</div>

		<script src="<c:url value='../resources/assets/js/jquery-1.10.2.js'/>" /></script>
		<script type="text/javascript">
		
		var admin = <%=type%>
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
		}
		
		tabSetting();
		
		
		  function allChk(obj){
		      var chkObj = document.getElementsByName("RowCheck");
		      var rowCnt = chkObj.length - 1;
		      var check = obj.checked;
		      if (check) {﻿
		          for (var i=0; i<=rowCnt; i++){
		           if(chkObj[i].type == "checkbox")
		               chkObj[i].checked = true; 
		          }
		      } else {
		          for (var i=0; i<=rowCnt; i++) {
		           if(chkObj[i].type == "checkbox"){
		               chkObj[i].checked = false; 
		           }
		          }
		      }
		  } 
		﻿ ﻿ 

			function fn_userDel() {
				

				var checkArr=[];
				
				$("input[name='RowCheck']:checked").each(function(i){
					console.log($(this).val());
					checkArr.push($(this).val()); 
					/* alert("check/"+$(this).val()); */
				});
				
				if (checkArr.length == 0) {
					alert('선택된 메일이 없어요~');
				} else {
				
					$.ajax({
					url : 'list'
					,type:'post'				
					,dataType:'text'
					,data : {valueArrTest:checkArr},
					success : function(data){
						if(data=='OK'){

							alert("test");
							location = 'list?page=1';
						}
					}});
				}
					
	
		}
		
		
		
		</script>
﻿




		
		<!-- BOOTSTRAP SCRIPTS -->
		<script src="<c:url value='../resources/assets/js/bootstrap.min.js'/>" /></script>

		<!-- METISMENU SCRIPTS -->
		<script
			src="<c:url value='../resources/assets/js/jquery.metisMenu.js'/>" /></script>
		<!-- CUSTOM SCRIPTS -->
		<script src="<c:url value='../resources/assets/js/custom.js'/>" /></script>
	</div>
</body>
</html>
