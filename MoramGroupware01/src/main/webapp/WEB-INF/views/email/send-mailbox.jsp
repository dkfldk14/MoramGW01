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
   background-color: #A5DBCE; /* Green */
   border: none;
   color: white;
   padding: 8px 16px;
   text-align: center;
   text-decoration: none;
   display: inline-block;
   font-size: 10px;
   margin: 4px 2px;
   -webkit-transition-duration: 0.4s; /* Safari */
   transition-duration: 0.4s;
   cursor: pointer;
}

.buttondelete {
  background-color: white;
   color: black;
   border: 2px solid #8fb73a;
}



.buttondelete:hover {
  background-color: #8fb73a;
   color: white;
}

.buttonreturn {
   background-color: white;
   color: black;
   border: 2px solid #8fb73a;
}

.buttonreturn:hover {
   background-color: #8fb73a;
   color: white;
}

.buttonforward {
   background-color: white;
   color: black;
   border: 2px solid #8fb73a;
}



.buttonforward:hover {
   background-color: #8fb73a;
   color: white;
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

ul.pagination li .active {
    background-color: #A5DBCE;
    color: white;
    border: 1px solid #A5DBCE;
}

.active {
    background-color: #A5DBCE;
    color: white;
    border: 1px solid #A5DBCE;
}
ul.pagination li a:hover:not(.active) {background-color: #ddd;}

div.center {text-align: center;}
</style>
</head>
<body>
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
		<!-- /. NAV TOP  -->
		<nav class="navbar-default navbar-side" role="navigation">
			<div class="sidebar-collapse">
				<ul class="nav" id="main-menu">
					<li class="text-center user-image-back"><img
						src="<c:url value="../resources/assets/img/find_user.png"/>"
						align="center" /> <class ="img-responsive" /></li>


					<li><a href="#"><i class="fa fa-desktop "></i>메인</a></li>
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
							<li><a href="list">받은 메일함</a></li>
							<li><a href="write">편지쓰기</a></li>
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






		<!-- /. NAV SIDE  -->
		<div id="page-wrapper">
			<div id="page-inner">








				<div class="row">
					<hr />
					<!-- 	<div class="col-md-12">
						<h2>손동민님,</h2>
						<h5>♡반갑습니당. 오늘하루도 힘내십시오 ♡</h5>
					</div> -->
				</div>
				<!-- /. ROW  -->
				<hr />

				<div class="row">
					<div class="col-md-12">

						<div>




							<div>
								<div style="padding-bottom: 10px">
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
										<th style="width: 300px">To</th>
										<th style="width: 700px">Title</th>
									</tr>


									<c:forEach var="email" items="${email}">

										<tr style="height: 30px" id="tr_inner">
											<td style="width: 50px"><label
												class="mt-checkbox mt-checkbox-single mt-checkbox-outline"><input
													type="checkbox" name="RowCheck"
													class="mail-group-checkbox row-check-box"
													value="${email.num }" /><span></span></label></td>
											<td style="width: 150px">${email.senddate }</td>
											<td style="width: 300px">${email.from_email }</td>
											<td style="width: 700px"><a
												href="detail?num=${email.num }">${email.subject }</a></td>
										</tr>
									</c:forEach>




								</table>

								<table style="height: 50px" id="myTable">

								</table>


						<!-- 		<div id="labelcenter">
									<label for="1"></label> <label class="text" for="1"> </label>


									<div class="center">
										<ul class="pagination">
											<li><a href="#">«</a></li>
											<li><a href="#">1</a></li>
											<li><a class="active" href="#">2</a></li>
											<li><a href="#">3</a></li>
											<li><a href="#">4</a></li>
											<li><a href="#">5</a></li>

											<li><a href="">»</a></li>
										</ul>
									</div>
								</div> -->
								<div class="center">
								<ul class="pagination">
									<c:if test="${pageMaker.hasPrev }">
										<li><a href="${pageMaker.startPageNum -1}" >이전</a></li>
									</c:if>

									<c:forEach begin="${pageMaker.startPageNum }"
										end="${pageMaker.endPageNum }" var="num">
										<li><a href="${num }" class="">${num }</a></li>
									</c:forEach>
										
									<c:if test="${pageMaker.hasNext }">
										<li><a href="${pageMaker.endPageNum +1 }" >다음</a></li>
									</c:if>
								</ul>
								</div>

							</div>
						</div>
					</div>
					<form id="pageForm">
						<input type="hidden" name="num" /> <input type="hidden"
							name="page" value="${pageMaker.criteria.page}" /> <input
							type="hidden" name="perPage"
							value="${pageMaker.criteria.perPage }" />

					</form>
				</div>


			</div>

			<script
				src="<c:url value='../resources/assets/js/jquery-1.10.2.js'/>" /></script>
			<script
				src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
			<script>
				$(document).ready(function() {
					var frm = $("#pageForm");

					$('table tr td a').click(function() {
						event.preventDefault();
						//bno 의 값은 클릭한 this 의 값에 bno가 들어가 있음. 
						var bno = $(this).attr('href');
						//페이지가 바뀌지 않기 때문에 아래랑 조금 다름/ 
						frm.find('[name="num"]').val(bno);
						frm.attr('action', 'detail');
						frm.attr('method', 'get');
						frm.submit();

					});

					//클래스 pageLinks 태그 안의 li 태그 안의 a 태그를 찾아서 click 이벤트를 커스터마이징

					$('.pagination li a').click(function() {
						$(this).css('background-color','gray');
						event.preventDefault(); //기본 이벤트 처리 방식을 방지 (막음)
						//pageForm 안에 있는 name="page"인 요소를 찾아서 이동할 페이지 번호를 세팅
						var targetPage = $(this).attr('href');
						//
						
						frm.find('[name="page"]').val(targetPage);
						//페이징 화면으로 보내기 위한 action 정보
						frm.attr('action', 'send-mailbox');
						//페이징 화면을 처리하는 Comtroller 의 method (요청처리방식)
						frm.attr('method', 'get');
						//form 을 submit 해주면 됨.. 
						frm.submit();
						
						
					});

					function allChk(obj) {
						var chkObj = document.getElementsByName("RowCheck");
						var rowCnt = chkObj.length - 1;
						var check = obj.checked;
						if (check) {
							for (var i = 0; i <= rowCnt; i++) {
								if (chkObj[i].type == "checkbox")
									chkObj[i].checked = true;
							}
						} else {
							for (var i = 0; i <= rowCnt; i++) {
								if (chkObj[i].type == "checkbox") {
									chkObj[i].checked = false;
								}
							}
						}
					}

					function fn_userDel() {

						var checkArr = [];

						$("input[name='RowCheck']:checked").each(function(i) {
							console.log($(this).val());
							checkArr.push($(this).val());
							/* alert("check/"+$(this).val()); */
						});

						if (checkArr.length == 0) {
							alert('선택된 메일이 없어요~');
						} else {

							$.ajax({
								url : 'list',
								type : 'post',
								dataType : 'text',
								data : {
									valueArrTest : checkArr
								},
								success : function() {
									location.reload();

								}
							});
						}
					}
					;
					
			 	$(function() {  
						$("ul.pagination li a").click(function(){
						   	$(this).addclass(active);
						   	
						   	

						  });
						});

				}) 

				/* 	function getSendMailbox(){	
							var url='/ex03/replies/all/';
							$.getJSON(url, function(x){
							console.log("보낸메일함 :"+x.length);
								var list='';
								
								$(x).each(function(){

							
							list+=
							'<tr style="height: 30px" id="tr_header">'
							+'<td style="width: 50px">'+'<label class="mt-checkbox mt-checkbox-single mt-checkbox-outline">'
							+'<input type="checkbox" id="mail-group-checkbox" onclick="allChk(this);"/>'+'<span>'+'</span>'+'</label>'+'</td>'
							+'<th style="width: 150px">'+'Date'+'</th>'
							+'<th style="width: 300px">'+'To'+'</th>'
							+'<th style="width: 700px">'+'Title'+'</th>'
							+'<tr/>'
							+'<tr style="height: 30px" id="tr_inner">'
							+'<td style="width: 50px">'
							+'<label class="mt-checkbox mt-checkbox-single mt-checkbox-outline">'
							
							+'<input type="checkbox" name="RowCheck"  class="mail-group-checkbox row-check-box" value="'
				+this.num+'/>'
							+'<span>'
							+'</span>'
							+'</label>'
							+'</td>'
							+'<td style="width: 150px">'
							+this.senddate
							+'</td>'
							+'<td style="width: 300px">'
							+this.from_email
							+'</td>'
							+'<td style="width: 700px">'
							+'<a href="detail?num='
									+this.num+'>'
									+this.subject
									+'</a>'
									+'</td>';
								});
								$('#myTable').html(list);
					
							});
				
					} */
			</script>

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
