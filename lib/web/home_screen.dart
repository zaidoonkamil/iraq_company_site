import 'package:flutter/material.dart';
import 'package:web_shareka/mobile/sections/contact/contact_section.dart';

import 'constants.dart';
import 'sections/about/about_section.dart';
import 'sections/contact/contact_section.dart';
import 'sections/feedback/feedback_section.dart';
import 'sections/partners/partners.dart';
import 'sections/recent_work/recent_work_section.dart';
import 'sections/service/service_section.dart';
import 'sections/topSection/components/menu.dart';
import 'sections/topSection/top_section.dart';
import 'sections/top_images/top_images.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

   ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose(); // Don't forget to dispose the controller
    super.dispose();
  }

  _scrollToPosition(double offset) {
    _scrollController.animateTo(
        offset,
        duration: const Duration(seconds: 1),
        curve: Curves.ease
    );
  }

  int selectedIndex = 6;
  int hoverIndex = 0;
  List<String> menuItems = [
    "تواصل معنا",
    // "شركائنا",
    "الوكالات",
    "مشاريعنا",
    "من نحن",
    "الصفحة الرئيسية",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 100),
              height: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                boxShadow: [kDefaultShadow],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(
                  menuItems.length,
                      (index) => InkWell(
                    onTap: () {
                      setState(() {
                        // if(index ==5){
                        //   _scrollToPosition(860  1790);
                        // }else
                          if(index ==4){
                          _scrollToPosition(860);
                        }else if(index ==3){
                          _scrollToPosition(1400);
                        }else if(index ==2){
                          _scrollToPosition(2600);
                        }else if(index ==1){
                          _scrollToPosition(1850);
                        } else if(index ==0){
                          _scrollToPosition(8900);
                        }
                        selectedIndex = index;
                      });
                    },
                    onHover: (value) {
                      setState(() {
                        value ? hoverIndex = index : hoverIndex = selectedIndex;
                      });
                    },
                    child: Container(
                      height: 100,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Text(
                            menuItems[index],
                            style: const TextStyle(fontSize: 16, color: kTextColor),
                          ),
                          // Hover
                          AnimatedPositioned(
                            duration: const Duration(milliseconds: 200),
                            left: 0,
                            right: 0,
                            bottom:
                            selectedIndex != index && hoverIndex == index ? -32 : -32,
                            child: Image.asset("assets/images/Hover.png"),
                          ),
                          // Select
                          AnimatedPositioned(
                            duration: const Duration(milliseconds: 200),
                            left: 0,
                            right: 0,
                            bottom: selectedIndex == index ? -2 : -32,
                            child: Image.asset("assets/images/Hover.png"),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const TopImages(),         //// الصفحة الرئيسية
            const TopSection(),         //// الصفحة الرئيسية
            // const SizedBox(height: 40),
            // const PartnersScreen(),          ////شركائنا
            const SizedBox(height: 40),
            const AboutSection(),             ////من نحن
            const SizedBox(height: 40),
            const ServiceSection(),    ////الوكالات
            const SizedBox(height: 40),
            const RecentWorkSection(),     //// المشاريع
            const SizedBox(height: 40),
            const FeedbackSection(),              //// نبذة عن المدبر
            const SizedBox(height: 40),
            const ContactSection(),     ////تواصل معنى
          ],
        ),
      ),
    );
  }
}
