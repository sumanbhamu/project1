<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html>
<head>
<title>Product</title>
<style>
body {
	background: url('resources/images/prd.jpg');
	 background-size: cover; /* to stretch image*/
	  background-repeat:no-repeat;
 	}

table {
	margin-left: 750px;
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

	<form:form method="POST" action="addProduct" commandName="prd">
		<table>
			<tr>
				<td ><h2>Product</h2></td>
			</tr>
			<tr>
				<td colspan="2"><form:label path="prod_id">Product Id</form:label></td>
				<td><form:input path="prod_id" /></td>
			</tr>
			
			<tr>
				<td colspan="2"><form:label path="prod_name">Product Name</form:label></td>
				<td><form:input path="prod_name" /></td>
			</tr>
			
			<tr>
				<td colspan="2"><form:label path="prod_price">Price</form:label></td>
				<td><form:input path="prod_price" /></td>
			</tr>
			
			<tr>
				<td colspan="2"><form:label path="quantity">Quantity</form:label></td>
				<td><form:input path="quantity" /></td>
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