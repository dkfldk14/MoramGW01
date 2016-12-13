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
  background-color: white;
   color: #a8abad;
   font-weight : 850;
    font-size: 13px;
   border: 1px solid #d6d6d6;
  
    padding: 6px 16px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
   
    cursor: pointer;
    float: left;
} 

.button:hover {
 background-color: #edf8ff;
   color: #3a3939;
   font: bold;
   font-weight: 900;}

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

.buttonforward {
  background-color: white;
      color: #a8abad;
     font-weight : 850;
   border: 1px solid #d6d6d6;
   font-size: 13px;
	
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

<% String type = String.valueOf(session.getAttribute("usertype")); %>
<% String dept = String.valueOf(session.getAttribute("dept")); %>	
<% String profileimage = String.valueOf(session.getAttribute("profileimage")); %>


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
						align="center"   id="profileimage" width="128px" height="128px" /> <class ="img-responsive" /></li>


					<li><a href="/groupware/main1"><i class="fa fa-desktop "></i>MAIN1</a></li>
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

							<li class="childTab"><a href="../email/list?page=1">받은 메일함</a></li>
							<li class="childTab"><a href="../email/write">편지쓰기</a></li>
							<li class="childTab"><a href="../email/send-mailbox">보낸 메일함</a></li>
							<li class="childTab"><a href="../email/delete-mailbox">휴지통</a></li>

				
							

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
							
							<li class="childTab"><a href="/groupware/mypage/my_page">나의 이력관리</a></li>
						</ul></li>
					<li id="admin"><a href="#"><i class="fa fa-bar-chart-o"></i>관리자<span
							class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li class="childTab"><a href="/groupware/member_manage">사용자관리</a></li>
						
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
				
					<div style="display: inline-block;">
									<span style="font-size: 12px; font-weight: 600; padding-left: 5px;"> 보낸메일함</span>
									<span> | </span> 
									<span style="font-size: 12px; font-weight: 700; padding-left: 5px; color: green;">${messages}</span>
									<span> ／ </span> 
									<span style="font-size: 12px; font-weight: 700; padding-left: 5px; color: black;">${messages}</span>
			
									<a href="list?page=1"><img src="../resources/assets/img/refresh4.png"></a>
								</div>
			
					
							
				

				<div class="row">
					<div class="col-md-12">
								
						<div style="margin-top: 20px;">
						<div style="padding-bottom: 10px; display: inline-block;">
								<input type="button" width="47px" height="28" class="button" id="buttonreturn" value="답장"/>
								<input type="submit" width="47px" height="28" value="전달" class="button" id="buttonforward"/>
								
						</div>
			
						<div id="btndiv">
						
							<button class="button" id="listclick">list</button>
							<button class="button" id="listup">▲</button>
							<button class="button" id="listdown">▼</button>

						</div>
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
											<h3>${emaillist.subject }</h3>
										</div>
										<div id="timestwo">
											<h5>${emaillist.senddate }</h5>
										</div>

										<div id="thred">
											<ul>
												<li style="font-weight: 800">보낸사람</li>
												<li>${emaillist.from_email }</li>
											</ul>
											<ul>
												<li style="font-weight: 800">받는사람</li>
												<li>${emaillist.to_email }</li>
											</ul>
										</div>

										<hr />
									</div>
											
									<input type="hidden" name="page" value="${page }" />
							</div>
							<div>${emaillist.content }</div>
						</div>
									<input type="hidden" name="to_email" value=${emaillist.to_email }>
									<input type="hidden" name="from_email" value=${emaillist.from_email }>
									<input type="hidden" name="subject" value=${emaillist.subject }>
										<input type="hidden" name="content" value=${emaillist.content }>
									
									<input type="hidden" name="senddate" value=${emaillist.senddate }>
									<input type="hidden" name="message" value=${message } > 
						
						</div>
			</div>

				
				</div>
			</form>
	
			</div>




		</div>

	

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>

$(document).ready(function(){
	
///////////////팀 별 게시판 권한 부여 ////////////////////
	var dept = "<%=dept%>";
	
	//alert('profileimage : ' + profileimage);
	if(dept != '1팀' && dept != '5팀'){
		$('#authorization1').click(function(){
			alert('당신은 1조가 아닙니다');
			return false;
		});
	}
	
	if(dept != '2팀' && dept != '5팀'){
		$('#authorization2').click(function(){
			alert('당신은 2조가 아닙니다');
			return false;
		});
	}
	
	if(dept != '3팀' && dept != '5팀'){
		$('#authorization3').click(function(){
			alert('당신은 3조가 아닙니다');
			return false;
		});
	}
	///////////////////////////////////////////////////////
	
	
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
    	location="write?to_email=${emaillist.from_email}";
    })
    
  /*   $("#buttonforward").click(function(){
    	alert("호출");
    		
    }) */
    
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
