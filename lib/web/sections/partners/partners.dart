import 'package:flutter/material.dart';
import 'package:web_shareka/web/models/Feedback.dart';
import 'package:web_shareka/web/sections/partners/components/RecentWorkPartners.dart';
import 'package:web_shareka/web/sections/recent_work/components/recent_work_card.dart';

import '../../constants.dart';

class PartnersScreen extends StatefulWidget {
  const PartnersScreen({Key? key,}) : super(key: key);

  @override
  _PartnersScreenState createState() => _PartnersScreenState();
}

class _PartnersScreenState extends State<PartnersScreen> {

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: double.maxFinite,
          constraints: const BoxConstraints(maxWidth: 1200),
          child: Text('شركائنا',
            textAlign: TextAlign.end,
            style: Theme.of(context)
                .textTheme
                .headline2
                ?.copyWith(fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        const SizedBox(height: 80,),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SizedBox(
            width: double.maxFinite,
            child: Wrap(
              spacing: kDefaultPadding,
              runSpacing: 20,
              children: List.generate(
                partnersVar.length,
                    (index) => RecentWorkPartners(index: index, press: () {}),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
