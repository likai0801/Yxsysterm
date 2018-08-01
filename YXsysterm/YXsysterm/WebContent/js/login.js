$(function(){
	$('#login').click(function(){
		var username=$(':text').val();
		var pwd=$(':password').val();
		var save=$(':checkbox').prop('checked');

		if(username&&pwd){
			$.get('loginController.do',{'username':username,'password':pwd},function(){
				
			});
		}else{
			alert('用户名或密码不能为空');
		}
		
	});
});