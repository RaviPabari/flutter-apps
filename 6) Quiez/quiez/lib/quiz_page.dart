import 'package:flutter/material.dart';
import 'package:spring_button/spring_button.dart';
import 'quention_file.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

QuizList que = QuizList();

class Quizz extends StatefulWidget {
  Quizz({Key key}) : super(key: key);

  @override
  _QuizzState createState() => _QuizzState();
}

class _QuizzState extends State<Quizz> {
  List<Icon> scoreKeeper = [];
  void checkAnswer(bool s1) {
    //here we have encapsulated our question_file.dart with main.dart
    //by making the questionList private and using a helper function
    //to extract the question and answer
    bool realAns = que.getAnswer();
    if (s1 == realAns) {
      setState(() {
        scoreKeeper.add(Icon(
          Icons.check,
          color: Colors.green,
        ));
        que.setNextQuestion();
      });
    } else {
      setState(() {
        scoreKeeper.add(Icon(
          Icons.close,
          color: Colors.red,
        ));
        que.setNextQuestion();
      });
    }
    if (que.isListEmpty() == true) {
      setState(() {
        Alert(
          context: context,
          title: 'Finished !',
          desc: 'You have finished the quiz !',
          image: Image.asset('images/done.gif'),
          buttons: [
            DialogButton(
              onPressed: () => Navigator.pop(context),
              child: Text(
                'Done !',
                style: TextStyle(fontSize: 24),
              ),
            ),
          ],
        ).show();
        que.resetPointer();
        scoreKeeper=[];
      });
    }
  }

  Widget row(String text, Color color) {
    return Padding(
      padding: EdgeInsets.all(12.5),
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(18, 18, 23, 1),
          borderRadius: const BorderRadius.all(const Radius.circular(10.0)),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 12.5,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage('images/image2.jpg'),
              fit: BoxFit.fill,
            )),
          ),
          Column(
            children: <Widget>[
              //!QuestionText
              Expanded(
                flex: 5,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      //here we have encapsulated our question_file.dart with main.dart
                      //by making the questionList private and using a helper function
                      //to extract the question and answer
                      que.getQuestion(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              //! TrueButton
              Expanded(
                child: FlatButton(
                  onPressed: null,
                  child: SpringButton(
                      SpringButtonType.OnlyScale,
                      row(
                        "True",
                        Colors.deepPurpleAccent,
                      ), onTap: () {
                    checkAnswer(true);
                  }),
                ),
              ),

              //! FalseButton
              Expanded(
                child: FlatButton(
                  onPressed: null,
                  child: SpringButton(
                    SpringButtonType.OnlyScale,
                    row(
                      "False",
                      Colors.redAccent,
                    ),
                    onTap: () {
                      checkAnswer(false);
                    },
                  ),
                ),
              ),
              //! Row for scoreKeeper
              Wrap(
                direction: Axis.horizontal,
                children: scoreKeeper,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
