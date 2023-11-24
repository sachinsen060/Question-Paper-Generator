<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.ques.DatabaseConnector"%>
<%@ page import="com.ques.Question"%>
<%@ page import="com.ques.QuestionStore"%>
<%@ page import="com.ques.QuesPaperGenerator"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>View Questions</title>
<link rel="stylesheet" href="css/style_vq.css">

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
				<h2>View Questions</h2>
				<%
				QuestionStore questionStore = new QuestionStore();

				Connection connection = null;
				try {
					connection = DatabaseConnector.getConnection();
					// Retrieve questions from the database
					String sql = "SELECT * FROM question_store";
					try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
						ResultSet resultSet = preparedStatement.executeQuery();
						while (resultSet.next()) {
					Question question = new Question(resultSet.getString("question"), resultSet.getString("subject"),
							resultSet.getString("topic"), resultSet.getString("difficulty"), resultSet.getInt("marks"));
					questionStore.addQuestion(question);
						}
					} catch (SQLException e) {
						throw new RuntimeException("Error retrieving questions from the database.", e);
					} finally {
						DatabaseConnector.closeConnection(connection);
					}

					// Set the questionList attribute to make it available in the JSP
					request.setAttribute("questionList", questionStore.getAllQuestions());
				} catch (Exception e) {
					out.println("<h1>Error: " + e.getMessage() + "</h1>");
					e.printStackTrace();
				}
				%>
				<table>
					<thead>
						<tr>
							<th>Question</th>
							<th>Subject</th>
							<th>Topic</th>
							<th>Difficulty</th>
							<th>Marks</th>
						</tr>
					</thead>
					<tbody>
						<!-- Use a loop to iterate through the questions -->
						<c:forEach var="question" items="${questionList}">
							<tr>
								<td>${question.question}</td>
								<td>${question.subject}</td>
								<td>${question.topic}</td>
								<td>${question.difficulty}</td>
								<td>${question.marks}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</section>
	</div>
</body>
</html>
