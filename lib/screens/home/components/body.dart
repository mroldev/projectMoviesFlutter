
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
   const Body({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const <Widget> [

      ],
    );
  }
}


class Categorylist extends StatefulWidget {
  const Categorylist({ Key? key }) : super(key: key);

  @override
  State<Categorylist> createState() => _Categorylist();
}

class _Categorylist extends State<Categorylist> {
  @override
  Widget build(BuildContext context) {
    return Container(color: const Color(0xFFFFE306));
  }
}