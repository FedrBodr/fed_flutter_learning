import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = "You are incorrect";
    } else if (resultScore <= 15) {
      resultText = "Pretty likable";
    } else if (resultScore <= 25) {
      resultText = "Pretty likable";
    } else {
      resultText = "You are so good";
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
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            textColor: Colors.blue,
            child: Text("Restart quiz"),
            onPressed: resetHandler,
          )
        ],
      ),
    );
  }
}
