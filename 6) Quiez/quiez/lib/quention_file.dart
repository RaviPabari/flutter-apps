import 'package:quiez/question_class.dart';

class QuizList {
  //here we have encapsulated our question_file.dart with main.dart
  //by making the questionList private and using a helper function
  //to extract the question and answer
  int _scorePointer = 0;

  List<Question> _questionList = [
    
    Question('Exorcism is real.',true),
    Question('Possession by ghosts or evil spirits is real.',true),
    Question('Paranormal activity is real.',false),
    Question('Priests are the ones who bless haunted houses or possessed people.',true),
    Question('Vampires existed....',false),
    Question('A Oujia board can\'t talk to the dead.',false),
    Question('People have been possessed by evil spirits through playing with a Oujia board.',true),
    Question('Ghosts are not real.',false),
    Question('Witchcraft is real',true),
  ];
  //helper fun1 to get questions
  String getQuestion() {
    return _questionList[_scorePointer].questions;
  }

  //helper fun2 to get answers
  bool getAnswer() {
    return _questionList[_scorePointer].answers;
  }

  //removing the scorePointer from main.dart and putting it here so the quiz fucntionlaity
  //and the displaying are placed in diff files and dont have to deal about it
  //making a helper function to increase the scorePointer and check if it does
  //not get out out the range of our questionList
  void setNextQuestion() {
    if (_scorePointer < _questionList.length ) {
      _scorePointer++;
    }
  }

  bool isListEmpty() {
    if (_scorePointer >= _questionList.length ) {
      return true;
    } else {
      return false;
    }
  }

  void resetPointer() {
    _scorePointer = 0;
  }
}
