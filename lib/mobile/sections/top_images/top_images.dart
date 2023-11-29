import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class TopImagesMobile extends StatefulWidget {
  const TopImagesMobile({super.key});

  @override
  State<TopImagesMobile> createState() => _TopImagesMobileState();
}

class _TopImagesMobileState extends State<TopImagesMobile> {

  List imageList = [
    {"id": 1, "image_path": 'assets/images/photo_2023-11-29_18-10-02.jpg'},
    {"id": 2, "image_path": 'assets/images/photo_2023-11-29_18-10-16.jpg'},
    {"id": 3, "image_path": 'assets/images/photo_2023-11-29_18-10-22.jpg'},
    {"id": 4, "image_path": 'assets/images/photo_2023-11-29_18-10-27.jpg'}
  ];
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [

        CarouselSlider(
          items: imageList.map(
                (item) => Image.asset(
              item['image_path'],
              fit: BoxFit.fill,
              width: double.infinity,
            ),
          )
              .toList(),
          options: CarouselOptions(
              height: MediaQuery.of(context).size.height*0.7,
              viewportFraction: 1.0,
              enlargeCenterPage: false,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: true,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 6),
              autoPlayAnimationDuration: const Duration(seconds: 1),
              autoPlayCurve: Curves.fastOutSlowIn,
              scrollDirection: Axis.horizontal,
              onPageChanged: (index, r) {
                setState(() {
                  currentIndex = index;
                });
              }),
        ),
        Container(
          height: MediaQuery.of(context).size.height*0.7,
          width: double.maxFinite,
          color: Colors.transparent,
          child:Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).size.height*0.07,
                left: MediaQuery.of(context).size.width*0.1,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: imageList.asMap().entries.map((entry) {
                return GestureDetector(
                  onTap: () =>
                      carouselController.animateToPage(entry.key),
                  child: Container(
                    width: currentIndex == entry.key ? 40 : 8,
                    height: 7.0,
                    margin: const EdgeInsets.symmetric(
                      horizontal: 3.0,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: currentIndex == entry.key
                            ? kPrimaryColor
                            : Colors.white),
                  ),
                );
              }).toList(),
            ),
          ),

        ),

      ],
    );

  }
}
