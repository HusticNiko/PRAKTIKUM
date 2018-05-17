

<html>

<head>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<title>Kalkulator</title>
<script src="javascript.js"></script>
<link rel="stylesheet" href="Style.css">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />

<!-- jQuery library -->
<link rel="script"
	href="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js" />


<link href="css/main.css" rel="stylesheet" />

</head>

<body>

	<div class="container">
		<h1>Kalkulator</h1>
		<form name="forma" method="post">
		<div class="form-group">
			<label>Prvo število:</label>
			<input name="st1" type="text" class="form-control" /> 
		</div>
		<div class="form-group">
			<label>Drugo število:</label>
			<input name="st2" type="text" class="form-control" />
		</div>
		<div class="form-group">
			<label>Operacija:</label>
			<select name="operacija" class="form-control" >
				<option value="plus">+</option>
				<option value="minus">-</option>
				<option value="krat">*</option>
				<option value="ulomek">/</option>
			</select>
		</div>
		<div>
		<input class="btn btn-default" type="submit" value="Potrdi">
		</div>
		</form>
	</div>

</body>

</html>