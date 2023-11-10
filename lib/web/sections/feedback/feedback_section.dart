import 'package:flutter/material.dart';
import 'package:web_shareka/web/components/section_title.dart';

import '../../constants.dart';
import 'components/feedback_card.dart';

class FeedbackSection extends StatelessWidget {
  const FeedbackSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      constraints: const BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              SectionTitle(
                title: "نبذة عن المدير المفوض",

                subTitle: " ",
                color: Color(0xFF00B1FF),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              FeedbackCard(index: 0),
            ],
          ),
        ],
      ),
    );
  }
}
