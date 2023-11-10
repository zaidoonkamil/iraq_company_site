import 'package:flutter/material.dart';

import '../../../constants.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int selectedIndex = 6;
  int hoverIndex = 0;
  List<String> menuItems = [
    "تواصل معنا",
    "شركائنا",
    "الوكالات",
    "مشاريعنا",
    "من نحن",
    "الصفحة الرئيسية",
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
