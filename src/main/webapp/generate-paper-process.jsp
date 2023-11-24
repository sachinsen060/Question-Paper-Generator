<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.ques.DatabaseConnector" %>
<%@ page import="com.ques.Question" %>
<%@ page import="com.ques.QuestionStore" %>
<%@ page import="com.ques.QuesPaperGenerator" %>

<%
    int totalMarks = parseIntParameter(request.getParameter("totalMarks"));
    int easyMarks = parseIntParameter(request.getParameter("easyMarks"));
    int mediumMarks = parseIntParameter(request.getParameter("mediumMarks"));
    int hardMarks = parseIntParameter(request.getParameter("hardMarks"));

    if (totalMarks <= 0 || easyMarks < 0 || mediumMarks < 0 || hardMarks < 0) {
        throw new IllegalArgumentException("Invalid input values. Marks should be non-negative.");
    }

    QuestionStore questionStore = new QuestionStore();
    
    String sql = "SELECT * FROM question_store";

    Connection connection = null;
    try {
        connection = DatabaseConnector.getConnection();
        Statement st = connection.createStatement();
        ResultSet resultSet = st.executeQuery(sql);

        while (resultSet.next()) {
            Question question = new Question(
                    resultSet.getString("question"),
                    resultSet.getString("subject"),
                    resultSet.getString("topic"),
                    resultSet.getString("difficulty"),
                    resultSet.getInt("marks")
            );
            questionStore.addQuestion(question);
        }
    } catch (SQLException e) {
        throw new RuntimeException("Error retrieving questions from the database.", e);
    } finally {
        DatabaseConnector.closeConnection(connection);
    }
    
    QuesPaperGenerator paperGenerator = new QuesPaperGenerator();
    
    List<Question> questionPaper = paperGenerator.generateQuestionPaper(questionStore.getAllQuestions(),
            totalMarks, easyMarks, mediumMarks, hardMarks);
    
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Generated Question Paper</title>
    <link rel="stylesheet" type="text/css" href="css/process.css">
</head>
<body>
    <div class="container">
        <nav>
            <a href="index.html">Home</a>
            
        </nav>
        <header>
            <h1>Generated Question Paper</h1>
        </header>
        <section class="main-section">
            <div class="card">
                <ul>
                    <% if (questionPaper.isEmpty()) { %>
                        <li>No questions found for the given criteria.</li>
                    <% } else { %>
                        <% for (Question question : questionPaper) { %>
                            <li>
                                <strong><%= question.getSubject() %></strong>
                                <p><%= question.getQuestion() %> (Marks: <%= question.getMarks() %>)</p>
                            </li>
                        <% } %>
                    <% } %>
                </ul>
            </div>
        </section>
    </div>
</body>
</html>
<%! 
    // Helper method to parse integer parameters with validation
    private int parseIntParameter(String param) {
        try {
            return Integer.parseInt(param);
        } catch (NumberFormatException e) {
            throw new IllegalArgumentException("Invalid input format. Please enter a valid number.", e);
        }
    }
%>
