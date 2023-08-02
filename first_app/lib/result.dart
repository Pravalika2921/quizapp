import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  //const MyWidget({super.key});
  final int resultScore;
  final Function _resulthandler;
  Result(this.resultScore, this._resulthandler);
  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are awesome!';
    } else if (resultScore <= 12) {
      resultText = 'Pretty likable!';
    } else if (resultScore <= 16) {
      resultText = 'You are ..strange!';
    } else {
      resultText = 'You are bad!';
    }
    return resultText;
  }

  void _onRestartPressed(BuildContext context) {
    Future.delayed(Duration.zero, () {
      _resulthandler();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.normal),
            textAlign: TextAlign.center,
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              primary: Colors.black87,
              side: BorderSide(color: Color.fromARGB(255, 57, 3, 149)),
            ),
            child: Text('Restart Quiz'),
            onPressed: () => _onRestartPressed(context),
          )
        ],
      ),
    );
  }
}

FlatButton({required Text child, required Function onPressed}) {}


    //OutlineButton(
    //        child: Text('Restart Quiz!'),
      //      borderSide: BorderSide(color: Colors.black12),
        //    textColor: Colors.deepPurple,
          //  onPressed: resulthandler,
          //)
//OutlinedButton(
  //            style: OutlinedButton.styleFrom(primary: Colors.black12),
    //          //side:BorderSide(color:Colors.deepPurple),),
      //        child: Text('Restart Quiz'),
        //      onPressed: () {
          //      resulthandler;
            //    print('pressed outlined button');
              //}),
              //FlatButton(
            //child: Text('Restrat Quiz!'),
           // onPressed: _resulthandler,
          //),