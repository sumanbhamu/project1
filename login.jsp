<%@ page language="java" contentType="text/html; charset=windows-1256"
	pageEncoding="windows-1256"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1256">
<title>Insert title here</title>
</head>
<body bgcolor="pink">

	<marquee behavior="alternate"> Welcome </marquee> <br>
	<!-- to display info -->
	 ${info}
	<form action="validate" method="get">
		<center><table>
			<tr style="color:green;font-size:15pt">
				<td>Email-id:</td>
				<td><input type="email" name="ema1" placeholder="abc@gmail.com"/></td>
			</tr>
			<tr style="color:green;font-size:15pt">
				<td>Password:</td>
				<td><input type="password" name="psd" /><br></td>
			</tr>
			<tr>
				<td><input type="submit" value="Sign-in" /></td>
			    <td><input type="reset" value="Cancle" /></td>
			</tr>
		</table></center>
	</form>
	
</body>
</html>