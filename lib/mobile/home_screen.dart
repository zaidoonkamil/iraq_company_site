import 'package:flutter/material.dart';
import 'package:web_shareka/web/sections/feedback/feedback_section.dart';
import 'package:web_shareka/web/sections/partners/partners.dart';

import 'constants.dart';
import 'sections/about/about_section.dart';
import 'sections/contact/contact_section.dart';
import 'sections/feedback/feedback_section.dart';
import 'sections/recent_work/recent_work_section.dart';
import 'sections/service/service_section.dart';
import 'sections/topSection/components/menu.dart';
import 'sections/topSection/top_section.dart';
import 'sections/top_images/top_images.dart';

class HomeScreenMobile extends StatelessWidget {
  const HomeScreenMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Menu(),
            const TopImagesMobile(), //// الصفحة الرئيسية
            const TopSectionMobile(),         //// الصفحة الرئيسية
            // const SizedBox(height: kDefaultPadding * 2),
            // const PartnersScreen(),          ////شركائنا
            const AboutSectionMobile(),  ////من نحن
            const ServiceSectionMobile(),    ////الوكالات
            const RecentWorkSectionMobile(),     //// المشاريع
            FeedbackSectionMobile(),              //// نبذة عن المدبر
            const SizedBox(height: 40),
            const ContactSectionMobile(),     ////تواصل معنى
          ],
        ),
      ),
    );
  }
}
