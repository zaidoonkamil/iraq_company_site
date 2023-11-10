import 'package:flutter/material.dart';
import 'package:web_shareka/mobile/models/Feedback.dart';

import '../../../constants.dart';

class FeedbackCardMobile extends StatefulWidget {
  const FeedbackCardMobile({
    Key? key,
    this.index,
  }) : super(key: key);

  final int? index;

  @override
  _FeedbackCardMobileState createState() => _FeedbackCardMobileState();
}

class _FeedbackCardMobileState extends State<FeedbackCardMobile> {
  Duration duration = const Duration(milliseconds: 200);
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      hoverColor: Colors.transparent,
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: AnimatedContainer(
        duration: duration,
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        width: 450,
        decoration: BoxDecoration(
          color: feedbacksMobile[widget.index!].color,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [if (isHover) kDefaultCardShadow],
        ),
        child: Column(
          children: [
            const SizedBox(height: 20,),
            Text(
              feedbacksMobile[widget.index!].review!,
              style: const TextStyle(
                color: kTextColor,
                fontSize: 14,
                fontWeight: FontWeight.w300,
                fontStyle: FontStyle.italic,
                height: 1.5,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: kDefaultPadding * 2),
            const Text(
              "محمد عباس العبيدي",
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}
