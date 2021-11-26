<html>
<head>
<link type="text/css" rel="stylesheet" href="css/style.css">
<link type="text/css" rel="stylesheet" href="css/add-student-style.css">
</head>
<body>
<div id="wrapper">
<div id="header">Foo University</div>
</div>

      <div id="container">
      
        <h1>Update Student</h1>
		<form action="StudentContollerServlet" method="get">
			
			<input type="hidden" name="command" value="ADD" />
		
			<table>
				<tbody>
					<tr>
						<td><label>First Name:</label></td>
						<td><input type="text" name="firstName"/></td>
					</tr>
					
					<tr>
						<td><label>Last Name:</label></td>
						<td><input type="text" name="lastName"/></td>
					</tr>
					
					<tr>
						<td><label>Email:</label></td>
						<td><input type="text" name="email" /></td>
					</tr>
					
					<tr>
						<td><label></label></td>
						<td><input type="submit" value="Save" class="save"/></td>
					</tr>
					
					
				</tbody>
			</table>
		</form>
	</div>
	
	<div style="clear:both;"></div>
	
	<p>
		<a href="StudentControllerServlet">Back to List</a>
	</p>
</body>
</html>