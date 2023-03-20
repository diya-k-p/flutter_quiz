import 'question.dart';

class QuizBrain {

  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question('Flutter developed by google', true),
    Question('Flutter is a programming language.', false),
    Question('Flutter is an open source UI toolkit', true),
    Question('2 types widgets in flutter', true),
    Question('A srteam is a sequence of asynchronous flutter events.', true),
    Question('Serial element is used as an identifier', false),
    Question('pubpec.xml file used for build flutter project',false),
    Question( 'Is flutter is sdk',true),
    Question( 'SDK stand for \"Software Data Kit\"', false),
    Question( 'The dart language can be compiled in AOT', true),
    Question('Without the main() function, we cannot write any program in flutter ',true),
    Question('Keys in flutter are used as an identifier for widgets',true),
    Question('Alibaba is flutter used app', true),
    Question( 'pubspec.yalm is the project configuration file that will use a lot during with the flutter project', true),
    Question( 'cold restart works with a small r key on the terminal or commmands prompt', false),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length -1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('Now returing true');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
