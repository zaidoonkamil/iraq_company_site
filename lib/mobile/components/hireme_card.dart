import 'package:flutter/material.dart';

import '../constants.dart';
import 'default_button.dart';

class HireMeCardMobile extends StatelessWidget {
  const HireMeCardMobile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(kDefaultPadding * 1),
      constraints: BoxConstraints(maxWidth: 1110),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [kDefaultShadow],
      ),
      child: Row(
        children: [
        GestureDetector(
        onTap: (){},
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 20,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: const Color(0xFFE8F0F9),
          ),
          child: Row(
            children: [
              Image.asset("assets/images/hand.png", height: 20),
              SizedBox(width: 10),
              Text("ادعمني"),
            ],
          ),
        ),
      ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "بدء مشروع جديد ؟",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),

              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: SizedBox(
              height: 50,
              child: VerticalDivider(),
            ),
          ),
          Image.asset(
            "assets/images/email.png",
            height: 36,
            width: 36,
          ),

        ],
      ),
    );
  }
}
