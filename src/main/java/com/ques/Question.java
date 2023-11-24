package com.ques;
public class Question {

    private String question;
    private String subject;
    private String topic;
    private String difficulty;
    private int marks;

    public Question() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Question(String question, String subject, String topic, String difficulty, int marks) {
		super();
		this.question = question;
		this.subject = subject;
		this.topic = topic;
		this.difficulty = difficulty;
		this.marks = marks;
	}

	public String getQuestion() {
        return question;
    }

    public void setQuestion(String question) {
        this.question = question;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getTopic() {
        return topic;
    }

    public void setTopic(String topic) {
        this.topic = topic;
    }

    public String getDifficulty() {
        return difficulty;
    }

    public void setDifficulty(String difficulty) {
        this.difficulty = difficulty;
    }

    public int getMarks() {
        return marks;
    }

    public void setMarks(int marks) {
        this.marks = marks;
    }
}
