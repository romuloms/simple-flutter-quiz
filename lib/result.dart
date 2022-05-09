import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'Good score';
    } else if (resultScore <= 12) {
      resultText = 'Medium score';
    } else if (resultScore <= 16) {
      resultText = 'Bad score';
    } else {
      resultText = 'Awful score';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: resetHandler,
            style: TextButton.styleFrom(primary: Colors.blue),
            child: Text(
              'Restart Quiz!',
            ),
          ),
        ],
      ),
    );
  }
}
