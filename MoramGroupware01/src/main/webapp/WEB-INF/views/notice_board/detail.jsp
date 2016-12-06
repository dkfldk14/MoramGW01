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
<style>
.replier{
	font-style: italic;
}

.rtext{
	font-weight: bold;
}

.regdate{
	font-style: italic;
	color:gray;
}

#modify{
	width:300px; height:100px;
	backgroud-color:lightgray;
	position:absolute;
	top:30%; left:30%;
	display:none;
}
.div1{
display: inline-block;

}

</style>
<title>Insert title here</title>
</head>
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


               <li><a href="../"><i class="fa fa-desktop "></i>메인</a></li>
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
                  
                     <li><a href="#">편지쓰기</a></li>
                     <li><a href="#">보낸 메일함</a></li>
                     <li><a href="#">휴지통</a></li>
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


<!-- 내가한 코드 -->
<div id="page-wrapper">
	<div id="page-inner">
	<h1>detail</h1>
	
	<form action = "update" id="frm">
		number of content<br/>
		<input type="text" value="${boardVO.bno }" name="bno" id="bno_mod" readonly/><br/>
		Title<br/>
		<input type="text" value="${boardVO.title }" name="title" readonly/><br/>
		Content<br/>
		<!-- <?=htmlspecialchars_decode($test['b_contents'])?> -->
		<textarea id="editor" name="content" rows="10" cols="100" style="width:766px; height:412px;">
		${boardVO.content}
		</textarea><br/>
		
		Writer<br/>
		<input type = "text" value="${boardVO.userid}" name="userid" readonly/><br/>
		Writer date<br/>
		<fmt:formatDate value="${boardVO.regdate }"
		pattern="yyyy-MM-dd HH:mm:ss" var="dateString"/>
		<input type="text" value="${dateString }" readonly /> <br/>
		
		<button type="button" id="btnList">Go to List</button>
		<button type="submit" id="updatebutton">Update</button>
		<input type="hidden" name="page" value="${page }" />
			
	</form>
	<br/>
	
</div>
</div>
	
	
	
	
	<script src="<c:url value='../resources/assets/js/jquery-1.10.2.js'/>" /></script>
   <!-- BOOTSTRAP SCRIPTS -->
   <script src="<c:url value='../resources/assets/js/bootstrap.min.js'/>" /></script>

   <!-- METISMENU SCRIPTS -->
   <script src="<c:url value='../resources/assets/js/jquery.metisMenu.js'/>" /></script>
   <!-- CUSTOM SCRIPTS -->
   <script src="<c:url value='../resources/assets/js/custom.js'/>" /></script>	
	
	
	<script src="../resources/js/HuskyEZCreator.js" charset="utf-8"></script>
	<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
	
	<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script> -->
	<script>
		$(document).ready(function(){
			
			var obj = [];
			//스마트에디터 프레임생성
			nhn.husky.EZCreator.createInIFrame({
				oAppRef:obj,
				elPlaceHolder:"editor",
				sSkinURI:"../resources/SmartEditor2Skin.html",
				htParams : {
					bUseToolbar:false,
					bUseVerticalResizer : true,
					bUseModeChanger:false,
				
				},
			 	
			});
			
						
			$("#updatebutton").click(function(){
				obj.getById["editor"].exec("UPDATE_CONTENTS_FIELD", []);
				
				$("#frm").submit();
			});
			
			
			$('#btnList').click(function(){
				location="list?page=${page}";
			});
			
			var bno = ${boardVO.bno};
			
		
			
		});	
	
	
	</script>




</body>
</html>