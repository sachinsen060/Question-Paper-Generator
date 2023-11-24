package com.ques;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

public class QuesPaperGenerator {

    public List<Question> generateQuestionPaper(List<Question> questionStore, int totalMarks,
                                               int easyMarks, int mediumMarks, int hardMarks) {

        // Validate input parameters
        validateMarks(totalMarks);
        validateMarks(easyMarks);
        validateMarks(mediumMarks);
        validateMarks(hardMarks);

        // Calculate the remaining marks needed
        int remainingMarks = totalMarks - (easyMarks + mediumMarks + hardMarks);

        // Filter questions based on difficulty and marks
        List<Question> easyQuestions = filterQuestions(questionStore, "Easy", easyMarks);
        List<Question> mediumQuestions = filterQuestions(questionStore, "Medium", mediumMarks);
        List<Question> hardQuestions = filterQuestions(questionStore, "Hard", hardMarks);

        // Randomly select questions
        Random random = new Random();
        List<Question> selectedQuestions = selectRandomQuestions(easyQuestions, easyMarks, random);
        selectedQuestions.addAll(selectRandomQuestions(mediumQuestions, mediumMarks, random));
        selectedQuestions.addAll(selectRandomQuestions(hardQuestions, hardMarks, random));

        // Adjust the number of questions based on remaining marks
        selectedQuestions.addAll(selectRandomQuestions(questionStore, remainingMarks, random));

        return selectedQuestions;
    }

    private List<Question> filterQuestions(List<Question> questionStore, String difficulty, int marks) {
        // Filter questions based on difficulty and required marks
        List<Question> filteredQuestions = new ArrayList<>();
        for (Question question : questionStore) {
            if (question.getDifficulty().equalsIgnoreCase(difficulty) && question.getMarks() == marks) {
                filteredQuestions.add(question);
            }
        }
        return filteredQuestions;
    }

    private List<Question> selectRandomQuestions(List<Question> questions, int requiredMarks, Random random) {
        List<Question> selectedQuestions = new ArrayList<>();
        int currentMarks = 0;

        while (currentMarks < requiredMarks && !questions.isEmpty()) {
            // Randomly select a question
            int randomIndex = random.nextInt(questions.size());
            Question selectedQuestion = questions.remove(randomIndex);

            // Add the selected question to the list
            selectedQuestions.add(selectedQuestion);

            // Update the current marks
            currentMarks += selectedQuestion.getMarks();
        }

        return selectedQuestions;
    }

    private void validateMarks(int marks) {
        if (marks < 0) {
            throw new IllegalArgumentException("Marks should be non-negative.");
        }
    }
}

// doc 
/*
 * it selects questions from each difficulty level until the specified marks for
 * that level are reached. The remaining marks are then distributed among the
 * difficulty levels
 */