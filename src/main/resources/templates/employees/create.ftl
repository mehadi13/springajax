<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>BORAJI.COM</title>
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
</script>
</head>
<body>
	<h1>Employee Input Form</h1>
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