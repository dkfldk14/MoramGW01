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
                  align="center" /> <class ="img-responsive" /></li>


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
                     <li id = "authorization2"><a href="/../groupware/team_two_board/list">그냥2조</a></li>
                     <li id = "authorization3"><a href="/../groupware/team_three_board/list">성준이네</a></li>
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
	<h1>면접 후기 게시판</h1>
	
	
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
				<input style="height: 25px;" type="text" value="[후기] ${boardVO.title }" name="title" readonly/>
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
	<h4>댓글 목록</h4>
	
	<!-- ---------------------------- -->
	
	<table id="commentTable" class="table table-condensed"></table>
                    <table class="table table-condensed">
                        <tr>
                            <td>
                                <span class="form-inline" role="form">
                                    <p>
                                        <div class="form-group" id ="form-group">
                                            <input type="text" value="${name }" readonly id="replier" name="commentParentName" class="form-control col-lg-2" data-rule-required="true" placeholder="이름" maxlength="10">
                                        </div>
                                        <div class="form-group">
                                        <!-- 댓글 번호 넣고 히든 -->
                                            
                                        </div>
                                        <div class="form-group">
                                            <button type="button" id="btnCreate" name="commentParentSubmit" class="btn btn-default">확인</button>
                                        </div>
                                    </p>
                                        <textarea id="rtext" class="form-control col-lg-12" style="width:100%" rows="4"></textarea>
                                </span>
                            </td>
                        </tr>
                    </table>
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
	
	
	
	
	
		<!-- 팝업 -->
	<div id="login-box" class="login-popup" style="display: none; width: 238px;">
        <a class="close" ><img src="../resources/assets/img/index.png" id="btn_cancel" class="btn_close" title="Close Window" alt="Close"></a>
          <form method="post" class="signin" action="#">
                <fieldset class="textbox">
            	<label class="username">
                <span>댓글 번호</span>
                <input id="rno_mod" name="username" value="" type="text" autocomplete="on" placeholder="rno_mod" readonly="readonly">
                </label>
                
                <label class="password">
                <span>댓글 내용</span>
                <input id="rtext_mod" name="password" value="" type="text" placeholder="rtext_mod">
                </label>
                
                <button id="btn_update" class="submit button" type="button">수정</button>
                <button id="btn_delete" class="submit button" type="button">삭제</button>
                
                </fieldset>
          </form>
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
			
///////////////팀 별 게시판 권한 부여 ////////////////////
			var dept = '<%=dept%>';
			
			//alert('profileimage : ' + profileimage);
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
			
						
			$("#updatebutton").click(function(){
				obj.getById["editor"].exec("UPDATE_CONTENTS_FIELD", []);
				
				$("#frm").submit();
			});
			
			
			$('#btnList').click(function(){
				location="list?page=${page}";
			});
			
			var bno = ${boardVO.bno};
			
			getAllReplies();
			
			function getAllReplies(){
				//$.getJSON(url, data, callback):HTTP GET 요청을 사용해서 JSON 데이터를 로드하는 Ajax 함수
				//url(필수 파라미터):요청을 보내는 주소
				//data(선택 파라미터) : 요청과 함께 서버로 보내는 데이터
				//callback(선택 파라미터) : 요청이 성공했을 때 호출되는 콜백 함수
				
				var url = '/groupware/interview_replies/all/'+bno;
				$.getJSON(url, function(data){
					console.log("댓글 개수 : " + data.length);

					var list = '';
					var username = '';
					var name = "${name}";
					
					var num = 1;
					//data의 개수 만큼 function의 내용을 반복해서 수행
					$(data).each(function(){
						
						var date = new Date(this.regdate);
						var dateString = date.toLocaleDateString();
						console.log(dateString);
					
						var profileimage = this.profileimage;
						console.log(dateString);
					
						num+=1;
						username=this.replier;
						if(this.profileimage===null||this.profileimage==="null"||this.profileimage===''){
							profileimage='http://findicons.com/files/icons/1786/oxygen_refit/128/stock_people.png';
						}

							if(username == name){
						list += '<tr class ="reply_list" data-rno="'+this.rno+'" id="replies" name="commentParentCode">'+
						'<th width="60px" height="60px"><img src="'+profileimage+'" width="60px" height="60px"/></th>'+
                        '<td colspan=2>'+
                            '<strong class="replier">'+this.replier+'</strong> &nbsp; <a style="display:none;">'+this.rno+'</a> <a style="cursor:pointer;" name="pAdd"id="'+num+'">수정/삭제</a> <p>'+this.rtext+'</p>'+
                        '</td>'+
                    '</tr>';
							
							}else{
									
								list += 
								'<tr class ="reply_list" data-rno="'+this.rno+'" id="replies" name="commentParentCode">'+
								'<th width="60px" height="60px"><img src="'+profileimage+'" width="60px" height="60px"/></th>'+
		                        '<td colspan=2>'
		                        	+'<strong class="replier">'+this.replier+'</strong> &nbsp; <a style="display:none;">'+this.rno+'</a> <p>'+this.rtext+'</p>'+
		                        '</td>'+
		                    '</tr>';
							
							}
					});
				
					$('#commentTable').html(list);
				});			
				
			};
			
			$('#btnCreate').click(function(){
				var rtextString = $('#rtext').val();
				var replierString = $('#replier').val();
				
				$.ajax({
					type: 'post',
					url: '/groupware/interview_replies',
					headers: {
						'Content-Type': 'application/json',
						'X-HTTP-Method-Override': 'POST'
					},
					
					//JSON.stringify : JavaScript 객체를 JSON 문자열로 변환
					data: JSON.stringify({
						bno:bno,
						rtext:rtextString,
						replier:replierString
					}),
					success:function(result){
						if(result==1){
							alert("success");
						}
						$('#rtext').val("");
						getAllReplies();
					}
				});
				
			});//end btnCreate		
			
			$('#commentTable').on('click', 'td a', function(){
				
				//////////////////////////////////////////////
				var id = $(this).attr("id");
				var a = $('#'+id).offset().top;
				var b = $('#'+id).offset().left;
				
				alert(id +" | "+ a + " | " +b);
				
				var c = '';
				var d = '';
				
				c=$('#'+id).css('height');
				d=$('#'+id).css('width');
				
				c=c.substring(0, 2);
				d=d.substring(0, 2);
				
				c=Number(c);
				d=Number(d);
				
				a= a;
				b= b+d;
				
				$('#login-box').css("top", a);
				$('#login-box').css("left", b);
				//////////////////////////////////////////////
				
				$('#login-box').show();
				
				var rep=$(this).parent();
				var	reply=rep.parent();
				
				var rno = $(reply).attr('data-rno');
				var text = $(rep).children('p').text();
				
				
				$('#rno_mod').val(rno);
				$('#rtext_mod').val(text);			
			});
			
			$('div a #btn_cancel').click(function(){
				$('#login-box').css("display", "none");
				$('#login-box').hide();
			
			});
			
			$('#btn_delete').click(function(){
				var check = confirm('delete?');
				
				if(check == true){
					var rno = $('#rno_mod').val();
					var bno = $('#bno_mod').val();
					$.ajax({
						type : 'delete',
						url : '/groupware/interview_replies/'+rno,
						headers : {
							'Content-Type' : 'application/json',
							'X-HTTP-Method-Override' : 'DELETE'
						},
						 data : JSON.stringify({
							bno:bno
						}),
						success:function(result){
							if(result == 'success'){
								alert(rno + 'deleted');
								$('#login-box').hide();
								getAllReplies();
							}
						}
					});
				}
			});
			
			$('#btn_update').click(function(){
				var rno = $('#rno_mod').val();
				var text = $('#rtext_mod').val();
				$.ajax({
					type : 'put',
					url : '/groupware/interview_replies/'+rno,
					headers:{
						'Content-Type' : 'application/json',
						'X-HTTP-Method-Override' : 'PUT'
					},
					data : JSON.stringify({
						rno:rno,
						rtext:text
					}),
					success:function(result){
						if(result == 'success'){
							alert(rno + 'updated');
							$('#login-box').hide();
							getAllReplies();
						}
					}
					
				});
			});
			
			
		});	
	
	
	</script>




</body>
</html>