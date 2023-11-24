<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.ques.DatabaseConnector"%>
<%@ page import="com.ques.Question"%>
<%@ page import="com.ques.QuestionStore"%>
<%@ page import="com.ques.QuesPaperGenerator"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Generate Question Paper</title>
<link rel="stylesheet" href="css/style_gp.css">

</head>
<body>
	<div class="container">
		<nav>
			<a href="index.html">Home</a> <a href="about.html">About</a> <a href="contact.html">Contact</a>
		</nav>
		<header>
			<h1>Question Paper Generator</h1>
		</header>
		<section class="main-section">
			<div class="card">
				<h2>Generate Question Paper</h2>
				<form action="generate-paper-process.jsp" method="post">
					<label for="totalMarks">Total Marks:</label> <input type="number"
						id="totalMarks" name="totalMarks" required> <label
						for="easyMarks">Easy Marks:</label> <input type="number"
						id="easyMarks" name="easyMarks" required> <label
						for="mediumMarks">Medium Marks:</label> <input type="number"
						id="mediumMarks" name="mediumMarks" required> <label
						for="hardMarks">Hard Marks:</label> <input type="number"
						id="hardMarks" name="hardMarks" required>

					<button type="submit" class="btn">Generate Paper</button>
				</form>
			</div>
		</section>
	</div>
</body>
</html>
