<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<html>
	<head>
	 <link type="text/css" rel="stylesheet" href="css/style.css">
	</head>
<body>

	<div id="wrapper">
		<div id="header">
		   FooBar University
		</div>
	</div>
	<br>
	
	
	<div id="container">
		<div id="content">
		
		<input type="button" value="Add Student"
		       onclick="window.location.href='add-student-form.jsp';return false;"
		       class="add-student-button"
		/>
		
			<table>
			
			<tr>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Email</th>
			<th>Action</th>
			</tr>
			
			<c:forEach var="tempStudent" items="${student_list}">
			
			<!-- Load Student for update -->
			<c:url var="tempLink" value="StudentContollerServlet">
				<c:param name="command" value="LOAD" />
				<c:param name="studentId" value="${tempStudent.id}"/>
			</c:url>
			
			<!-- Delete link -->
			<c:url var="deleteLink" value="StudentContollerServlet">
				<c:param name="command" value="DELETE" />
				<c:param name="studentId" value="${tempStudent.id}"/>
			</c:url>
			
			
			<tr>
			<td>${tempStudent.getFirstName()}</td>
			<td>${tempStudent.getLastName()}</td>
			<td>${tempStudent.getEmail()}</td>
			<td>
				<a href="${tempLink}">Update</a>
				|
				<a href="${deleteLink}" onclick="if(!(confirm('Are you sure you want to delete?')))return false">Delete</a>
				
			</td>
			</tr>
			</c:forEach>
			
			</table>
		   
		</div>
	</div>
	


</body>
</html>