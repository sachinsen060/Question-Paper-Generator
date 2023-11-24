# Question-Paper-Generator
The Question Paper Generator is a web-based application that allows users to generate question papers for exams based on their specified criteria such as total marks, and marks distribution across different difficulty levels.

# Table of Contents
Features
Getting Started
Prerequisites
Installation
Usage
Project Structure
Technologies Used

# Features
Question Retrieval: Retrieve questions from a database based on subjects, topics, and difficulty levels.
Paper Generation: Generate question papers with a specified total mark and marks distribution across easy, medium, and hard difficulty levels.
Web Interface: User-friendly web interface for inputting criteria and viewing generated question papers.
Responsive Design: The application is designed to work seamlessly on various devices.

# Getting Started
# Prerequisites
Java Development Kit (JDK)
Apache Tomcat Server
MySQL Database

# Installation
Clone the repository:

git clone - https://github.com/sachinsen060/Question-Paper-Generator.git

Database Setup:

Create a MySQL database and import the provided SQL schema file.
Configure Database Connection:

Open DatabaseConnector.java in com.ques package.
Update the database connection details.
Run the Application:

Deploy the project on your Apache Tomcat server.

# Usage
Access the application through the web browser.
Enter the required criteria, such as total marks, easy marks, medium marks, and hard marks.
Click the "Generate Paper" button to create a question paper.
View the generated question paper on the web page.

# Project Structure
src: Contains Java source code.
WebContent: Contains web-related files, including JSP pages, CSS, and images.

# Technologies Used
Java
JSP (JavaServer Pages)
Servlets
HTML, CSS
MySQL Database
