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
   
<link rel="stylesheet" href="../resources/css/kalendae.css" type="text/css" charset="utf-8">
<link rel="stylesheet" href="../resources/css/metal.css" type="text/css">
<script src="../resources/js/kalendae.js" type="text/javascript" charset="utf-8"></script>
   
   
<style type="text/css">

.tg  {border-collapse:collapse;border-spacing:0;border-color:#ccc;}
.tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 20px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#fff;}
.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 20px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#f0f0f0;}
.tg .tg-jo0b{background-color:#f9f9f9;font-weight:bold;vertical-align:top}
.tg .tg-e3ma{background-color:#efefef;vertical-align:top}
.tg .tg-yzt1{background-color:#efefef;vertical-align:top}
.tg .tg-9hbo{font-weight:bold;vertical-align:top}
.tg .tg-yw4l{vertical-align:top}
.tg .tg-b7b8{background-color:#f9f9f9;vertical-align:top}
	table{
	border-collapse: collapse;
	font-size: 11pt;
	}
	input {
		border: 0px solid #000000;
	}
	td{
		width: 115px;
		border: 1px solid #000000;
		margin: 0px;
	}
	tr{
		margin: 0px;
	}
	.cell1_1{
		background-color: #d9d9d9
	}
	
	.cell1_1 .cell1_x text-left{	
		margin-left: 5px;	
	}
	textarea {
		border: 0px solid #000000;
	}
	
	.text-center{
		text-align: center;
	}
	#cell_sign{
		font-size: 20pt;
		color: #dbe4f2;
	}
	
	.gapRL{
		border-right: 1px solid white; 
		border-left: 1px solid white;
	}
	
	.gqpTB{
		border-top: 1px solid white; 
		border-bottom: 1px solid white;
	}
	.gapTR{
		border-top: 1px solid white;
		border-right: 1px solid white;
	}
	.kalendae .k-days span.closed {
			background:red;
	}
	.k-calendar .k-days span{
      width: 30px;

   }
	/*============================== */
		
	
</style>

</head>
<body>
	<form method="POST">
		<div id="wrapper">
		<div class="navbar navbar-inverse navbar-fixed-top">
			<div class="adjust-nav">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
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
					src="<c:url value="/resources/assets/img/find_user.png"/>"
					align="center" /> <class ="img-responsive" /></li>


				<li><a href="#"><i class="fa fa-desktop "></i>메인</a></li>
				<li><a href="#"><i class="fa fa-edit "></i>전자결재<span
						class="fa arrow"></span></a>
					<ul class="nav nav-second-level">
						<li class="childTab"><a href="/groupware/draft/approval-drafter">나의 결재함</a></li>
						<li class="childTab"><a href="/groupware/draft/approval-finalizer">미결함</a></li>
						<li class="childTab"><a href="/groupware/draft/approval-return">반려함</a></li>
						<li class="childTab"><a href="/groupware/draft/approval-finish">기결함</a></li>
					</ul></li>

				<li><a href="#"><i class="fa fa-table "></i>전자우편<span
						class="fa arrow"></span></a>
					<ul class="nav nav-second-level">
							<li class="childTab"><a href="email/list?page=1">받은 메일함</a></li>
							<li class="childTab"><a href="email/write">편지쓰기</a></li>
							<li class="childTab"><a href="email/send-mailbox">보낸 메일함</a></li>
							<li class="childTab"><a href="email/delete-mailbox">휴지통</a></li>
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
							<li class="childTab"><a href="/groupware/team_one_board/list">시나브로</a></li>
							<li class="childTab"><a href="/groupware/team_two_board/list">그냥2조</a></li>
							<li class="childTab"><a href="/groupware/team_three_board/list">성준이네</a></li>
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
							<li class="childTab"><a href="/groupware/member_update">개인정보수정</a></li>
							<li class="childTab"><a href="#">나의 이력서</a></li>
							<li class="childTab"><a href="/groupware/my_page">나의 이력관리</a></li>
					</ul></li>
				<li><a href="#"><i class="fa fa-bar-chart-o"></i>관리자<span
						class="fa arrow"></span></a>
					<ul class="nav nav-second-level">
						<li class="childTab"><a href="#">사용자관리</a></li>
						<li class="childTab"><a href="#">권한관리</a></li>
						<li class="childTab"><a href="#">문서함관리</a></li>

						<li class="childTab"><a href="#">결재함관리</a></li>
					</ul></li>

			</ul>

		</div>

		</nav>
</div>
		<div id="page-wrapper">
			<div id="page-inner">
	<br/>
	<br/>
	<br/>
	<br/>
	<table>
		<tr>
			<td class="cell1_1">문서폼</td>
 			<td class="cell1_1" >		
 			<select name="문서폼" class = "cell1_1" style = "width: 115px; height: 30px;" id = "ApprovalType" >
				<option value="none" disabled selected>-</option>
				<option value="C">일반기안서</option>
				<option value="H">휴일신청서</option>
				<option value="L">지각신청서</option>
				</select>
			</td>		<!--  목록 상자(drop-down list) -->
	
 			<td colspan="1" class="gapRL" style="border-top: 1px solid white; border-bottom: 1px solid white;"></td>
 			<td colspan="1" class="gapRL" style="border-top: 1px solid white; border-bottom: 1px solid white;"></td>
 			<td colspan="1" style="border-top: 1px solid white; border-bottom: 1px solid white; border-left: 1px solid white;"></td>
			<td class="text-center" style="background-color: #cccccc; font-weight: bold">
				<button style="width:115px; height: 30px; font-weight: bold "type="submit" name="draft">
				상신
				</button>
			</td>
 			<td class="text-center" style="background-color: #efefef; font-weight: bold">
 				<button style="width:115px; height: 30px; font-weight: bold "type="submit" name="cancel" >
				취소
				</button>
 			</td>
 			<td class="text-center" style="background-color: #efefef; font-weight: bold">
 				<button style="width:115px; height: 30px; font-weight: bold "type="submit" name="save" >
				저장
				</button>
 			</td>
		</tr>
		<tr>
 			<td colspan="5" class="gapRL" style = "margin: 200px"></td>
		</tr>
		<tr>
 			<td class="cell1_x" rowspan="1">문서번호</td>
 			<td class="text-center" colspan="4" rowspan="2" style=" font-weight: bold; height: 50px;">근 태 신 청 서</td>
 			<td colspan="2" rowspan="2" style="border-top: 1px solid white; border-right: 1px solid white;"><!--2*6 셀--></td>
 			<!-- <td id="text-center" style="background-color: #cccccc; font-weight: bold">저장</td>
 			<td id="text-center" style="background-color: #efefef; font-weight: bold">취소</td>
 			<td id="text-center" style="background-color: #efefef; font-weight: bold">상신</td> -->
		</tr>
		<tr>
 			<td class="text-center" class="cell1_x" style = "border-right: 0px; border-top: 0px; border-bottom: 0px;">
			<input type="text" readonly="readonly" name = "approvalno" id = "code"/>
			</td>
		</tr>
		<tr>
 			<td class="text-center" colspan="3">구분</td>
 			<td class="text-center">직급</td>
 			<td class="text-center">직급</td>
 			<td class="text-center">직급</td>
 			<td class="text-center">직급</td>
 			<td class="text-center">직급</td>
		</tr>
		<tr>
 			<td class="cell1_x" style="border: 0px solid white; border-left: 1px solid black;">이름</td>
 			<td colspan="2">
 				<input type = "text" name="name" value="${ApprovalVO.name }" style = "width: 228px; background-color: #ffffff;" readonly="readonly"/>
 			</td>
 			<td rowspan="4" class="text-center" style="font-size:27pt; color: #d9d9d9" id="getfinal_id1"></td>
 			<input type="hidden" style="width:30px" name = "final_id1" id ="text1"/>
 			<td rowspan="4" class="text-center" style="font-size:27pt; color: #d9d9d9" id="getfinal_id2"></td>
 			<input type="hidden" style="width:30px" name = "final_id2" id ="text2"/>
 			<td rowspan="4" class="text-center" style="font-size:27pt; color: #d9d9d9" id="getfinal_id3"></td>
			<input type="hidden" style="width:30px" name = "final_id3" id ="text3"/>
 			<td rowspan="4" class="text-center" style="font-size:27pt; color: #d9d9d9" id="getfinal_id4"></td>
 			<input type="hidden" style="width:30px" name = "final_id4" id ="text4"/>
 			<td rowspan="4" class="text-center" style="font-size:27pt; color: #d9d9d9" id="getfinal_id5"></td>
			<input type="hidden" style="width:30px" name = "final_id5" id ="text5"/>
		</tr>
		<tr>
 			<td class="cell1_x">소속</td>
 			<td colspan="2" id="dept" >
	 			<input type = "text"  name="dept" value="${ApprovalVO.dept }" style = "width: 228px; background-color: #ffffff;" readonly="readonly"/>
 			</td>
		</tr>
		<tr>
 			<td class="cell1_x">구분</td>
 			<td colspan="2"><input style="width: 227.5px;"type="text" id = "code2" name = "approvalname" readonly="readonly" /></td>
		</tr>
		<tr>
 			<td class="cell1_x">사용일자</td>
 			<td colspan="2" ><input type="text" name="usedatestart" class="auto-kal"  data-kal="dayOutOfMonthClickable: true" style="width: 102px;">&nbsp;~&nbsp;&nbsp;&nbsp;<input type="text" name="usedateend" class="auto-kal" data-kal="dayOutOfMonthClickable: true" style="width: 92px; "></td>
		</tr>
		<tr>
 			<td>제출일자</td>
 			<td colspan="2"></td>
 			<td class="text-center">사원이름</td>
 			<td class="text-center">사원이름</td>
 			<td class="text-center">사원이름</td>
 			<td class="text-center">사원이름</td>
 			<td class="text-center">사원이름</td>
		</tr>
		<tr>
 			<td colspan="2" style="height: 40px;">TITLE</td>
 			<td colspan="6"><input type = "text" name = "title" style = " width: 705px; height: 35px; border-color: #000000; border-width: 0px;" /></td>
		</tr>
		<tr>
 			<td style="height: 345px; " colspan="8"><textarea rows="" cols="100" style = "height: 345px; width: 1000px; resize:none; " name="content"></textarea></td>
		</tr>
		
	</table>
	
	<table id="grid-table-1">
             </table>
            <hr/>
            
		</div>
	</div>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script>
    	$('#ApprovalType').change(function() {
            // 드롭다운리스트에서 선택된 값을 텍스트박스에 출력
            var selectedText =
                // $("#lstFavorites option:selected").text();
                // $("option:selected").text();
                $(":selected").text();
            var text = selectedText;
            var text2 = "";
            if (text == "일반기안서") {
            	text2 = "C"
            } else if (text == "휴일신청서") {
            	text2 = "H"
            } else if (text == "지각신청서") {
            	text2 = "L"
            }
              $("#code").val(text2);
              $("#code2").val(text);
             
        });
    	
   		$('#getfinal_id1').click(function() {
       		window.open('popup-list', '', 'left=200, top=200, width=640, height=480, scrollbars=no, status=no, resizable=no, fullscreen=no, channelmode=no');
       	});
    	
    	
    	
   /*  	$('#ApprovalType').click(function() {
    		var text = $('#ApprovalType').val();
    		$('#code').html(text)
    	}) */
    </script>
    

	<script src="<c:url value='/resources/assets/js/jquery-1.10.2.js'/>" /></script>
	<!-- BOOTSTRAP SCRIPTS -->
	<script src="<c:url value='/resources/assets/js/bootstrap.min.js'/>" /></script>

	<!-- METISMENU SCRIPTS -->
	<script
		src="<c:url value='/resources/assets/js/jquery.metisMenu.js'/>" /></script>
	<!-- CUSTOM SCRIPTS -->
	<script src="<c:url value='/resources/assets/js/custom.js'/>" /></script>
    
    </form>
	</body>
</html>