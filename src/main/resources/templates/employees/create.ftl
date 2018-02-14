<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>BORAJI.COM</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

	<style type="text/css">
	span.error {
		color: red;
		margin-left: 5px;
	}
</style>


<script
src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		$('button[type=submit]').click(
			function(e) {
				e.preventDefault();
				$('input').next().remove();
				$.post({
					url : '/employees',
					data : $('form[name=employeeForm]').serialize(),
					success : function(res) {
						if (res.validated) {
							$('#resultContainer pre code').text(
								JSON.stringify(res.employee));
							$('#resultContainer').show();
						} else {
							$.each(res.errorMessages, function(key, value) {
								$('input[name=' + key + ']').after(
									'<span class="error">' + value
									+ '</span>');
							});
						}
					}
				})
			});

	});


	$(document).ready(function(){
		
		$("#other").click(function(){
			$( "#target" ).click(function() {
				alert( "Handler for .click() called." );
			});
		});

		$("#load").click(function(){
			alert( "Load button clicked" );
			$.getJSON( "/api/employees/1", function(data){
				alert( "Data received" );
				loaded(data);
			});
		});

		

		function loaded(data){
			console.log( "JSON Data: " + data.firstName );
			$("#employeeList ul").append('<li>'+data.firstName+' '+data.id+'</li>');
		}


		


	});
</script>
</head>
<body>
	<h1>Employee Input Form</h1>
	
	<div id="target">
		Click here
	</div>
	<div id="other">
		Other
	</div>
	<button id="load"> Load </button>
	<button id="load1"> Load1 </button>
	<hr/>



	<div class="container" id="employeeList">
		<ul>

		</ul>
	</div>

	<hr />
	<form action="/employess" method="post" name="employeeForm">
		<table>
			<tr>
				<td>First Name</td>
				<td><input name="firstName" type="text" /></td>
			</tr>
			<tr>
				<td>Last Name</td>
				<td><input name="lastName" type="text" /></td>
			</tr>
			<tr>
				<td>Email</td>
				<td><input name="email" type="text" /></td>
			</tr>
			<tr>
				<td>Designation</td>
				<td><input name="designation" type="text" /></td>
			</tr>
			<tr>
				<td></td>
				<td><button type="submit">Submit</button></td>
			</tr>
		</table>
	</form>
	<!-- Result Container -->
	<div id="resultContainer" style="display: none;">
		<hr />
		<h4 style="color: green;">JSON Response From Server</h4>
		<pre style="color: green;"> <code></code> </pre>
	</div>
</body>
</html>