import 'question.dart';

//change questions to are you an anime weeber?
//if true >10, return yes
//else return no. You need to watch more anime


class QuizBrain {
  int _questionNumber = 0;
  int correctQuestions = 0;
  String imageAlert;
  String weebResults;
  String alertTitle;


  int sumCorrectScore () {

    correctQuestions++;
    print(correctQuestions);
    return correctQuestions;

  }

  List<Question> _questionBank = [
    Question('You like cats and call them Neko', true),
    Question('You know how to do carameal dancing', false),
    Question('You like to yell out special attack moves when you watch anime', true),
    Question('Watching Anime makes you happy', true),
    Question('Your favorite anime character\'s bodypillow\'s is in your room', true),
    Question('You like to collect anime action figurines', true),
    Question(
        'You like to watch marvel comic books',
        false),
    Question(
        'You believe that dying will transport you to another magical world where you become overpowered',
        true),
    Question(
        'You think you can speak Japanese after watching anime for several years',
        true),
    Question(
        'You collect swords and keep them for protection',
        true),
    Question('All your friends don\'t understand you because you watch anime', true),
    Question(
        'You don\'t have any real friends because you spend all your time watching anime',
        true),
    Question(
        'You like to dress up as your favorite anime character at least once a year',
        true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  //TODO: Step 3 Part A - Create a method called isFinished() here that checks to see if we have reached the last question. It should return (have an output) true if we've reached the last question and it should return false if we're not there yet.

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      //TODO: Step 3 Part B - Use a print statement to check that isFinished is returning true when you are indeed at the end of the quiz and when a restart should happen.

      print('Now returning true');
      return true;

    } else {
      return false;
    }
  }

  //TODO: Step 4 part B - Create a reset() method here that sets the questionNumber back to 0.
  void reset() {
    _questionNumber = 0;
    correctQuestions = 0;
    //reset correctQuestions and questionNumber so you can start over
  }



  void weebAnswers () {
    if (correctQuestions > 7) {
      alertTitle = "Congratulations!";
      weebResults = "Yes you are a Weeb!";
      imageAlert = "images/monkeyweeb.png";
    }
    else {
      alertTitle = "Oh No!";
      weebResults =
      "No you are not weeb enough.\n You need to watch more anime";
      imageAlert = "images/sadweeb.png";
    }
  }
}
