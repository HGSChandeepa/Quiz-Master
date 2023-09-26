//all the questions
import 'package:flutter/material.dart';
import 'package:quiz_app/model/quiz_model.dart';

class QuizModel {
  final String question;
  final String answer;
  final List<String> answers;

  QuizModel(
      {required this.question, required this.answer, required this.answers});
}

var allQuestions = [
  QuizModel(
    question: "What is the capital of France?",
    answer: "Paris",
    answers: ["Paris", "London", "Berlin", "Rome"],
  ),
  QuizModel(
    question: "Which programming language is Flutter built with?",
    answer: "Dart",
    answers: ["Java", "Kotlin", "Swift", "Dart"],
  ),
  QuizModel(
    question: "What does HTML stand for?",
    answer: "Hypertext Markup Language",
    answers: [
      "Hyper Transfer Markup Language",
      "Hypertext Markup Language",
      "Highly Textual Markup Language",
      "Hyperlink and Text Markup Language",
    ],
  ),
  QuizModel(
    question: "What is the result of 2 + 2 in JavaScript?",
    answer: "4",
    answers: ["2", "3", "4", "5"],
  ),
  QuizModel(
    question: "Which of the following is a CSS preprocessor?",
    answer: "Sass",
    answers: ["Sass", "Less", "Stylus", "CSS-in-JS"],
  ),
  QuizModel(
    question: "What is the main purpose of a constructor in a class?",
    answer: "Initialize object properties",
    answers: [
      "Define methods",
      "Perform calculations",
      "Initialize object properties",
      "Print debug messages",
    ],
  ),
  QuizModel(
    question: "In JavaScript, how do you declare a variable?",
    answer: "var, let, or const",
    answers: ["var, let, or const", "variable", "declare", "varletconst"],
  ),
  QuizModel(
    question: "What does the 'async' keyword in Dart indicate?",
    answer: "A function that returns a Future",
    answers: [
      "A function that returns a Future",
      "A function that runs immediately",
      "A function that waits for user input",
      "A function that generates random numbers",
    ],
  ),
  QuizModel(
    question:
        "What is the purpose of the 'querySelector' method in JavaScript?",
    answer: "Select HTML elements by CSS selector",
    answers: [
      "Modify the browser's URL",
      "Select HTML elements by tag name",
      "Select HTML elements by CSS selector",
      "Create a new HTML element",
    ],
  ),
  QuizModel(
    question: "Which keyword is used to declare a function in JavaScript?",
    answer: "function",
    answers: ["method", "func", "def", "function"],
  ),
];
