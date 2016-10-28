<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html>
<head>
    <title>Registration</title>
</head>
<body>

<h2>User Information</h2>
<form:form method="POST" action="addUser" commandName="user">
   <table>
    <tr>
        <td><form:label path="user_id">User Id</form:label></td>
        <td><form:input path="user_id" /></td>
    </tr>
    <tr>
        <td><form:label path="username">User Name</form:label></td>
        <td><form:input path="username" /></td>
    </tr>
    <tr>
        <td><form:label path="password">Password</form:label></td>
        <td><form:input path="password" /></td>
    </tr>
     <tr>
        <td><form:label path="emailid">Email Id</form:label></td>
        <td><form:input path="emailid" /></td>
    </tr>
   
    <tr>
        <td><form:label path="phno">Phone Number</form:label></td>
        <td><form:input path="phno" /></td>
    </tr>
   
    <tr>
        <td colspan="2">
            <input type="submit" value="Submit"/>
        </td>
         <td colspan="2">
            <input type="reset" value="Cancel"/>
        </td>
   
    </tr>
</table>  
</form:form>
</body>
</html>