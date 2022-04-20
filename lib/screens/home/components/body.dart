// ignore_for_file: unused_import
import 'package:flutter/material.dart';
import 'package:movies/models/constants.dart';
import '../../../components/genre_card.dart';
import 'categories.dart';
import 'genres.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const <Widget>[Categorylist(), Genres()],
    );
  }
}


