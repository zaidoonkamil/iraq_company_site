import 'package:flutter/material.dart';
import 'package:web_shareka/mobile/components/hireme_card.dart';
import 'package:web_shareka/mobile/models/RecentWork.dart';
import 'package:web_shareka/mobile/sections/recent_work/components/recent_work_card.dart';

import '../../constants.dart';

class RecentWorkSectionMobile extends StatelessWidget {
  const RecentWorkSectionMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20,),
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xFFF7E8FF).withOpacity(0.3),
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/recent_work_bg.png"),
        ),
      ),
      child: Column(
        children: [
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: HireMeCardMobile(),
              ),
              const SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: SizedBox(
                  width: double.maxFinite,
                  child: Text(' مشاريعنا داخل العراق',
                    textAlign: TextAlign.end,
                    style: Theme.of(context)
                        .textTheme
                        .headline2
                        ?.copyWith(fontWeight: FontWeight.bold,
                        color: Colors.black,fontSize: 22),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: SizedBox(
                      width: double.maxFinite,
                      child: Wrap(
                        spacing: kDefaultPadding,
                        runSpacing: kDefaultPadding * 1,
                        children: List.generate(
                          recentWorksMobile.length,
                          (index) => RecentWorkCardMobile(index: index, press: () {}),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: kDefaultPadding * 5),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: SizedBox(
                  width: double.maxFinite,
                  child: Text(' مشاريعنا خارج العراق',
                    textAlign: TextAlign.end,
                    style: Theme.of(context)
                        .textTheme
                        .headline2
                        ?.copyWith(fontWeight: FontWeight.bold,
                        color: Colors.black,fontSize: 22),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: SizedBox(
                      width: double.maxFinite,
                      child: Wrap(
                        spacing: kDefaultPadding,
                        runSpacing: kDefaultPadding * 1,
                        children: List.generate(
                          recentWorksOutMobile.length,
                          (index) => RecentWorkCardOutMobile(index: index, press: () {}),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: kDefaultPadding * 5),
            ],
          ),
        ],
      ),
    );
  }
}
