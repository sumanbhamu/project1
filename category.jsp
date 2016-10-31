<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html>
<head>
<title>Category</title>
<style>
body {
	background: url('resources/images/cat.jpg');
	 background-size: cover; /* to stretch image*/
	  background-repeat:no-repeat;
 	}

table {
	margin-left: 50px;
	font-weight: bold;
}
tr {
	font-size: 20px;
    }

td {
	font-size:25;
	padding: 15px;
}
</style>
</head>
<body>

	<form:form method="POST" action="addCategory" commandName="cat">
		<table>
			<tr>
				<td ><h2>Category</h2></td>
			</tr>
			<tr>
				<td colspan="2"><form:label path="cat_id">Category Id</form:label></td>
				<td><form:input path="cat_id" /></td>
			</tr>
			
			<tr>
				<td colspan="2"><form:label path="cat_name">Category Name</form:label></td>
				<td><form:input path="cat_name" /></td>
			</tr>
			<tr>
				<td colspan="2" style="text-align:center;"><input type="submit" value="Submit"
					style="color: green; font-size: 20pt ;"/></td>
				<td colspan="2"><input type="reset" value="Cancel"
					style="color: red; font-size: 20pt" /></td>

			</tr>
		</table>
	</form:form>
</body>
</html>