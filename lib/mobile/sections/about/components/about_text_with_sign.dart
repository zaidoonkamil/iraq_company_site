import 'package:flutter/material.dart';

import '../../../constants.dart';

class AboutTextWithSignMobile extends StatelessWidget {
  const AboutTextWithSignMobile({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "من نحن",
          style: Theme.of(context)
              .textTheme
              .headline2
              ?.copyWith(fontWeight: FontWeight.bold, color: Colors.black,fontSize: 22),
        ),
        const SizedBox(height: kDefaultPadding * 2),
      ],
    );
  }
}
