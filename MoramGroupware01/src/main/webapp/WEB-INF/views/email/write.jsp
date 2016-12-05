<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
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
body, td {
	font-size: 13px
}

#disableDiv {
	position: absolute;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	z-index: 995;
	background-color: #EEEEEE;
	filter: Alpha(opacity = 50);
	opacity: 0.6;
	-moz-opaciry: 0.8
}

#loadingDiv {
	position: absolute;
	left: 400;
	top: 100;
	 margin:150px 100px 0px 400px;
	width: 210px;
	height: 110px;
	z-index: 999;
	background-color: #FFFFFF;
	border: 2px solid #a8bf73;
}

;
.div1 {
	display: inline-block;
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

#send {
	background-color: #fbffe0;
	color: black;
	border: 2px solid #a8bf73;
	font-size: 12px;
}

#send:hover {
	background-color: #a8bf73;
	color: white;
}

#preview {
	background-color: white;
	color: black;
	border: 2px solid #00836d;
	font-size: 12px;
}

#preview:hover {
	background-color: #00836d;
	color: white;
}

#saveas {
	background-color: white;
	color: black;
	border: 2px solid #00836d;
	font-size: 12px;
}

#saveas:hover {
	background-color: #00836d;
	color: white;
}

.emailli {
	list-style-type: none;
	display: inline-block;
	margin-bottom: 5px;
}

.emailul {
	display: inline;
	width: 50px;
	text-align: center;
}

.emailli_in {
	width: 800px;
	list-style-type: none;
	display: inline-block;
}

.style1 {
	width: 500px;
	margin: auto;
	border: 3px solid #73AD21;
}

#subjectin {
	padding-right: 40px;
}

table-style {
	border-collapse: collapse;
	width: 100%;
}

th, td {
	padding: 4px;
	text-align: left;
	border-bottom: 1px solid white;
}

#adresslist {
	background-color: #a60b53; /* Green */
	border: none;
	color: white;
	padding: 7px 15px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 10px;
	margin: 4px 2px;
	-webkit-transition-duration: 0.4s; /* Safari */
	transition-duration: 0.4s;
	cursor: pointer;
}

* {
	margin: 0;
	padding: 0;
}

/* body {
  margin: 100px;
} */

/* .pop-layer .pop-container {
  padding: 20px 25px;
}

.pop-layer p.ctxt {
  color: #666;
  line-height: 25px;
}

.pop-layer .btn-r {
  width: 100%;
  margin: 10px 0 20px;
  padding-top: 10px;
  border-top: 1px solid #DDD;
  text-align: right;
}

.pop-layer {
  display: none;
  position: absolute;
  top: 50%;
  left: 50%;
  width: 410px;
  height: auto;
  background-color: #fff;
  border: 5px solid #3571B5;
  z-index: 10;
}

.dim-layer {
  display: none;
  position: fixed;
  _position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  z-index: 100;
}

.dim-layer .dimBg {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background: #000;
  opacity: .5;
  filter: alpha(opacity=50);
}

.dim-layer .pop-layer {
  display: block;
}

a.btn-layerClose {
  display: inline-block;
  height: 25px;
  padding: 0 14px 0;
  border: 1px solid #304a8a;
  background-color: #3f5a9d;
  font-size: 13px;
  color: #fff;
  line-height: 25px;
}

a.btn-layerClose:hover {
  border: 1px solid #091940;
  background-color: #1f326a;
  color: #fff;
}
 */
</style>
</head>
<body>
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
						<li><a href="send-mailbox">보낸 메일함</a></li>
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

					</ul>

		</div>

		</nav>


		<!-- 내가 한 코드 -->



		<div id="page-wrapper">


			<div id="page-inner">


				<form id="emailaction" method="post" action="email-doing">
					<div class="row">

						<div class="col-md-12">
							<button type="submit" id="send" onclick="ajaxCall">보내기</button>
							<button type="submit" id="preview">미리보기</button>
							<button type="submit" id="saveas">임시보관함</button>
						</div>
					</div>
					<hr />
					<div class="row">
						<div class="col-md-12">
							<table class="table-style">
								<tr class="trstyle">
									<th style="width: 80px" align="center">보낸사람</th>
									<td class="tdstyle" colspan="2"><input type="text"
										style="width: 950px" value="${name }<${gwemail }>"></input></td>

								</tr>
								<tr class="trstyle">
									<th style="width: 80px" align="center">받는사람</th>
									<td class="tdstyle"><input type="text"
										style="width: 860px" name="to_email"></input></td>
									<td><button>주소록</button></td>

								</tr>
								<tr class="trstyle">
									<th style="width: 80px" align="center">제목</th>
									<td class="tdstyle" colspan="2"><input type="text"
										style="width: 950px" name="subject"></input></td>
								</tr>
								<tr class="trstyle">
									<th style="width: 80px" align="center">파일첨부</th>
									<td colspan="2"></td>
								</tr>
							</table>
							<div id="loadingDiv" class="loadingDiv" style="display: none" >
							<br /> <img src="http://couponsedge.com/img/processing.gif" />
						</div>
							<hr />

							

						<div class="col-md-12">



							<form>
								<textarea id="editor" rows="10" cols="100"
									style="width: 1030px; height: 412px;" name="content">
										</textarea>
								<input type="hidden" name="from_email" value="${gwemail }">
								<br />
							</form>
						</div>


					</div>
			</div>

			</form>
			<script></script>

			<!--// content-->
		</div>
	</div>
	</div>







	<script src="<c:url value='../resources/assets/js/jquery-1.10.2.js'/>" /></script>
	<!-- BOOTSTRAP SCRIPTS -->
	<script src="<c:url value='../resources/assets/js/bootstrap.min.js'/>" /></script>

	<!-- METISMENU SCRIPTS -->
	<script
		src="<c:url value='../resources/assets/js/jquery.metisMenu.js'/>" /></script>
	<!-- CUSTOM SCRIPTS -->
	<script src="<c:url value='../resources/assets/js/custom.js'/>" /></script>

	<!-- jQuery CDN -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
		<dl>
			<dt class="pop-header">
				주소록<a href="#none" class="btnp-close">팝업창 닫힘</a>
			</dt>
			<dd class="pop-box">
				<div class="pop-cont">
					<div class="pop-msg">
						<table>
							<tr>
								<th><input type="checkbox" name="checkb" id="ch"></th>
								<th>이름</th>
								<th>E-mail</th>
								<th>소속</th>
							</tr>



							<tr></tr>

						</table>
					</div>
				</div>

				<div class="pop-noti">
					<div>
						<input type="checkbox" name="" id="daychk01" /> <label
							for="daychk01">1주일간 보지 않기</label>
					</div>
					<form>
						<input type="checkbox" />dd
					</form>
				</div>
			</dd>
		</dl>
		-->
		<div id="disableDiv" class="disableDiv" style="display: none"></div>

		<script src="http://code.jquery.com/jquery-latest.js"></script>


		<script>

/* function wrapWindowByMask(){
	//화면의 높이와 너비를 구한다.
	var maskHeight = $(document).height();  
	var maskWidth = $(window).width();

	//마스크의 높이와 너비를 화면 것으로 만들어 전체 화면을 채운다.
	$('#loading').css({'width':maskWidth,'height':maskHeight});  
//마스크의 투명도 처리
      $('loading').fadeTo("slow",0.8);    
}
 */

$(document).ready(function(){
	


$('#send').click(function () {
    // add loading image to div
    $('#loadingDiv').show();
    var  disableDivObj = document.getElementById("disableDiv");
    disableDivObj.style.display = "";
    var  loadingDiv = document.getElementById("loadingDiv");
    loadingDiv.style.display = "";
   
    
 /*   // $('#loading').html('<img src="http://couponsedge.com/img/processing.gif">'); */
    
    // run ajax request
    $.ajax({
        type: "GET",
        dataType: "json",
        url: "http://localhost:8181/groupware/email/write",
        success: function (d) {
            // replace div's content with returned data
            $('#loading').html(d);
        }
    });
});

});
</script>
</body>
</html>