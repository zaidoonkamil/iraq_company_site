import 'package:flutter/material.dart';
import 'package:web_shareka/web/models/RecentWork.dart';
import 'package:web_shareka/web/sections/recent_work/detils/ditils.dart';

import '../../../constants.dart';

class RecentWorkCard extends StatefulWidget {
  // just press "Command + ."
  const RecentWorkCard({
    Key? key,
    this.index,
    this.press,
  }) : super(key: key);

  final int? index;
  final Function()? press;

  @override
  _RecentWorkCardState createState() => _RecentWorkCardState();
}

class _RecentWorkCardState extends State<RecentWorkCard> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ditilsScreen(
                image: recentWorks[widget.index!].image!,
                title:  recentWorks[widget.index!].title!,
                description: recentWorks[widget.index!].category!,
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
        height: 280,
        width: 540,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [if (isHover) kDefaultCardShadow],
        ),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Text(recentWorks[widget.index!].category!.toUpperCase()),
                    const SizedBox(height: 20),
                    Text(
                      recentWorks[widget.index!].title!,
                      style: Theme.of(context)
                          .textTheme
                          .headline5
                          ?.copyWith(fontSize: 22),
                      textAlign: TextAlign.end,
                    ),
                    const SizedBox(height: kDefaultPadding),
                    const Text(
                      "التفاصيل",
                      style: TextStyle(decoration: TextDecoration.underline),
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: 220,
              height: double.maxFinite,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),

                color: Theme.of(context).cardColor,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child:  Image.asset(
                  recentWorks[widget.index!].image!,
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

class RecentWorkCardOut extends StatefulWidget {
  // just press "Command + ."
  const RecentWorkCardOut({
    Key? key,
    this.index,
    this.press,
  }) : super(key: key);

  final int? index;
  final Function()? press;

  @override
  _RecentWorkCardOutState createState() => _RecentWorkCardOutState();
}

class _RecentWorkCardOutState extends State<RecentWorkCardOut> {
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
        height: 320,
        width: 540,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [if (isHover) kDefaultCardShadow],
        ),
        child: Row(

          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Text(recentWorks[widget.index!].category!.toUpperCase()),
                    const SizedBox(height: 20),
                    Text(
                      recentWorksOut[widget.index!].title!,
                      style: Theme.of(context)
                          .textTheme
                          .headline5
                          ?.copyWith(fontSize: 22),
                      textAlign: TextAlign.end,
                    ),
                    const SizedBox(height: kDefaultPadding),
                    // const Text(
                    //   "التفاصيل",
                    //   style: TextStyle(decoration: TextDecoration.underline),
                    // )
                  ],
                ),
              ),
            ),
            // Image.asset(recentWorksOut[widget.index!].image!),

          ],
        ),
      ),
    );
  }
}
