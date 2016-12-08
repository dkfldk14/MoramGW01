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
.div1{
display: inline-block;

}
</style>
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
                     <li><a href="#">받은 메일함</a></li>
                  
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
                     <li><a href="../groupware/team_one_board/list">시나브로</a></li>
                     <li><a href="../groupware/team_two_board/list">그냥2조</a></li>
                     <li><a href="../groupware/team_three_board/list">성준이네</a></li>
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


<!-- 내가 한 코드 -->

	
	<div id="page-wrapper">
	<div id="page-inner">
	<h1>게시글/수정 삭제 페이지</h1>
	<form id = "frm">
	<input type = "hidden" name ="bno" value="${boardVO.bno }" /><br/>
	Title<br/>
	<input type="text" name="title" value="${boardVO.title }"/> <br/>
	Content<br/>
	<textarea name="content" id="editor" rows="10" cols="100" style="width:766px; height:412px;" required>
	${boardVO.content }</textarea><br/>
	Writer ID <br/>
	<input type = "text" name="userid" value="${boardVO.userid }" readonly/><br/>
	
	<input type = "hidden" name="page" value="${page }"/>
	
	</form>
	
	<button type = "submit" id = "btnUpdate">Update</button>
	<button type = "submit" id = "btnDelete">Delete</button>
	<button type = "button" id = "btnCancel">Cancel</button>
	<button type = "button" id = "btnList">Main Page</button>
	
	<!-- page 정보를 update 요청에 포함시키기 위해서 -->
	<input type="hidden" name="page" value="$[page]"/>
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
	<script src="/groupware/resources/js/HuskyEZCreator.js" charset="utf-8"></script>
	
	<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"> -->
		
	<script>
	$(document).ready(function(){
		//전역 변수
		var obj = [];
		//스마트에디터 프레임생성
		nhn.husky.EZCreator.createInIFrame({
			oAppRef:obj,
			elPlaceHolder:"editor",
			sSkinURI:"/groupware/resources/SmartEditor2Skin.html",
			htParams : {
				//Using toolbar
				bUseToolbar : true,
				//control the size of insert window
				bUseVerticalResizer : true,
				//using mode tab ( Editor/HTML/ TEXT)
				bUserModeChanger : true,
			}
		});
		
		
		$('#btnList').click(function(){
			location = "list?page=${page}";
		});
		
		$('#btnCancel').click(function(){
			location = "detail?bno=${boardVO.bno}&page=${page}";
		});
		
		var frm = $('#frm');
		$('#btnUpdate').click(function(){
			obj.getById["editor"].exec("UPDATE_CONTENTS_FIELD", []);
			frm.attr("action", "update");
			frm.attr("method", "post");
			frm.submit();
		});		
		
		$('#btnDelete').click(function(){
			var result = confirm("delete?");
			
			if(result==true){
				frm.attr("action", "delete");
				frm.attr("method", "post");
				frm.submit();
			}
		});
	});
	</script>
	

</body>
</html>