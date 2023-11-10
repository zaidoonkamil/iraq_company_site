import 'package:flutter/material.dart';

import '../../../constants.dart';

class ExperienceCardMobile extends StatelessWidget {
  const ExperienceCardMobile({
    Key? key,
    this.numOfExp,
  }) : super(key: key);

  final String? numOfExp;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      height: 100,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: const Color(0xFFF7E8FF),
        borderRadius: BorderRadius.circular(10),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: const Color(0xFFEDD2FC),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 3),
              blurRadius: 6,
              color: const Color(0xFFA600FF).withOpacity(0.25),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Text(
                  numOfExp!,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 6
                      ..color = const Color(0xFFDFA3FF).withOpacity(0.5),
                    shadows: [
                      BoxShadow(
                        offset: const Offset(0, 5),
                        blurRadius: 10,
                        color: const Color(0xFFA600FF).withOpacity(0.5),
                      ),
                    ],
                  ),
                ),
                Text(
                  numOfExp!,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            const SizedBox(height: kDefaultPadding / 2),
            Text(
              "Years Experience",
              style: TextStyle(
                color: Color(0xFFA600FF),
                fontSize: 12
              ),
            )
          ],
        ),
      ),
    );
  }
}
