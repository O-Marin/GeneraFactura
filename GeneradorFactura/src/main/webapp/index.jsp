<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Log In</title>
</head>
<body>

	<div class="wrapper fadeInDown">
		<div id="formContent">
			<div class="fadeIn first">
				<img src="./common/img/earth.png" id="icon" alt="User Icon" />
			</div>
			<br>
			<%-- Si pones atencion en el formulario a continuation tiene un tag action= con el nombre del servlet procesaLogin
			que es el nombre que tiene @WebServlet en la clase de ese nombre --%>
		<form action="procesaLogin" method="POST">
			<input type="text" id="login" class="fadeIn second" name="login" placeholder="login">
			<input type="password" id="password" class="fadeIn third" name="pass" placeholder="password">
			<input type="submit" class="fadeIn fourth" value="Log In">
		</form>
			<div id="formFooter">
				<a class="underlineHover" href="#">Olvidó la clave?</a>
			</div>
		</div>
	</div>
	
	
</body>
</html>