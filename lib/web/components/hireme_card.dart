import 'package:flutter/material.dart';

import '../constants.dart';
import 'default_button.dart';

class HireMeCard extends StatelessWidget {
  const HireMeCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(kDefaultPadding * 2),
      constraints: BoxConstraints(maxWidth: 1110),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [kDefaultShadow],
      ),
      child: Row(
        children: [
          DefaultButton(
            text: "ادعمني",
            imageSrc: "assets/images/hand.png",
            press: () {},
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "بدء مشروع جديد ؟",
                  style: TextStyle(fontSize: 42, fontWeight: FontWeight.bold),
                ),

              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: SizedBox(
              height: 80,
              child: VerticalDivider(),
            ),
          ),
          Image.asset(
            "assets/images/email.png",
            height: 80,
            width: 80,
          ),

        ],
      ),
    );
  }
}
