import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  //const MyWidget({super.key});
  final VoidCallback selectHandler;
  final String answerText;
  Answer(this.selectHandler, String this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        //textcolor : Colors.black,
        child: Text(answerText),
        onPressed: selectHandler,
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all(Color.fromARGB(223, 37, 161, 82)),
        ),
      ),
    );
  }
}
