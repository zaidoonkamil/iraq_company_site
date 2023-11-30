import 'package:flutter/material.dart';
import 'package:web_shareka/mobile/models/RecentWork.dart';
import 'package:web_shareka/web/sections/recent_work/detils/ditils.dart';

import '../../../constants.dart';

class RecentWorkCardMobile extends StatefulWidget {
  // just press "Command + ."
  const RecentWorkCardMobile({
    Key? key,
    this.index,
    this.press,
  }) : super(key: key);

  final int? index;
  final Function()? press;

  @override
  _RecentWorkCardMobileState createState() => _RecentWorkCardMobileState();
}

class _RecentWorkCardMobileState extends State<RecentWorkCardMobile> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ditilsScreen(
              image: recentWorksMobile[widget.index!].image!,
              title:  recentWorksMobile[widget.index!].title!,
              description: recentWorksMobile[widget.index!].category!,
            ),
          ),
        );
      },
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        height: 140,
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [if (isHover) kDefaultCardShadow],
        ),
        child: Row(

          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Text(recentWorks[widget.index!].category!.toUpperCase()),
                    const SizedBox(height: 20),
                    Text(
                      recentWorksMobile[widget.index!].title!,
                      style: Theme.of(context)
                          .textTheme
                          .headline5
                          ?.copyWith(fontSize: 16),
                      textAlign: TextAlign.end,
                    ),
                    const SizedBox(height: kDefaultPadding),
                    const Text(
                      "التفاصيل",
                      style: TextStyle(decoration: TextDecoration.underline,fontSize: 14),
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: 140,
              height: double.maxFinite,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),

                color: Theme.of(context).cardColor,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child:  Image.asset(
                  recentWorksMobile[widget.index!].image!,
                  fit: BoxFit.fill,
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}

class RecentWorkCardOutMobile extends StatefulWidget {
  // just press "Command + ."
  const RecentWorkCardOutMobile({
    Key? key,
    this.index,
    this.press,
  }) : super(key: key);

  final int? index;
  final Function()? press;

  @override
  _RecentWorkCardOutMobileState createState() => _RecentWorkCardOutMobileState();
}

class _RecentWorkCardOutMobileState extends State<RecentWorkCardOutMobile> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.press,
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        height: 120,
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [if (isHover) kDefaultCardShadow],
        ),
        child: Row(

          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Text(recentWorks[widget.index!].category!.toUpperCase()),
                    const SizedBox(height: 20),
                    Text(
                      recentWorksOutMobile[widget.index!].title!,
                      style: Theme.of(context)
                          .textTheme
                          .headline5
                          ?.copyWith(fontSize: 16),
                      textAlign: TextAlign.end,
                    ),
                    const SizedBox(height: kDefaultPadding),
                    const Text(
                      "التفاصيل",
                      style: TextStyle(decoration: TextDecoration.underline,fontSize: 14),
                    )
                  ],
                ),
              ),
            ),
            // Container(
            //   width: 140,
            //   height: double.maxFinite,
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(10),
            //
            //     color: Theme.of(context).cardColor,
            //   ),
            //   child: ClipRRect(
            //     borderRadius: BorderRadius.circular(10),
            //     child:  Image.asset(
            //       recentWorksMobile[widget.index!].image!,
            //       fit: BoxFit.fill,
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
