import 'package:flutter/material.dart';

import '../../constants.dart';
import 'components/logo_blur_box.dart';

class TopSection extends StatelessWidget {
  const TopSection({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.centerRight,
      constraints: const BoxConstraints(maxHeight: 500, minHeight: 100),
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/background.png"),
        ),
      ),
      child: Container(
        margin: const EdgeInsets.only(top: 20),
        width: 1200,
        child: LogoAndBlurBox(size: size),
      ),
    );
  }
}
