<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style type="text/css">
td {
	width: 80px;
}
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 6px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;}
.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 6px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;}
.tg .tg-yw4l{vertical-align:top}
<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 6px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;}
.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 6px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;}
.tg .tg-yw4l{vertical-align:top; border: 0px;}
.tg .tg-yw43{width: 80px;}
.th
</style>
<table class="tg">
  <tr>
    <th class="tg-031e">부서</th>
    <th class="tg-031e">소속</th>
    <th class="tg-031e">직급</th>
    <th class="tg-yw42" >사원명</th>
    <th class="tg-yw4l" style="border-right: 0px;"></th>
    <th class="tg-yw43" id = final_id1></th>
    <th class="tg-yw43" id = final_id2></th>
    <th class="tg-yw43" id = final_id3></th>
    <th class="tg-yw43" id = final_id4></th>
    <th class="tg-yw43" id = final_id5></th> 
    <th class="tg-yw43" style="padding: 0px"><input type="button" /></th> 
  </tr>
  	 <c:forEach var="vo" items="${MemberVO }">
  <tr>
    <td class="tg-031e">ITWill</td>
    <td class="tg-031e">${vo.dept }</td>
    <td class="tg-031e">${vo.usertype }</td>
    <td class="tg-yw42 name">${vo.name }</td>
    <td class="tg-yw4l"></td>
    <td class="tg-yw4l"></td>
    <td class="tg-yw4l"></td>
    <td class="tg-yw4l"></td>
    <td class="tg-yw4l"></td>
  </tr>
    </c:forEach>
</table>
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>
//	$(function() {
//		$('.tg-yw42').on('click', insert);
//	});
	
	
	$('.name').on('click', function(){
		var value = $(this).text();
		

		if ($('#final_id1').text() == "") {
			$('#final_id1').text(value);
			$(this).attr('bgcolor', '#cfcfcf');
		} else if($('#final_id2').text() == "" && value != $('#final_id1').text()) {
			$('#final_id2').text(value);
			$(this).attr('bgcolor', '#cfcfcf');
		} else if($('#final_id3').text() == "" && value != $('#final_id1').text() && value != $('#final_id2').text()) {
			$('#final_id3').text(value);
			$(this).attr('bgcolor', '#cfcfcf');
		} else if($('#final_id4').text() == "" && value != $('#final_id1').text() && value != $('#final_id2').text() && value != $('#final_id3').text() ) {
			$('#final_id4').text(value);
			$(this).attr('bgcolor', '#cfcfcf');
		} else if($('#final_id5').text() == "" && value != $('#final_id1').text() && value != $('#final_id2').text() && value != $('#final_id3').text() && value != $('#final_id4').text() ) {
			$('#final_id5').text(value);
			$(this).attr('bgcolor', '#cfcfcf');
		} else {
			alert('중복값 넣지 마세요!');
		}
	});
	
	$(function() {
		$('input').on('click', act);
	});
	
	function act() {
		var thisTxt1 = $('#final_id1').text();
		var thisTxt2 = $('#final_id2').text();
		var thisTxt3 = $('#final_id3').text();
		var thisTxt4 = $('#final_id4').text();
		var thisTxt5 = $('#final_id5').text();
		
		$('#getfinal_id1', opener.document).text(thisTxt1);
		$('#text1', opener.document).val(thisTxt1);
		$('#getfinal_id2', opener.document).text(thisTxt2);
		$('#text2', opener.document).val(thisTxt2);
		$('#getfinal_id3', opener.document).text(thisTxt3);
		$('#text3', opener.document).val(thisTxt3);
		$('#getfinal_id4', opener.document).text(thisTxt4);
		$('#text4', opener.document).val(thisTxt4);
		$('#getfinal_id5', opener.document).text(thisTxt5);
		$('#text5', opener.document).val(thisTxt5);
		window.close();
	}


</script>
</html>
