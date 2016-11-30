$(document).ready(function(){
	/*필요 멤버변수들*/
	 
	// 접속 아이디
	var id = $('#login_id').attr('data-id');

	// 현재 시각 check_in 버튼을 눌렀을때 new Date로 받아와 시간 추출
	var Now = '';
	// 시간을 string타입으로 저장 ( xx시 yy분 check_in에 실질적으로 뿌려줌)
	var time = '';
	
	// enter 시간 저장
	var check_in_time=0;
	// leave 시간 저장
	var check_out_time=0;
	// statetime 시간 저장
	var business_time;
	
	// 강남 위도 경도
	var lat = 'lat=37.499602&';
	var lon = 'lon=127.031639&';
	var apikey = 'APPID=d91d27ae8f843ec1ae68d02ceff0d127';
	
	var url='http://api.openweathermap.org/data/2.5/weather?'
			+lat // 경도
			+lon // 위도
			+apikey; //api키
	
	$("#user-name").html(id);
	getWeather();
	getTime();
	
	
	/*날씨 처리 */
	function getWeather() {
		$.getJSON(url, function(result) {
			console.log('result = ', result);
			var list = '';
			$(result).each(function() {
				var date = new Date(this.regdate);
				var dateString = date.toLocaleDateString();
				console.log(dateString);
				
		list += 
		'<tr><td rowspan="5">'
		+'<img src="resources/assets/img/ic_weather/ic_'
		+ this.weather[0].icon 
		+'.png"/>'
		+'</td></tr>'
		+ '<tr><td>'
		+ '온도 : ' + (this.main.temp - 273.15).toFixed(1)+'℃'
		 + '</td></tr>'
		 + '<tr><td>'
		 + '습도 : ' + this.main.humidity +' %'
		 + '</td></tr>'
		 + '<tr><td>'
		 + '기압 : ' + this.main.pressure +' hPa'
		 + '</td></tr>'
		 + '<tr><td>'
		 + '바람 : ' + this.wind.speed + ' mps'
		 + '</td></tr>';
				
			$('#weather').html(list);
			
			});
		
		});
		
	}; /* end of getAllReplies() */
	
	
	
	/*id값으로 저장된 시간값이 있으면 출력 메인에 출력*/
	function getTime(){
		
		var url = '/groupware/checktime/all/' + id;
		$.getJSON(url, function(result) {
			var enter_time = '';
			var leave_time = '';
			
			/* data의 개수만큼 function()의 내용을 반복해서 수행 */
			$(result).each(function() {
				enter_time=this.enter;
				leave_time=this.leave;	
			}); /* 데이터 개수에 따른 반복문 처리 끝 */
			
			
			if (enter_time!=''&&enter_time!=null){
				var text = enter_time.substring(11,13)+'시 '+enter_time.substring(14,16)+'분';
				$('#check-in-text').html(text);
				$("#check-in").attr("disabled","disabled");
				check_in_time = (enter_time.substring(11,13)*3600) + 
									(enter_time.substring(14,16)*60);
			}
			if (leave_time!=''&&enter_time!=null){
				var text = leave_time.substring(11,13)+'시 '+leave_time.substring(14,16)+'분';
				$('#check-out-text').html(text)
				$("#check-out").attr("disabled","disabled");
			}
			
		}); /* 서버에서 전달된 JSON 데이터 처리 끝 */		
		
		
	}
	
	
/*	function test() {
		var url = '/groupware/checktime/all/seven';
		$.getJSON(url, function(result) {
			alert("전체 id 수 : " + result.length);
			alert('실험 첫번째 : '+ result.id);
			 data의 개수만큼 function()의 내용을 반복해서 수행 
			var i = 0;
			
			
			$(result).each(function() {
				if (i==0){
					chartval1 = this.statetime;
					chartweek1 = this.to_char;
					alert(chartval1 + ' 흐에 ' + i +' 흐에에 ' + chartweek1);
				} else if(i==1){
					chartval2 = this.statetime;
					chartweek2 = this.to_char;
					alert(chartval2 + ' 흐에 ' + i +' 흐에에 ' + chartweek2);
				} else if(i==2){
					chartval3 = this.statetime;
					chartweek3 = this.to_char;
					alert(chartval3 + ' 흐에 ' + i +' 흐에에 ' + chartweek3);
				}
			
				chartval[i] =  this.statetime;
				chartweek[i] = this.to_char;
				i++;
				alert('실험 첫번째 : '+ this.id);
			});  데이터 개수에 따른 반복문 처리 끝 
//			alert('끝! : ' + chartval1);
			
			alert('배열 : ' + chartval[0]);
			alert('배열 : ' + chartval[1]);
			alert('배열 : ' + chartval[2]);
			alert('배열 : ' + chartval[3]);
			
		});  서버에서 전달된 JSON 데이터 처리 끝 		
	}*/
	
	
	
	//	check-in, out 버튼 처리
	/*var text = $('h1').text(); 속성값 부를때 */	
	$(".check-in").click(function(){
		
		
		
		Now = new Date();
		time = ' '+Now.getHours()+'시 '+Now.getMinutes()+'분';
		
		check_in_time = (Now.getHours()*3600) + (Now.getMinutes()*60) + Now.getSeconds();

		/*================================*/
		$.ajax({
			type: 'post',
			url: '/groupware/checktime',
			headers: {
				'Content-Type': 'application/json',
				'X-HTTP-Method-Override': 'POST'
			},
			/* JSON.stringify({}): JavaScript 객체를 JSON 문자열로 변환 */
			data: JSON.stringify({
				id: id
			}),
			success: function(result) {
				if (result == 1) {
					alert('입실 완료');
				}
			}
		});
		/*================================*/
		
		$("#check-in-text").text('');
		$("#check-in-text").text(time);
		$("#check-in").attr("disabled","disabled")
		
	});
	
	$(".check-out").click(function(){
		var nulltest = $("#check-in-text").text();
		if(nulltest==""){
			alert("출근을 찍어주세요");
		} else {
		Now = new Date();
		time = ' '+Now.getHours()+'시 '+Now.getMinutes()+'분';
		
		var check_in_check;
		var check_in_h=0;
		var check_in_m=0;
		var check_in_s=0;
		
		var url = '/groupware/checktime/all/today';
		$.getJSON(url, function(result) {

			$(result).each(function() {
				
				if(id == this.id){
					check_in_check = this.enter;
					check_in_h = check_in_check.substring(11, 13);
					check_in_m = check_in_check.substring(14, 16);
					check_in_s = check_in_check.substring(17, 19);
				}
					
			});
			
			var attendance='';
			
			check_in_time = (check_in_h*3600) + (check_in_m*60);
			check_out_time = (Now.getHours()*3600) + (Now.getMinutes()*60) + Now.getSeconds();
			
			if(check_in_time <= 34200){
				check_in_time = 34200;
			}
			if(check_out_time >= 66600){
				check_out_time = 66600;
			}
			// 정상출근 범위
			if(check_in_time==34200 && check_out_time==66600){
				business_time = 32400;
				attendance = '출근';
				//alert('출근');
				
			// 지각 범위 (늦게 왔을 경우, 늦게오고 조퇴까지 했는데 4:30은 채우고 간 경우)
			} else if ((check_out_time-check_in_time) < 32400
					&& (check_out_time-check_in_time) > 16200 ) {
				
				if(check_in_time == 34200){
					attendance = '조퇴';
					//alert('조퇴');
				} else if (check_out_time == 66600){
					attendance = '지각';
					//alert('지각');
				} else {
					attendance = '지각';
					//alert('조지');
				}
				
			// 결석처리 범위 (늦게왔거나 조퇴했는데 시간이 4:30을 안넘음)
			} else {
				attendance = '결석';
				//alert('결석');
			} 
			//alert('근무시간 : ' + check_in_time + ' || ' + check_out_time);
			
			business_time = check_out_time - check_in_time;
			
			if(business_time <= 0){
				business_time = 0;
			}
			//alert('근무시간 : ' + business_time + '초');
			
			
			/*================================*/
			var statetime= business_time;
			var score;
			

			if(statetime/3600>=9){
				score=5;
			}else if(statetime/3600>=8){
				score=4;
			}else if(statetime/3600>=6){
				score=3;
			}else if(statetime/3600>=5){
				score=2;
			}else if(statetime/3600>=4.5){
				score=1;
			}else{
				score=0;
			}
			
			console.log('statetime = ' + statetime + ', score=' + score);
			
			$.ajax({
				type: 'put',
				url: '/groupware/checktime/' + id,
				headers: {
					'Content-Type': 'application/json',
					'X-Http-Method-Override': 'PUT'
				},
				data: JSON.stringify({
					id: id,
					attendance: attendance,
					statetime: statetime,
					score: score
				}),
				success: function(result) {
					if (result == 'success') {
						//alert(id + ' 업데이트 완료');
						alert(id + " 퇴실 완료");
					}
				}
		});
		
		
		});
		/*================================*/
		
		$("#check-out-text").text('');
		$("#check-out-text").text(time);
		$("#check-out").attr("disabled","disabled");
		}
	});
	
	
	
	
	
	
	
	// pie-chart 처리
    // Load the Visualization API and the corechart package.
    google.charts.load('current', {'packages':['corechart']});

    // Set a callback to run when the Google Visualization API is loaded.
    google.charts.setOnLoadCallback(drawChart);

    // Callback that creates and populates a data table,
    // instantiates the pie chart, passes in the data and
    // draws it.
    function drawChart() {
    	var size= 0;
    	var url = '/groupware/checktime/all/today';
		$.getJSON(url, function(result) {

			var i = 0;
			$(result).each(function() {
				size = result.length;
					
			});
			
		      // Create the data table.
		      var data = new google.visualization.DataTable();
		      data.addColumn('string', 'Topping');
		      data.addColumn('number', 'Slices');
		      data.addRows([
		        ['출근', size],
		        ['결석', 29-size],
		        ['호준', 1]
		      ]);

		      // Set chart options
		      var options = {'title':'파이챠트',
		                     'width':285,
		                     'height':260};

		      // Instantiate and draw our chart, passing in some options.
		      var chart = new google.visualization.PieChart(document.getElementById('chart_div'));
		      chart.draw(data, options);
		});
		
    }
    
    
    
    // 막대그래프
    $(function () {
    	
    	var mon=0; var tue=0; var wed=0; var thu=0; var fri=0;
    	
    	var mon_id=''; var tue_id=''; var wed_id=''; var thu_id=''; var fri_id='';

    	var enter_mon=''; var enter_tue = ''; var enter_wed = ''; var enter_thu = ''; var enter_fri = '';
    	
    	var mon_score=0; var tue_score=0; var wed_score=0; var thu_score=0; var fri_score=0;
    	var mon_id_score=0; var tue_id_score=0; var wed_id_score=0; var thu_id_score=0; var fri_id_score=0;
    	
    	
    	var url = '/groupware/checktime/all/seven';
		$.getJSON(url, function(result) {

			var i = 0;
			$(result).each(function() {
				
				// 꺼내온 값이 월요일일 경우
				if (this.to_char == "월요일"){
					mon_score += this.score;
					mon+=1;
					enter_mon = this.enter;
					// 꺼내온 값이 현재 로그인된 아이디와 같을 경우
					if(this.id==id){
						mon_id_score = this.score;
					}
				// 꺼내온 값이 화요일일 경우
				}else if (this.to_char == "화요일"){
					tue_score += this.score;
					tue +=1;
					enter_tue = this.enter;
					if(this.id==id){
						tue_id_score = this.score;
					}
				}else if (this.to_char== "수요일"){
					wed_score += this.score;
					wed +=1;
					enter_wed = this.enter;
					if(this.id==id){
						wed_id_score = this.score;
					}
				}else if (this.to_char == "목요일"){
					thu_score += this.score;
					thu +=1;
					enter_thu = this.enter;
					if(this.id==id){
						thu_id_score = this.score;
					}
				}else if (this.to_char == "금요일"){
					fri_score += this.score;
					fri +=1;
					enter_fri = this.enter;
					if(this.id==id){
						fri_id_score = this.score;
					}
				}
				
			}); /* 데이터 개수에 따른 반복문 처리 끝 */

			var mon_score_average = mon_score/mon;
			var tue_score_average = tue_score/mon;
			var wed_score_average = wed_score/mon;
			var thu_score_average = thu_score/mon;
			var fri_score_average = fri_score/mon;
			
			
			
			var mon_start = 0;
			var mon_end = 11;
			
			var title = enter_mon.substring(mon_start, mon_end) + '(월)  ~  ' 
						+ enter_fri.substring(mon_start, mon_end) + '(금)';
			 Highcharts.chart('container', {
		            chart: {
		                type: 'column'
		            },
		            title: {
		                text: '노예의 낙인'
		            },
		            subtitle: {
		                text: title
		            },
		            xAxis: {
		                categories: [
		                    'MON',
		                    'TUE',
		                    'WED',
		                    'THU',
		                    'FRI',
		                ],
		                crosshair: true
		            },
		            yAxis: {
		                min: 0,
		                title: {
		                    text: '언놈이 늦었을까'
		                }
		            },
		            tooltip: {
		                headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
		                pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
		                    '<td style="padding:0"><b>{point.y:.1f} 점</b></td></tr>',
		                footerFormat: '</table>',
		                shared: true,
		                useHTML: true
		            },
		            plotOptions: {
		                column: {
		                    pointPadding: 0.2,
		                    borderWidth: 0
		                }
		            },
		            series: [{
		                name: '나 너',
		                data: [mon_id_score, tue_id_score, wed_id_score, thu_id_score, fri_id_score]
		            }, {
		                name: '우리',
		                data: [mon_score_average, tue_score_average, wed_score_average, thu_score_average, fri_score_average]
		            }]
		        });
		}); /* 서버에서 전달된 JSON 데이터 처리 끝 */
		
    });
	
});
