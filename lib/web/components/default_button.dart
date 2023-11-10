import 'package:flutter/material.dart';

import '../constants.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    this.imageSrc,
    this.text,
    this.press,
  }) : super(key: key);

  final String? imageSrc, text;
  final void Function()? press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: kDefaultPadding,
          horizontal: kDefaultPadding * 2.5,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
          color: const Color(0xFFE8F0F9),
        ),
        child: Row(
          children: [
            Image.asset(imageSrc!, height: 40),
            SizedBox(width: kDefaultPadding),
            Text(text!),
          ],
        ),
      ),
    );
  }
}
