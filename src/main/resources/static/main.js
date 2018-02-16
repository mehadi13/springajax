$(document).ready(function(){

	$("#submit").click(function(){
		
		var firstName = $('[name=firstName]').val();
		var lastName = $('[name=lastName]').val();
		var email = $('[name=email]').val();
		var designation = $('[name=designation]').val();
		alert('f'+firstName);
		save(firstName,lastName,email,designation);
		
	});

	function save(firstName,lastName,email,designation){
		$.ajax({
				url: '/api/employees',
				type: 'POST',
				contentType: 'application/json',
				data: JSON.stringify({
					firstName:"firstName",
					lastName:"lastName",
					email:"email",
					designation:"designation"
				}),
				//dataType: 'json',
				success: function(result){
					alert('result'+result);
				}
			});

			//get
			/*var value = firstName;
			$.get('/api/employees/'+value,function(data){
				alert(data.id+'\t'+data.name);
			});*/
		
	}

});