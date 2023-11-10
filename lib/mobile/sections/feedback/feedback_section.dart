import 'package:flutter/material.dart';
import 'package:web_shareka/mobile/components/section_title.dart';

import '../../constants.dart';
import 'components/feedback_card.dart';

class FeedbackSectionMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              SectionTitleMobile(
                title: "نبذة عن المدير المفوض",

                subTitle: " ",
                color: Color(0xFF00B1FF),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              FeedbackCardMobile(index: 0),
            ],
          ),
        ],
      ),
    );
  }
}
