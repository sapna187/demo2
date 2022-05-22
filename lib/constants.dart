import 'package:flutter/material.dart';

const yellow = Color(0xffFFD50A);
const blue = Color(0xff1D7CDC);
const background = Color(0xff231F20);
const appbar = Color(0xff333333);
const search = Color(0xff4C4C4C);
const grey = Color(0xff9E9E9E);
const white = Color(0xffFFFFFF);

class BoldText extends StatelessWidget {

  final String text;
  final double size;
  final Color color;
  const BoldText(this.text, this.size, this.color, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color, fontSize: size,
          fontWeight: FontWeight.w700,
          fontFamily: 'myFont'
      ),
    );
  }
} // All bold texts

class PlainText extends StatelessWidget {

  final String text;
  final double size;
  final Color color;
  const PlainText(this.text, this.size, this.color, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color, fontSize: size,
          fontWeight: FontWeight.w400,
          fontFamily: 'myFont'
      ),
    );
  }
} // All plain texts