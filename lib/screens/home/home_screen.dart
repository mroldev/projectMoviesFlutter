import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movies/models/constants.dart';
import 'package:movies/screens/home/components/body.dart';

class HommeScreen extends StatelessWidget {
  const HommeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body: const Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          padding: const EdgeInsets.only(left: kDefaultPadding),
          icon: SvgPicture.asset("assets/icons/menu.svg"),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            padding:const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            icon: SvgPicture.asset("assets/icons/search.svg"),
             onPressed: () {},
          )
        ],
        );
  }
}
