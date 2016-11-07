<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html>
<head>
<title>Add product</title>
<style>
body {
	background: url('resources/images/regis.jpg');
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

	<form:form method="POST" action="addProduct" commandName="product" enctype="multipart/form-data">
		<table>
			<tr>
				<td ><h2>Add Product</h2></td>
			</tr>
			<tr>
				<td colspan="2"><form:label path="user_id">Product Name</form:label></td>
				<td><form:input path="user_id" /></td>
			</tr>
			<tr>
				<td colspan="2"><form:label path="username">Quantity</form:label></td>
				<td><form:input path="username" /></td>
			</tr>
			<tr>
				<td colspan="2"><form:label path="password">Price</form:label></td>
				<td><form:input path="password" /></td>
			</tr>
			<tr>
				<td colspan="2"><form:label path="emailid">Upload Product Image</form:label></td>
				<td><form:input path="emailid" /></td>
			</tr>
			<tr>
			<td>
			             Select File:<input type="file" name="fname"/><br/>  
                         <input type="image" src="\.jpg|\.png|\.JPG|\.PNG|\.jpeg|\.JPEG)$/"/>  
                         <input type="submit" value="upload" /></td></tr>
</form>  


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