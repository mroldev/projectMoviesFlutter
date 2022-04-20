import 'package:flutter/material.dart';
import 'package:movies/models/constants.dart';


class Categorylist extends StatefulWidget {
  const Categorylist({Key? key}) : super(key: key);

  @override
  State<Categorylist> createState() => _Categorylist();
}

class _Categorylist extends State<Categorylist> {
  int selectedCategory = 0;
  List<String> categories = ["In theader ", "Box Office ", "Comming Soon"];
  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding/ 2),
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => buildCategory(index, context),
      ),
    );
  }

  Padding buildCategory(int index, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedCategory = index;
          });
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              categories[index],
              style: Theme.of(context).textTheme.headline5?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: index == selectedCategory
                      ? kTextColor
                      : Colors.black.withOpacity(0.4)),
            ),
            // ignore: sized_box_for_whitespace
            Container(
              margin: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
              height: 6,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: index == selectedCategory
                    ? kSecondaryColor
                    : Colors.transparent,
              ),
            )
          ],
        ),
      ),
    );
  }
}
