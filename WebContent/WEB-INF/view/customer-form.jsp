<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>

<html>

	<head>
		<title>Add A New Customer</title>
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" />
	</head>
	
	<body>
		<!-- Page Header -->
		<div id="wrapper">
			<div id="header">
				<h1>Add A New Customer</h1>
			</div>
		</div>
		
		<!-- Button for Adding a Customer -->
		<input type="button" value="Add Customer" class="add-button" 
			   onclick="window.location.href='showFormForAdd'; return false;"
		/>
		
		<!-- Table of Customer Information -->
		<div id="content">
			<table>
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
				</tr>
				
				<!-- Loop over and print all customers -->
				<c:forEach var="tempCustomer" items="${ customers }">
					<tr>
						<td>${ tempCustomer.firstName }</td>
						<td>${ tempCustomer.lastName }</td>
						<td>${ tempCustomer.email }</td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</body>

</html>