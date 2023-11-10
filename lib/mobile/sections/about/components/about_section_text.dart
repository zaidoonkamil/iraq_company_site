import 'package:flutter/material.dart';

import '../../../constants.dart';

class AboutSectionTextMobile extends StatelessWidget {
  const AboutSectionTextMobile({
    Key? key,
    this.text,
  }) : super(key: key);

  final String? text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Text(
        text!,
        style: const TextStyle(
            fontWeight: FontWeight.w200, color: kTextColor, height: 2),
        textAlign: TextAlign.center,
      ),
    );
  }
}
