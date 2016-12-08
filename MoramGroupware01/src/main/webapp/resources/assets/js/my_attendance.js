$(document).ready(function(){
	var loginid = $('#login_id').attr('data-id');
	
	getlist();
	
	
	function getlist() {
		// 
		var url='/groupware/checktime/all/allweek';
		
		// 
		$.getJSON(url, function(result) {
			var list = '';
			var date='';
			var tochar='';
			var val=1;

			var enter = '';
			var leave = '';
			var attendance = '';
			$(result).each(function() {
				if(this.id==loginid){
					if(this.enter!=''&&this.enter!=null){
					date = this.enter;
					tochar = this.to_char;
					tochar = tochar.substring(0, 1);
					date = date.substring(0, 10)+' ('+tochar+')';
					
				if(this.leave!=null&&this.leave!=''){
					list +=
					'<tr>'
					+'<th>'+ val +'</th>'
					+'<th scope="row">'
					+date
					+'</th>'
					+'<td>'
					+this.enter
					+'</td>'
					+'<td>'
					+this.leave
					+'</td>'
					+'<td>'
					+this.attendance
					+'</td>'
					+'</tr>';
				} else {
					list +=
						'<tr>'
						+'<th>'+ val +'</th>'
						+'<th scope="row">'
						+date
						+'</th>'
						+'<td>'
						+this.enter
						+'</td>'
						+'<td>'
						+'-'
						+'</td>'
						+'<td>'
						+'결석'
						+'</td>'
						+'</tr>';
				}
				
					$('#check_all').html(list);
					
					
					
					} else {
						list= '입실 기록이 없습니다.';
						+'<th scope="row">'+ list +'</th>';
						$('#check_all').html(list);
					}
					if(val===5){
						return false;
					}
					val+=1;
					
				}
			});
		
		});
		
	};
	
});