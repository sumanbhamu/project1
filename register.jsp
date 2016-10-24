<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
<title>Insert title here</title>
</head>
<body bgcolor="magenda">
hi
<form action="login.jsp"method="get">
    <table>
<tr><td> First Name:</td><td> <input type="text" name="Fnam1" /></td></tr>
   <tr><td> Last Name: </td><td> <input type="text" name="Lname" /></td></tr>
   <tr><td>  Password:</td><td> <input type="password" name="psd"/></td></tr>
    <tr><td> Address:</td><td> <textarea rows="2" cols="5" name="add"></textarea></td></tr>

   


     <tr><td  colspan="2"><fieldset>
     <legend>Hobies</legend>
     Reading: <input type="checkbox" name="chk"/>
     Music: <input type="checkbox" name="chk1"/>
     </fieldset></td></tr>
   

     <tr><td colspan="2"><fieldset>
     <legend>Gender</legend>
     Female: <input type="radio" name="rad"/>
     Male: <input type="radio" name="rad"/>
     </fieldset></td></tr>
    <tr><td> <input type="submit" value="Sign-up" /></td>
   <td>  <input type="reset" value="cancle"/></td></tr></table>
</form>
</body>
</html>