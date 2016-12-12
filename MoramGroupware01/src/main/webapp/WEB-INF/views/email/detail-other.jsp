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
			
				<form action="/groupware/email/write" id="fowardemail" method="post">
			
				<div class="row">
				
			
					<div class="col-md-12">
					
							<div style="padding-bottom: 10px;">
								<input type="button" class="buttonreturn" id="buttonreturn" value="답장"/>
								<input type="submit" value="전달" class="buttonforward" id="buttonforward"/>
								
							</div>
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
											
									<input type="hidden" name="page" value="${page }" />
							</div>
							<div>${emaildetail.content }</div>
						</div>
									<input type="hidden" name="to_email" value=${emaildetail.to_email }>
									<input type="hidden" name="from_email" value=${emaildetail.from_email }>
									<input type="hidden" name="subject" value=${emaildetail.subject }>
										<input type="hidden" name="content" value=${emaildetail.content }>
									
									<input type="hidden" name="senddate" value=${emaildetail.senddate }>
									
						
						</div>
			</div>

				
				</div>
			</form>
	
			</div>




		</div>

	

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>

$(document).ready(function(){
    $("#listclick").click(function(){
        location="send-mailbox";
    });
    
    $("#listup").click(function(){
    	
    	location="detail?num=${emaildetail.num+1}";
    	
    });
    
    $("#listdown").click(function(){
    	location="detail?num=${emaildetail.num-1}";
    	
    	
    });
    
    $("#buttonreturn").click(function(){
    	location="write?to_email=${emaildetail.from_email}";
    })
    
  /*   $("#buttonforward").click(function(){
    	alert("호출");
    		
    }) */
    
    
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
