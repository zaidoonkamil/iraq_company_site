import 'package:flutter/material.dart';
import 'package:web_shareka/web/models/Feedback.dart';

import '../../../constants.dart';

class RecentWorkPartners extends StatefulWidget {
  // just press "Command + ."
  const RecentWorkPartners({
    Key? key,
    this.index,
    this.press,
  }) : super(key: key);

  final int? index;
  final Function()? press;

  @override
  _RecentWorkPartnersState createState() => _RecentWorkPartnersState();
}

class _RecentWorkPartnersState extends State<RecentWorkPartners> {

  Duration duration = const Duration(milliseconds: 200);
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      hoverColor: Colors.transparent,
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: Column(
        children: [
          Transform.translate(
            offset: const Offset(0, -55),
            child: AnimatedContainer(
              duration: duration,
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 10),
                boxShadow: [if (!isHover) kDefaultCardShadow],
                image: DecorationImage(
                  image: AssetImage(partnersVar[widget.index!].userPic!),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
