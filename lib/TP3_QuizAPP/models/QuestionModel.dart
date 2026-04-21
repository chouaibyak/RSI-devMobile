class Questionmodel {
  final String question;
  final List<String> answers;
  final int correctIndex;

  Questionmodel({
    required this.question,
    required this.answers,
    required this.correctIndex
  });
}