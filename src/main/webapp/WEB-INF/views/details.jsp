<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lookify</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<script type="text/javascript" src="js/app.js"></script>
</head>
<body>
	<div class="container">
		<div class="d-flex justify-content-end">
			<a href="/dashboard" class=text>Dashboard</a>
		</div>

		<table class="table">
			<tbody>
				<tr>
					<td>Title:</td>
					<td>${song.title}</td>
				</tr>
				<tr>
					<td>Artist:</td>
					<td>${song.artist}</td>
				</tr>
				<tr>
					<td>Rating:</td>
					<td>${song.rating}</td>
				</tr>
			</tbody>
		</table>
		<a href="/songs/${song.id}/edit">Edit Song</a>
		<form action="/songs/${song.id}/delete" method="post">
			<input type="hidden" name="_method" value="delete"> <input
				type="submit" class="btn btn-warning" value="Delete">
		</form>
	</div>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

</body>
</html>