<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>bootstrap template</title>
<link href='<c:url value="/resources/assets/css/bootstrap.min.css"/>'
	rel="stylesheet" />
<!-- Bootstrap -->
<!-- <link href="css/bootstrap.min.css" rel="stylesheet"> -->
<!-- font awesome -->
<link rel="stylesheet"
	href='<c:url value="/resources/assets/css/font-awesome.min.css"/>'
	media="screen" title="no title" charset="utf-8">
<!-- Custom style -->
<link rel="stylesheet"
	href='<c:url value="/resources/assets/css/style.css"/>' media="screen"
	title="no title" charset="utf-8">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    
    <style type="text/css">
.where {
  display: block;
  margin: 25px 15px;
  font-size: 11px;
  color: #000;
  text-decoration: none;
  font-family: verdana;
  font-style: italic;
} 

.filebox input[type="file"] {
    position: absolute;
    width: 1px;
    height: 1px;
    padding: 0;
    margin: -1px;
    overflow: hidden;
    clip:rect(0,0,0,0);
    border: 0;
}

.filebox label {
    display: inline-block;
    padding: .5em .75em;
    color: #999;
    font-size: inherit;
    line-height: normal;
    vertical-align: middle;
    background-color: #fdfdfd;
    cursor: pointer;
    border: 1px solid #ebebeb;
    border-bottom-color: #e2e2e2;
    border-radius: .25em;
}

/* named upload */
.filebox .upload-name {
    display: inline-block;
    padding: .5em .75em;
    font-size: inherit;
    font-family: inherit;
    line-height: normal;
    vertical-align: middle;
    background-color: #f5f5f5;
  border: 1px solid #ebebeb;
  border-bottom-color: #e2e2e2;
  border-radius: .25em;
  -webkit-appearance: none;
  -moz-appearance: none;
  appearance: none;
}

.filebox.bs3-primary label {
    color: #fff;
    background-color: #5cb85c;
    border-color: #4cae4c;
}
   </style>
   
</head>
<body>


	<article class="container">
		<div class="page-header">
			<h1>회원가입</h1>
		</div>
		<div class="col-md-6 col-md-offset-3">
			<form id="form">
				<div class="form-group">
					<label for="InputEmail">아이디</label><br> <input type="text"
						class="form-control" id="UserId"
						placeholder="영문대소문자&숫자를 조합한 6~10자리"><br>
					<p class="help-block" id="id_result"></p>
				</div>
				<div class="form-group">
					<label for="InputPassword1">비밀번호</label><br> <input
						type="password" class="form-control" id="InputPassword1"
						placeholder="영문대소문자&숫자를 조합한 6~18자리"><br>
					<p class="help-block" id="pw"></p>
				</div>
				<div class="form-group">
					<label for="InputPassword2">비밀번호 확인</label><br> <input
						type="password" class="form-control" id="InputPassword2"
						placeholder="비밀번호 확인"><br>
					<p class="help-block" id="passwordOK"></p>
				</div>
				<div class="form-group">
					<label for="username">이름</label><br> <input type="text"
						class="form-control" id="username" placeholder="이름을 입력해 주세요">
				</div>
				<div class="form-group">
					<label for="sex">성별</label><br> <input type="checkbox"
						name="sexinfo" id="sexinfo" value="남자">남자 <input type="checkbox"
						name="sexinfo" value="여자">여자
				</div>
				<div class="form-group">
					<br> <label for="birth">생년월일</label><br> <input
						type="text" class="form-control" id="birth"
						placeholder="ex)19910704">
				</div>

				<div class="form-group">
					<label for="birth">전화번호</label><br> <input type="tel"
						class="form-control" id="tel" placeholder="(-)없이 입력">
				</div>

				<div class="form-group">
					<label for="birth">휴대폰 번호</label><br> <input type="tel"
						class="form-control" id="sell" placeholder="(-)없이 입력">
				</div>
				
				<!-- 내 사진 수정  -->
				<div class="form-group">
               		<label for="birth">내 사진</label><br>
               
              		<img src="http://dy.gnch.or.kr/img/no-image.jpg" id="image" width="150px" height="150px"/>
               
              		<div class="filebox bs3-primary" style="margin-top: 10px;">
               
                    	<input class="upload-name" value="파일선택" disabled="disabled">

                   	 	<label for="ex_filename">업로드</label> 
                    	<input type="file" id="ex_filename" class="upload-hidden" onchange="fileCheck(this)" accept="image/gif, image/jpeg, image/png"> 
                    </div>
                </div>
				<!-- ---------- -->
				
				<div class="form-group">
					<label for="birth">주소</label><br>
					<div class="input-group">
						<input type="text" class="form-control postcodify_postcode5"
							id="post_num" placeholder="우편번호" readonly="readonly"> <span
							class="input-group-btn">
							<button type="button" id="postcodify_search_button"
								class="btn btn-success">
								우편번호 검색<i class="fa fa-check spaceLeft"></i>
							</button>
						</span>
					</div>
					<input type="text" class="form-control-1 postcodify_address"
						id="another_ad1" placeholder="주소" readonly="readonly"> <input type="text"
						class="form-control-1 postcodify_details" id="another_ad2"
						placeholder="나머지 주소를 입력하세요">
				</div>
				<div class="form-group">
					<label for="username">이메일 인증</label>
					<div class="input-group">
						<input type="email" class="form-control" id="email"
							placeholder="이메일 입력"> <span class="input-group-btn">
							<button type="button" id="email_btn" class="btn btn-success">
								인증번호 전송<i class="fa fa-mail-forward spaceLeft"></i>
							</button>
						</span>
					</div>
				</div>
				<div class="form-group">
					<label for="username">인증번호 입력</label>
					<div class="input-group">
						<input type="text" class="form-control" id="auth"
							placeholder="인증번호"> <span class="input-group-btn">
							<button type="button" id="auth_btn" class="btn btn-success">
								인증번호 입력<i class="fa fa-edit spaceLeft"></i>
							</button>
						</span>
					</div>
				</div>
				<div class="form-group">
					<label>약관 동의</label>
					<div data-toggle="buttons">
						<label class="btn btn-primary active"> <span
							class="fa fa-check"></span> <input id="agree" type="checkbox"
							autocomplete="off" checked>
						</label> <a href="#">이용약관</a>에 동의합니다.
					</div>
				</div>
				<div class="form-group text-center">
					<button type="button" id="join_btn" class="btn btn-info">
						회원가입<i class="fa fa-check spaceLeft"></i>
					</button>
					<button type="button" id="cancel_btn" class="btn btn-warning">
						가입취소<i class="fa fa-times spaceLeft"></i>
					</button>
				</div>
			</form>
		</div>
	</article>

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<!-- 우편번호 검색 CDN -->
	<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed-->
	<script src="../resources/assets/js/bootstrap.min.js"></script>

	<script type="text/javascript">
		//체크박스 상태 확인
		var checkbox_bl=false;
		//인증번호 저장 변수
		var auth;
		//패스워드 확인 참거짓
		var pw_bl=false;
		//인증 결과 참 거짓
		var auth_result = false;
		//패스워드 정규식
		var re_pw = /^(?=.*[a-zA-Z]+)(?=.*[!@#$%^*+=-]|.*[0-9]+).{8,16}$/;
		//id 정규식
		var re_id = /^(?=.*[a-zA-Z]+)(?=.*[!@#$%^*+=-]|.*[0-9]+).{7,12}$/;
		//email 정규식
		var re_mail = /^([\w\.-]+)@([a-z\d\.-]+)\.([a-z\.]{2,6})$/;
		var check_d;
		
		$(document).ready(
				function() {
					//라디오 요소처럼 동작시킬 체크박스 그룹 셀렉터
					$('input[type="checkbox"][name="sexinfo"]').click(
							
							function() {
								checkbox_bl=true;
								
								//클릭 이벤트 발생한 요소가 체크 상태인 경우
								if ($(this).prop('checked')) {
									//체크박스 그룹의 요소 전체를 체크 해제후 클릭한 요소 체크 상태지정
									check_d = $(this).val()
									
									$('input[type="checkbox"][name="sexinfo"]')
											.prop('checked', false);
									$(this).prop('checked', true);
								}
							});
					}
				)
		//아이디 일치 불일치 확인
				$('#UserId').keyup(function(){
					
					
					if($('#UserId').val()==''){
						$('#id_result').html('');
					}else{
					$.ajax({
						type: 'post',
						url: '/groupware/member_login/checkid',
						data: {userid:$('#UserId').val()},
						success: function(res, status, xhr){
							if(res=='OK'){
								if(re_id.test($('#UserId').val())==false){
									$('#id_result').html("영문 대소문자와 숫자를 이용해서 다시 입력하세요").css('color', 'red');
								}else{
									$('#id_result').html("사용가능한 아이디").css('color', 'blue');
								}
								
							}else{
								$('#id_result').html("이미 사용중인 아이디");
								$('#id_result').css('color', 'red');
							}
						}
					});} 
				});
				
				//비밀번호 확인 일치 불일치
				$('#InputPassword2').keyup(function() {
					var ps = $('#InputPassword1').val();

					if($('#InputPassword2').val()==''){
						$('#passwordOK').html('');
					}
					else if (ps == ($('#InputPassword2').val())) {
						$('#passwordOK').html("비밀번호 일치").css('color', 'blue');
						pw_bl=true;
					}  else {
						$('#passwordOK').html("비밀번호 불일치").css('color', 'red');
					} 
				})
				
				
				//"검색" 단추를 누르면 팝업 레이어가 열리도록 설정한다 
				$(function() { 
					$("#postcodify_search_button").postcodifyPopUp(); 
				});
				//email 인증번호 전송
				$('#email_btn').click(function(){
					
					if($('#email').val()==''){
						alert('메일 주소를 입력하세요');
					}else if(re_mail.test($('#email').val())==false){
						alert('잘못된 메일형식입니다');
					}
					
					else{
					$.ajax({
						type: 'get',
						url: '/groupware/member_login/email',
						data: {email:$('#email').val()},
						success: function(res, status, xhr){
							if(res!=null){
								alert('인증번호가 발송되었습니다.'+res);
								auth = res;
							}else{
								alert('잘못된 메일주소입니다.');
							}
						}
					});} 
				})
				
				
				//인증번호 확인
				$('#auth_btn').click(function(){
					if($('#auth').val()==auth){
						alert('인증되었습니다.')
						auth = null;
						auth_result=true;
					}else{
						if($('#auth').val()==''){
							alert('인증 번호를 입력해주세요')
						}else{
							alert('잘못된 인증번호입니다.')
						}
					}
				})
				
				
				//가입취소 버튼
				$('#cancel_btn').click(function(){
					location = '../';
				})
				
				
				//비밀번호 자릿수 & 조합 확인
				$('#InputPassword1').keyup(function(){
					
					
					if($('#InputPassword1').val()==''){
						$('#pw').html('');
					}
					else if(re_pw.test($('#InputPassword1').val())==false){
						$('#pw').html('영문 대소문자와 숫자를 조합해서 다시 입력하세요').css('color', 'red');
					}else{
						$('#pw').html('');
					} 
					
				})
				//회원가입 버튼 클릭시 공백란 체크 
				$('#join_btn').click(function(){
					if(re_id.test($('#UserId').val())==false){
						alert('아이디를 정확하게 입력하세요');
						$('#UserId').focus();
						return false;
					}else if(re_pw.test($('#InputPassword1').val())==false){
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
					}else if(checkbox_bl==false){
						alert('성별을 체크해주세요');
						$('#sexinfo').focus();
						return false;
					}else if($('#birth').val()==''){
						alert('생년월일을 입력해주세요');
						$('#birth').focus();
						return false;
					}
					else if($('#tel').val()==''){
						alert('전화번호를 입력해주세요');
						$('#tel').focus();
						return false;
					}else if($('#sell').val()==''){
						alert('휴대폰 번호를 입력해주세요');
						$('#sell').focus();
						return false;
					}else if($('#post_num').val()==''){
						alert('우편번호를 입력하세요');
						$('#post_num').focus();
						return false;
					}else if($('#another_ad2').val()==''){
						alert('나머지 주소를 입력해주세요');
						$('#another_ad2').focus();
						return false;
					}else if(auth_result==false){
						alert('이메일 인증을 확인 해주세요');
						$('#email').focus();
						return false;
					}else if(true){
						//회원가입시 form 에서는 action 으로 연결된 페이지로 넘어가고 동시에 submit이 될때 ajax 통신으로 
						//post 메소드를 이용해서 rest 방식으로 json으로 데이터를 넘겨줌.
						//Json으로 데이터 전송하려면 header를 반드시 명시해야함.
						
						
						var file = document.getElementById('ex_filename');
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
						
						 $.ajax({
							type: 'post',
							url: '/groupware/join',
							headers: {
								'Content-Type':'application/json',
								'X-HTTP-Method-Override': 'POST'
							},
							data: JSON.stringify({
								id: $('#UserId').val(),
								pwd: $('#InputPassword1').val(),
								name: $('#username').val(),
								gender: check_d,
								birth: $('#birth').val(),
								telephone: $('#tel').val(),
								cellphone: $('#sell').val(),
								address: $('#another_ad1').val(),
								email: $('#email').val(),
								mailno: $('#post_num').val(),
								addaddress: $('#another_ad2').val(),
								groupemail: $('#UserId').val()+"@moram.com",
								profileimage: imgur_link
							}),
							success:function(result){ 
								if(result!=null){
									if(result == 'OK'){
										alert('회원가입이 되었습니다');	
										console.log("회원가입되라");
										location = '../';
									}
								}
								
								
							} 
							
						})
						
					}
				})
	</script>
	
	
<!-- 내 사진 -->
<script>
var file = document.getElementById('ex_filename');
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
 
    $('#ex_filename').setPreview(opt);
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


var fileTarget = $('.filebox .upload-hidden');

fileTarget.on('change', function(){
    if(window.FileReader){
        var filename = $(this)[0].files[0].name;
    } else {
        var filename = $(this).val().split('/').pop().split('\\').pop();
    }

    $(this).siblings('.upload-name').val(filename);
});

</script>
</body>
</html>






