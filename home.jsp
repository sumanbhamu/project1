<%@ page language="java" contentType="text/html; charset=windows-1256"
	pageEncoding="windows-1256"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1256">
<title>Home page</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
.carousel-inner>.item>img, .carousel-inner>.item>a>img {
	width: 40%; height:10%;
	margin: auto;
}
</style>
<body bgcolor="pink">
	Sample page called from controller
	<br>
	<a href="login">log in</a>
	<a href="register">Register</a>

	<div class="container">
		<br>
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
				<li data-target="#myCarousel" data-slide-to="3"></li>

			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img src="resources/images/pic6.jpg" alt="pic2" width="4690"	height="9500">
				</div>

				<div class="item">
					<img src="resources/images/pic3.jpg" alt="pic3" width="660"	height="645">
				</div>

				<div class="item">
					<img src="resources/images/kancheepu.jpg" alt="pic3" width="9600" height="9450">
				</div>
				<div class="item">
					<img src="resources/images/pic4.png" alt="pic3" width="4600"	height="445">
				</div>

			</div>

			<!-- Left and right controls -->
			<a class="left carousel-control" href="#myCarousel" role="button"
				data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel" role="button"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
	</div>
<br>
	<center>
		<table>
			<tr>
				<td><a href="product1"> <img
						src="resources/images/pic8.jpg" height="200" width="200"></img>
				</a></td>
				<td><a href="product2"> <img
						src="resources/images/pic2.jpg" height="200" width="200"></img>
				</a></td>
				<td><a href="product3"> <img
						src="resources/images/pic10.jpg" height="200" width="200"></img>
				</a></td>
			</tr>
		</table>
	</center>



</body>
</html>