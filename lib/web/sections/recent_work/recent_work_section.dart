import 'package:flutter/material.dart';
import 'package:web_shareka/web/components/hireme_card.dart';
import 'package:web_shareka/web/models/RecentWork.dart';

import '../../constants.dart';
import 'components/recent_work_card.dart';

class RecentWorkSection extends StatelessWidget {
  const RecentWorkSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 120),
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
              Transform.translate(
                offset: const Offset(0, -80),
                child: const HireMeCard(),
              ),
              Container(
                width: double.maxFinite,
                constraints: const BoxConstraints(maxWidth: 1200),
                child: Text(' مشاريعنا داخل العراق',
                  textAlign: TextAlign.end,
                  style: Theme.of(context)
                      .textTheme
                      .headline2
                      ?.copyWith(fontWeight: FontWeight.bold, color: Colors.black),
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
                        spacing: 20,
                        runSpacing: 20,
                        children: List.generate(
                          recentWorks.length,
                          (index) => RecentWorkCard(index: index, press: () {}),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
          Column(
            children: [
              Container(
                width: double.maxFinite,
                constraints: const BoxConstraints(maxWidth: 1200),
                child: Text(' مشاريعنا خارج العراق',
                  textAlign: TextAlign.end,
                  style: Theme.of(context)
                      .textTheme
                      .headline2
                      ?.copyWith(fontWeight: FontWeight.bold, color: Colors.black),
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
                        spacing: 20,
                        runSpacing: 20,
                        children: List.generate(
                          recentWorksOut.length,
                          (index) => RecentWorkCardOut(index: index, press: () {}),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ],
      ),
    );
  }
}
