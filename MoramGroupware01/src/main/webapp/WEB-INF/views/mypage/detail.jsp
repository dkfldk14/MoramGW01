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
	
<link rel="stylesheet"
	href='<c:url value="/resources/assets/css/font-awesome.min.css"/>'
	media="screen" title="no title" charset="utf-8">
<!-- Custom style -->
<link rel="stylesheet"
	href='<c:url value="/resources/assets/css/style.css"/>' media="screen"
	title="no title" charset="utf-8">	
<link href='<c:url value="/resources/assets/css/bootstrap.min.css"/>'
	rel="stylesheet" />	
	
	<style type="text/css">
	.form-group{
	 	
	}
	</style>
	
</head>
<body>
<% String type = String.valueOf(session.getAttribute("usertype")); %>
	<%-- <% String id = String.valueOf(session.getAttribute("login_id")); %> --%>
	<div id="login_id" data-id=${id } style="display: hidden;"></div>
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
						src="<c:url value="resources/assets/img/find_user.png"/>"
						align="center" /> <class ="img-responsive" /></li>


					<li id="test" class="current"><a href="/groupware/main1"><i class="fa fa-desktop "></i>MAIN PAGE</a></li>
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
							<li><a href="/groupware/email/list">받은 메일함</a></li>
                  
                     <li><a href="/groupware/email/write">편지쓰기</a></li>
                     <li><a href="/groupware/email/send-mailbox">보낸 메일함</a></li>
                     <li><a href="/groupware/email/delete-mailbox">휴지통</a></li>
                     <li><a href="#">주소록</a></li>
							

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
							<li class="childTab"><a href="#">나의 이력서</a></li>
							<li class="childTab"><a href="/groupware/mypage/my_page">나의 이력관리</a></li>
						</ul></li>
					<li id="admin"><a href="#"><i class="fa fa-bar-chart-o"></i>관리자<span
							class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li class="childTab"><a href="/groupware/member_manage">사용자관리</a></li>
							<li class="childTab"><a href="#">권한관리</a></li>
							<li class="childTab"><a href="#">문서함관리</a></li>
							<li class="childTab"><a href="#">결재함관리</a></li>
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
			<article class="container">
		<div class="page-header" style="width: 60%;">
			<h1>개인 정보 수정</h1>
		</div>
		<div class="col-md-6 col-md-offset-3">
			<form id="form">
				<div class="form-group">
					<label for="InputEmail">아이디</label><br> <input type="text"
						class="form-control" id="UserId"
						value="${MemberVO.id }" readonly><br>
					<p class="help-block" id="id_result"></p>
				</div>
				<div class="form-group">
					<label for="InputPassword1">비밀번호</label><br> <input
						type="password" class="form-control" id="InputPassword1"
						value="${MemberVO.pwd }"><br>
					<p class="help-block" id="pw"></p>
				</div>
				<div class="form-group">
					<label for="InputPassword2">비밀번호 확인</label><br> <input
						type="password" class="form-control" id="InputPassword2"
						value="${MemberVO.pwd }"><br>
					<p class="help-block" id="passwordOK"></p>
				</div>
				<div class="form-group">
					<label for="username">이름</label><br> <input type="text"
						class="form-control" id="username" value="${MemberVO.name }">
				</div>
				<div class="form-group">
					<label for="sex">성별</label><br> <input type="checkbox"
						name="sexinfo" id="sexinfo" value="남자">남자 <input type="checkbox"
						name="sexinfo" id="sexinfo1"value="여자">여자
				</div>
				<div class="form-group">
					<br> <label for="birth">생년월일</label><br> <input
						type="text" class="form-control" id="birth"
						value="${MemberVO.birth }" readonly>
				</div>

				<div class="form-group">
					<label for="birth">전화번호</label><br> <input type="tel"
						class="form-control" id="tel" value="${MemberVO.telephone }">
				</div>

				<div class="form-group">
					<label for="birth">휴대폰 번호</label><br> <input type="tel"
						class="form-control" id="sell" value="${MemberVO.cellphone }">
				</div>
				
				
				<!-- 내 사진 수정  -->
				<div class="form-group">
					<label for="birth">내 사진</label><br>
					<img src="http://dy.gnch.or.kr/img/no-image.jpg" id="image" width="150px" height="150px"/>
					<input id="input_file" type="file" onchange="fileCheck(this)" accept="image/gif, image/jpeg, image/png"/>
				</div>
				<!-- ---------- -->
				
				
				<div class="form-group">
					<label for="birth">주소</label><br>
					<div class="input-group">
						<input type="text" class="form-control postcodify_postcode5"
							id="post_num" value="${MemberVO.mailno }" readonly="readonly"> <span
							class="input-group-btn">
							<button type="button" id="postcodify_search_button"
								class="btn btn-success">
								우편번호 검색<i class="fa fa-check spaceLeft"></i>
							</button>
						</span>
					</div>
					<input type="text" class="form-control-1 postcodify_address"
						id="another_ad1" value="${MemberVO.address }" readonly="readonly"> <input type="text"
						class="form-control-1 postcodify_details" id="another_ad2"
						value="${MemberVO.addaddress }">
				</div>
				
				<div class="form-group">
					<label for="birth">이메일</label><br> <input type="email"
						class="form-control" id="email" value="${MemberVO.email }">
				</div>
				
				
				<div class="form-group text-center">
					<button type="button" id="update_btn" class="btn btn-info">
						정보 수정<i class="fa fa-check spaceLeft"></i>
					</button>
					<button type="button" id="cancel_btn" class="btn btn-warning">
						수정 취소<i class="fa fa-times spaceLeft"></i>
					</button>
				</div>
			</form>
		</div>
	</article>
			
			
			
			<!-- /. PAGE INNER  -->
			
			
		</div>
		<!-- /. PAGE WRAPPER  -->
	</div>
	<!-- /. WRAPPER  -->
	<!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
	<!-- JQUERY SCRIPTS -->

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<!-- 우편번호 검색 CDN -->
	<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed-->
	


	<script src="<c:url value='resources/assets/js/jquery-1.10.2.js'/>" /></script>
	<!-- BOOTSTRAP SCRIPTS -->
	<script src="<c:url value='resources/assets/js/bootstrap.min.js'/>" /></script>

	<!-- METISMENU SCRIPTS -->
	<script src="<c:url value='resources/assets/js/jquery.metisMenu.js'/>" /></script>
	<!-- CUSTOM SCRIPTS -->
	<script src="<c:url value='resources/assets/js/custom.js'/>" /></script>
	
	<!-- 우편번호 검색 CDN -->
	<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed-->

	<script>
	
	//패스워드 확인 참거짓
	var pw_bl=false;
	
		$(document).ready(
				function() {
					//라디오 요소처럼 동작시킬 체크박스 그룹 셀렉터
					$('input[type="checkbox"][name="sexinfo"]').click(

							function() {
								checkbox_bl = true;

								//클릭 이벤트 발생한 요소가 체크 상태인 경우
								if ($(this).prop('checked')) {
									//체크박스 그룹의 요소 전체를 체크 해제후 클릭한 요소 체크 상태지정
									check_d = $(this).val()

									$('input[type="checkbox"][name="sexinfo"]')
											.prop('checked', false);
									$(this).prop('checked', true);
								}
							});
				})

		var gender = "${MemberVO.gender}";
		console.log("성별" + gender);

		if (gender == "남자") {
			$('input:checkbox[id="sexinfo"]').prop("checked", true);
		} else {
			$('input:checkbox[id="sexinfo1"]').prop("checked", true);
		}
		//패스워드 확인 참거짓
		var pw_bl = false;

		//패스워드 정규식
		var re_pw = /^(?=.*[a-zA-Z]+)(?=.*[!@#$%^*+=-]|.*[0-9]+).{8,16}$/;

		$(function() {
			$("#postcodify_search_button").postcodifyPopUp();
		});

		var admin ='<%=type%>';
		function tabSetting() {

			console.log("값:" + admin);
			if (admin != 1) {
				$('#admin').hide();
			}

			if (admin == 0) {
				$('.childTab').click(function() {
					alert('승인 후 이용해주세요');
					return false;
				})
			}
		}

		//비밀번호 확인 일치 불일치
		$('#InputPassword2').keyup(function() {
			var ps = $('#InputPassword1').val();

			if ($('#InputPassword2').val() == '') {
				$('#passwordOK').html('');
			} else if (ps == ($('#InputPassword2').val())) {
				$('#passwordOK').html("비밀번호 일치").css('color', 'blue');
				pw_bl = true;
			} else {
				$('#passwordOK').html("비밀번호 불일치").css('color', 'red');
			}
		})

		if($('#InputPassword1').val() == $('#InputPassword2').val()){
			pw_bl = true;
		}
		
		//비밀번호 자릿수 & 조합 확인
		$('#InputPassword1')
				.keyup(
						function() {

							if ($('#InputPassword1').val() == '') {
								$('#pw').html('');
							} else if (re_pw.test($('#InputPassword1').val()) == false) {
								$('#pw').html('영문 대소문자와 숫자를 조합해서 다시 입력하세요')
										.css('color', 'red');
							} else {
								$('#pw').html('');
							}

						})
						
		$('#cancel_btn').click(function(){
			location = '/groupware/main1';
		})		
		
		
		
		$('#update_btn').click(function(){
			var checked;
			
			if(re_pw.test($('#InputPassword1').val())==false){
				alert('비밀번호를 다시 입력하세요');
				$('#InputPassword1').focus();
				return false;
			}else if(pw_bl==false){
				alert('비밀번호를 정확하게 입력하세요');
				$('#InputPassword2').focus();
				return false;
			}else if($('#username').val()==''){
				alert('이름을 입력해주세요');
				$('#username').focus();
				return false;
			}else if($('#tel').val()==''){
				alert('전화번호를 입력해주세요');
				$('#tel').focus();
				return false;
			}else if($('#sell').val()==''){
				alert('휴대폰 번호를 입력해주세요');
				$('#sell').focus();
				return false;
			}else if($('#another_ad2').val()==''){
				alert('나머지 주소를 입력해주세요');
				$('#another_ad2').focus();
				return false;
			}else if(true){
				
				
				
				
				var file = document.getElementById('input_file');
				var target = event.currentTarget;
				var xmlHttpRequest = new XMLHttpRequest();
				xmlHttpRequest.open('POST', 'https://api.imgur.com/3/image/', true);
				xmlHttpRequest.setRequestHeader("Authorization", "Client-ID db2d50e6a593a18");
				xmlHttpRequest.onreadystatechange = function () {
				if (xmlHttpRequest.readyState == 4) {
				    if (xmlHttpRequest.status == 200) {
				       var result = JSON.parse(xmlHttpRequest.responseText);
				       image.src = result.data.link;
				       console.log(result);
				        alert(result.data.link + ' || ' + result.data.type);
				      }
				      else {
				      	alert("업로드 실패");
				        /* image.src = "http://dy.gnch.or.kr/img/no-image.jpg"; */
				      }
				    }
				  };
				  if(target.files !=null){
				  	xmlHttpRequest.send(target.files[0]);
				  }
				  var no_image='http://dy.gnch.or.kr/img/no-image.jpg';
				  var imgur_link = $('#image').attr('src');
				  
				  if(no_image===imgur_link){
					  imgur_link="http://icons.iconarchive.com/icons/oxygen-icons.org/oxygen/128/Places-user-identity-icon.png";
				  }

				  
				  
				
				$('input[name=sexinfo]:checked').each(function(){ 
					checked = $(this).val();
				})
				$.ajax({
					type: 'put',
					url: '/groupware/join/update_member_info',
					headers:{
						'Content-Type': 'application/json',
						'X-HTTP-Method-Override': 'PUT'
					},
					data: JSON.stringify({
						id: $('#UserId').val(),
						pwd: $('#InputPassword1').val(),
						name: $('#username').val(),
						gender: checked,
						birth: $('#birth').val(),
						telephone: $('#tel').val(),
						cellphone: $('#sell').val(),
						address: $('#another_ad1').val(),
						email: $('#email').val(),
						mailno: $('#post_num').val(),
						addaddress: $('#another_ad2').val(),
						profileimage: imgur_link
					}),
					success:function(result){
						if(result == 'OK'){
							alert('회원 정보가 수정되었습니다!');
							location = '/groupware/main1';
						}
					}
				})
			}		
		})
		// 탭 초기화 및 설정
		tabSetting();
	</script>



			<!-- /* 내 사진 */ -->
			<script type="text/javascript">
			var file = document.getElementById('input_file');
			var image = document.getElementById('image'); 
			file.onchange = function (event) {
			 var target = event.currentTarget;
			 var xmlHttpRequest = new XMLHttpRequest();
			 xmlHttpRequest.open('POST', 'https://api.imgur.com/3/image/', true);
			 xmlHttpRequest.setRequestHeader("Authorization", "Client-ID db2d50e6a593a18");
			 xmlHttpRequest.onreadystatechange = function () {
			   if (xmlHttpRequest.readyState == 4) {
			     if (xmlHttpRequest.status == 200) {
			       var result = JSON.parse(xmlHttpRequest.responseText);
			       image.src = result.data.link;
			       console.log(result);
			       alert(result.data.link + ' || ' + result.data.type);
			     }
			     else {
			     	alert("업로드 실패");
			       image.src = "http://dy.gnch.or.kr/img/no-image.jpg"; 
			     }
			   }
			 };
			 if(target.files !=null){
			 	xmlHttpRequest.send(target.files[0]);
			 }
			 image.src = "https://nrm.dfg.ca.gov/images/image-loader.gif"; 
			};


			$.fn.setPreview = function(opt){
			    "use strict"
			    var defaultOpt = {
			        inputFile: $(this),
			        img: null,
			        w: 200,
			        h: 200
			    };
			    $.extend(defaultOpt, opt);
			 
			    var previewImage = function(){
			        if (!defaultOpt.inputFile || !defaultOpt.img) return;
			 
			        var inputFile = defaultOpt.inputFile.get(0);
			        var img       = defaultOpt.img.get(0);
			 
			        // FileReader
			        if (window.FileReader) {
			            // image 파일만
			            if (!inputFile.files[0].type.match(/image\//)) return;
			 
			            // preview
			            try {
			                var reader = new FileReader();
			                reader.onload = function(e){
			                    img.src = e.target.result;
			                    img.style.width  = defaultOpt.w+'px';
			                    img.style.height = defaultOpt.h+'px';
			                    img.style.display = '';
			                }
			                reader.readAsDataURL(inputFile.files[0]);
			            } catch (e) {
			                // exception...
			            }
			        // img.filters (MSIE)
			        } else if (img.filters) {
			            inputFile.select();
			            inputFile.blur();
			            var imgSrc = document.selection.createRange().text;
			 
			            img.style.width  = defaultOpt.w+'px';
			            img.style.height = defaultOpt.h+'px';
			            img.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(enable='true',sizingMethod='scale',src=\""+imgSrc+"\")";            
			            img.style.display = '';
			        // no support
			        } else {
			            // Safari5, ...
			        }
			    };
			 
			    // onchange
			    $(this).change(function(){
			        previewImage();
			    });
			};
			 
			 
			$(document).ready(function(){
			    var opt = {
			        img: $('#image'),
			        w: 200,
			        h: 200
			    };
			 
			    $('#input_file').setPreview(opt);
			});


			function fileCheck(obj) {
			    pathpoint = obj.value.lastIndexOf('.');
			    filepoint = obj.value.substring(pathpoint+1,obj.length);
			    filetype = filepoint.toLowerCase();
			    if(filetype=='jpg' || filetype=='gif' || filetype=='png' || filetype=='jpeg' || filetype=='bmp') {
			        // 정상적인 이미지 확장자 파일일 경우 ...
			    } else {
			        alert('이미지 파일만 선택할 수 있습니다.');
			        parentObj  = obj.parentNode
			        node = parentObj.replaceChild(obj.cloneNode(true),obj);
			        return false;
			    }
			    if(filetype=='bmp') {
			        upload = confirm('BMP 파일은 웹상에서 사용하기엔 적절한 이미지 포맷이 아닙니다.\n그래도 계속 하시겠습니까?');
			        if(!upload) return false;
			    }
			}
			
			
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
			</script>

</body>
</html>
