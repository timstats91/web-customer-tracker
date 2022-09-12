<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!doctype html>

<html>

	<head>
		<title>Add A New Customer</title>
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" />
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/add-customer-style.css" />
	</head>
	
	<body>
		<!-- Page Header -->
		<div id="wrapper">
			<div id="header">
				<h1>Add A New Customer</h1>
			</div>
		</div>
		
		<!-- Table of Customer Information -->
		<div id="container">
			<form:form action="saveCustomer" modelAttribute="customer" method="POST">
			
				<!-- need to associate this data with customer id -->
				<form:hidden path="id" />
			
				<table>
					<tbody>
						<tr>
							<td><label>First name: </label></td>
							<td><form:input path="firstName" /></td>
						</tr>
						<tr>
							<td><label>Last name: </label></td>
							<td><form:input path="lastName" /></td>
						</tr>
						<tr>
							<td><label>Email: </label></td>
							<td><form:input path="email" /></td>
						</tr>
						<tr>
							<td></td>
							<td><input type="submit" value="Save" class="save" /></td>
						</tr>
					</tbody>
				</table>
			</form:form>
			<p><a href="${ pageContext.request.contextPath }/customer/list">Back to List</a></p>
		</div>
	</body>

</html>