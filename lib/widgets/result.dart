import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int count;
  final int total;
  final Function onClearState;

  Result({this.count, this.total, this.onClearState}) : super();

  @override
  Widget build(BuildContext context) {
    String msg = '';
    Widget img;
    if (0 <= count && count <= 2) {
      msg = 'It is not your day today';
      img = Image.asset('assets/images/bad.png');
    } else if (3 <= count && count <= 4) {
      msg = 'Almost, but no!';
      img = Image.asset('assets/images/norm.png');
    } else {
      msg = 'YEEES!!!';
      img = Image.asset('assets/images/good.png');
    }

    return Container(
      padding: const EdgeInsets.all(20.0),
      margin: const EdgeInsets.symmetric(horizontal: 30.0),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 15.0,
            spreadRadius: 0.0,
            offset: Offset(2.0, 5.0),
          )
        ],
        borderRadius: BorderRadius.circular(30.0),
        gradient: LinearGradient(
          colors: [Color(0xFF5337ff), Color(0xFF8131ff), Color(0xFFbd27ff)],
        ),
      ),
      child: Column(
        children: [
          Container(
            width: 120,
            height: 120,
            child: FittedBox(
              fit: BoxFit.contain,
              child: img,
            ),
          ),
          Container(
            child: Text(
              msg,
              textAlign: TextAlign.center,
            ),
          ),

          Divider(
            color: Colors.white,
          ),
          Text('Right answers: $count. Total questions: $total'),
          Divider(
            color: Colors.white,
          ),

          FlatButton(
              onPressed: onClearState,
              child: Text('One more time',
              style: TextStyle(
                fontSize: 22.0
              ),),
          )
        ],
      ),
    );
  }
}
