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
			
			<input type="hidden" name="command" value="UPDATE" />
			<input type="hidden" name="studentId" value="${the_student.id }" />
		
			<table>
				<tbody>
					<tr>
						<td><label>First Name:</label></td>
						<td><input type="text" name="firstName" value="${the_student.firstName }"/></td>
					</tr>
					
					<tr>
						<td><label>Last Name:</label></td>
						<td><input type="text" name="lastName" value="${the_student.lastName }"/></td>
					</tr>
					
					<tr>
						<td><label>Email:</label></td>
						<td><input type="text" name="email" value= "${the_student.email }"/></td>
					</tr>
					
					<tr>
						<td><label></label></td>
						<td><input type="submit" value="Update" class="save"/></td>
					</tr>
					
					
				</tbody>
			</table>
		</form>
	</div>
	
	<div style="clear:both;"></div>
	
	<p>
		<a href="StudentContollerServlet">Back to List</a>
	</p>
</body>
</html>