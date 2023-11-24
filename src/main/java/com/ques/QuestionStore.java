package com.ques;
import java.util.ArrayList;
import java.util.List;
public class QuestionStore {
    private List<Question> questions;

    public QuestionStore() {
        this.questions = new ArrayList<>();
    }

    public void addQuestion(Question question) {
        questions.add(question);
    }

    public List<Question> getAllQuestions() {
        return new ArrayList<>(questions);
    }

    public List<Question> getQuestionsByDifficulty(String difficulty) {
        List<Question> result = new ArrayList<>();
        for (Question question : questions) {
            if (question.getDifficulty().equalsIgnoreCase(difficulty)) {
                result.add(question);
            }
        }
        return result;
    }

    public List<Question> getQuestionsByTopic(String topic) {
        List<Question> result = new ArrayList<>();
        for (Question question : questions) {
            if (question.getTopic().equalsIgnoreCase(topic)) {
                result.add(question);
            }
        }
        return result;
    }

    public List<Question> getQuestionsBySubject(String subject) {
        List<Question> result = new ArrayList<>();
        for (Question question : questions) {
            if (question.getSubject().equalsIgnoreCase(subject)) {
                result.add(question);
            }
        }
        return result;
    }

    public List<Question> getQuestionsByMarks(int marks) {
        List<Question> result = new ArrayList<>();
        for (Question question : questions) {
            if (question.getMarks() == marks) {
                result.add(question);
            }
        }
        return result;
    }

    // Additional methods for managing questions
    public void removeQuestion(Question question) {
        questions.remove(question);
    }

    public void updateQuestion(Question oldQuestion, Question newQuestion) {
        int index = questions.indexOf(oldQuestion);
        if (index != -1) {
            questions.set(index, newQuestion);
        }
    }

    public boolean containsQuestion(Question question) {
        return questions.contains(question);
    }
}
