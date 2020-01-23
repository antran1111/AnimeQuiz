import 'question.dart';


//todo anime weeber quiz v2,
//create a score tracker
//add in separate images for each quiz question
//load the image
//display final score and percentage at the end of the quiz

class QuizBrain {
  int _questionNumber = 0;
  int correctQuestions = 0;
  int wrongQuestions = 0;
  String imageAlert;
  String weebResults;
  String alertTitle;



  int sumCorrectScore () {

    correctQuestions++;
    print(correctQuestions);
    return correctQuestions;

  }
  int sumWrongScore(){
    wrongQuestions++;
    print(wrongQuestions);
    return wrongQuestions;
  }
//is it better to add in the images as a parallel or stash it in _questionBank as another parameter?
  List<Question> _questionBank = [
    Question('You like cats and call them Neko', true),
    Question('You know how to do caramell dansen', false),
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

  //a list of string containing the location of the asset image
  List<String> _imageBank = [
    ('images/animeBank1.png'),
    ('images/animeBank4.png'),
    ('images/animeBank12.png'),
    ('images/animeBank8.png'),
    ('images/animeBank10.png'),
    ('images/animeBank11.png'),
    ('images/animeBank7.png'),
    ('images/animeBank8.png'),
    ('images/animeBank9.png'),
    ('images/animeBank10.png'),
    ('images/animeBank11.png'),
    ('images/animeBank12.png'),
    ('images/animeBank13.png'),

  ];

  String getQuestionImage() {
    return _imageBank[_questionNumber];
  }

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


  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {

      print('Now returning true');
      return true;

    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
    correctQuestions = 0;
    wrongQuestions = 0;
    //reset correctQuestions and questionNumber so you can start over
  }


  double calculatePercentage () {
    double score;
    if (wrongQuestions+correctQuestions == 0 || wrongQuestions+correctQuestions == null) score = 100;
    else {
      score = correctQuestions / (wrongQuestions + correctQuestions) * 100;
      print(score);
    } return score;

  }


  void weebAnswers () {

    double yourScore = calculatePercentage();
    if (yourScore > 70) {
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
