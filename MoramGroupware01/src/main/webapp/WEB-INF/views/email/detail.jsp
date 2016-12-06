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
.div1 {
	display: inline-block;
}

#timesone {
	display: inline-block;
}

#timestwo {
	display: inline-block;
	float: right;
}

li {
	list-style-type: none;
	display: inline-block;
}

#thred {
	
}

#btndiv {
	float: right;
}

ul {
	margin: 0;
	padding: 0;
}
 .button {
    background-color: white; /* Green */
    border: 1px solid #A5DBCE;
    color: black;
    padding: 6px 16px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 10px;
    cursor: pointer;
    float: left;
} 

.button:hover {
    background-color: #A5DBCE;
}

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


					<li><a href="/groupware/main1"><i class="fa fa-desktop "></i>MAIN1</a></li>
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
		<li><a href="list?page=1">받은 메일함</a></li>
						<li><a href="write">편지쓰기</a></li>
						<li><a href="send-mailbox">보낸 메일함</a></li>
						<li><a href="delete-mailbox">휴지통</a></li>
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
		<!-- /. NAV SIDE  -->
		<div id="page-wrapper">
			<div id="page-inner">
				<div class="row">
					<div class="col-md-12">
						<h2>손동민님,</h2>
						<h5>♡반갑습니당. 오늘하루도 힘내십시오 ♡</h5>

					</div>
				</div>

				<div class="row">
					<div class="col-md-12">
						<div id="btndiv">
						
							<button class="button" id="listclick">list</button>
							<button class="button" id="listup">▲</button>
							<button class="button" id="listdown">▼</button>

						</div>
						<div class="row">
						<div class="col-md-12">
							<hr />
							</div>
						</div>

						<div>
					<div class="row">
									<div class="col-md-12">
										<div id="timesone">
											<h3>${emaildetail.subject }</h3>
										</div>
										<div id="timestwo">
											<h5>${emaildetail.senddate }</h5>
										</div>

										<div id="thred">
											<ul>
												<li>보낸사람</li>
												<li>${emaildetail.from_email }</li>
											</ul>
											<ul>
												<li>받는사람</li>
												<li>${emaildetail.to_email }</li>
											</ul>
										</div>

										<hr />
									</div>


								</div>
								<div>${emaildetail.content }</div>
							</div>
						</div>
					</div>

					<%-- 	<a href="">☆</a>
						<h2 class="div1">title ${emaildetail.subject }</h2>
						<h1>${emaildetail.senddate }</h1>
						<div class="div1">
						<a href="list">목록</a>
						<a href="detail?num=${emaildetail.num+1}">위</a>
						<a href="detail?num=${emaildetail.num-1}">아래</a></div>
						<div>보낸사람${emaildetail.from_email }</div>
						<div>${emaildetail.content }</div>
							<form>
			<input type="hidden" name="num" value="${emaildetail.num }">
			</form>
					 --%>
				</div>


			</div>




		</div>

	

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>

$(document).ready(function(){
    $("#listclick").click(function(){
        location="list";
    });
    
    $("#listup").click(function(){
    	
    	location="detail?num=${emaildetail.num+1}";
    	
    });
    
    $("#listdown").click(function(){
    	location="detail?num=${emaildetail.num-1}";
    	
    	
    });
    
});

</script>


	<script src="<c:url value='../resources/assets/js/jquery-1.10.2.js'/>" /></script>
	<!-- BOOTSTRAP SCRIPTS -->
	<script src="<c:url value='../resources/assets/js/bootstrap.min.js'/>" /></script>

	<!-- METISMENU SCRIPTS -->
	<script
		src="<c:url value='../resources/assets/js/jquery.metisMenu.js'/>" /></script>
	<!-- CUSTOM SCRIPTS -->
	<script src="<c:url value='../resources/assets/js/custom.js'/>" /></script>


</body>
</html>
