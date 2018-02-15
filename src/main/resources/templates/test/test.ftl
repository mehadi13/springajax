<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Test</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</style>


<script
src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">

	
	$(document).ready(function(){

		//get
		$("#getOne").click(function(){
			var value = $(this).val();
			$.get('/api/test/'+value,function(data){
				alert(data.id+'\t'+data.name);
			});
			alert('value'+value);
		});


		//getJSON
		$("#getOneByJSON").click(function(){
			var value = $(this).val();
			$.getJSON('/api/test/'+value,function(data){
				alert(data.id+'\t'+data.name);
			});
			alert('value'+value);
		});

		//post
		$("#postRequest").click(function(){
			$.ajax({
				url: '/api/test/obj',
				type: 'POST',
				contentType: 'application/json',
				data: JSON.stringify({
					id:4,
					name:"Bob"
				}),
				//dataType: 'json',
				success: function(result){
					alert('result'+result);
				}
			});
		});
		

		//delete
		$("#delete").click(function(){
			var value = $(this).val();
			$.ajax({
				url: '/api/test/'+value,
				type: 'DELETE',
				success: function(result) {
					alert('result'+result);
				}
			});
		});

		//update
		$("#update").click(function(){
			var value = $(this).val();
			$.ajax({
				url: '/api/test/'+value,
				type: 'PUT',
				contentType: 'application/json',
				data: JSON.stringify({
					id:1,
					name:"Bob"
				}),
				dataType: 'json',
				success: function(result) {
					alert('result'+result);
				}
			});
		});


	});

</script>
</head>
<body>
	
	<button id="getOne" value="1">Get</button>
	<button id="getOneByJSON" value="1">Get JSON</button>
	<button id="postRequest">Post</button>
	<button id="delete" value="1">Delete</button>
	<button id="update" value="1">Update</button>


</body>
</html>