f<%@ page language="java" contentType="text/html; charset=UTF-8"
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

<link href="<c:url value="/resources/assets/css/reply.css"/>"   
  rel="stylesheet" />


<style>

.reply{
border-bottom:1px dotted;
list-style-type: none;
border-collapse: collapse;
margin-left: -30px;

}



.div1{
display: inline-block;

}
tbody tr td input, tbody tr th input{
	border:none;
	border-right:0px; 
	border-top:0px; 
	boder-left:0px; 
	boder-bottom:0px;
}

tr{
border:1px solid #ddd; 
border-left: 1px solid white;
border-right: 1px solid white;
}
</style>



</style>
<title>Insert title here</title>
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
                  align="center"   id="profileimage" width="128px" height="128px" /> <class ="img-responsive" /></li>


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
                     <li><a href="#">주소록</a></li>
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
                     <li id = "authorization2"><a href="/../groupware/team_one_board/list">그냥2조</a></li>
                     <li id = "authorization3"><a href="/../groupware/team_one_board/list">성준이네</a></li>
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



<!-- 내가한 코드 -->
<div id="page-wrapper">
	<div id="page-inner">
	<h1>공지 게시판</h1>
	
	
	<!-- 수정 -->
	<form action = "update" id="frm">
	
	<!-- bno -->
	<input type="hidden" value="${boardVO.bno }" name="bno" id="bno_mod" readonly/>
	
	<!-- Writer date -->
	<fmt:formatDate value="${boardVO.regdate }"
		pattern="yyyy-MM-dd HH:mm:ss" var="dateString"/>
	<input style="font-style: gray;" type="hidden" value="${dateString }" readonly /> 
	<br/>
	
	<table class="table table-condensed">
	<tbody>
		<tr>
			<th style="border-bottom: 2px solid #ddd; border-top: 2px solid #ddd; ">
				<!-- title -->
				<input style="height: 25px;" type="text" value="[공지] ${boardVO.title }" name="title" readonly/>
			</th>	
		</tr>
		<tr>
			<td>
				<!-- Writer -->
				<input type = "text" value="글쓴이 : ${boardVO.userid}" name="userid" style="font-size:13;" readonly/> 
				<input type="text" value="작성일 : ${dateString }" style="font-size:13; float: right; width: 190px;" readonly="readonly"/>
			</td>
		</tr>
		
		<!-- <?=htmlspecialchars_decode($test['b_contents'])?> -->
		<tr>
			<td>
				<!-- content -->
				<div style="margin-bottom: 50px; margin-top: 50px;">${boardVO.content}</div>
			</td>
		</tr>


	</tbody>
	</table>
		
	<br/>
	
                    <table class="table table-condensed">
                        <thead>
                            <tr>
                                <td>
                                    <span style='float:right'>
                                        <button type="button" id="btnList" class="btn btn-default">목록</button>
                                        <c:if test="${boardVO.userid eq id }">
                                        <button type="submit" id="updatebutton" class="btn btn-default">수정</button>
                                     	</c:if> 
                                        <!-- <button type="button" id="delete" class="btn btn-default">삭제</button> -->
                                        <!-- <button type="button" id="write" class="btn btn-default">글쓰기</button> -->
                                    	<input type="hidden" name="page" value="${page }" />
                                    </span>
                                </td>
                            </tr>
                        </thead>
                    </table>
	
				
	<hr/>

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
	
	<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
	
	<script>
		$(document).ready(function(){
			$("#updatebutton").click(function(){
				obj.getById["editor"].exec("UPDATE_CONTENTS_FIELD", []);
				
				$("#frm").submit();
			});
			
///////////////팀 별 게시판 권한 부여 ////////////////////

			var dept = "<%=dept%>";
			
			
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
			
			
			$('#btnList').click(function(){
				location="list?page=${page}";
			});
			
			var bno = ${boardVO.bno};
			
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