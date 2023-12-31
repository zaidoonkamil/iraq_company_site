import 'package:flutter/material.dart';
import 'package:web_shareka/mobile/models/Service.dart';

import '../../../constants.dart';

class ServiceCardMobile extends StatefulWidget {
  const ServiceCardMobile({
    Key? key,
    this.index,
  }) : super(key: key);

  final int? index;

  @override
  _ServiceCardMobileState createState() => _ServiceCardMobileState();
}

class _ServiceCardMobileState extends State<ServiceCardMobile> {
  bool isHover = false;
  Duration duration = const Duration(milliseconds: 200);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      hoverColor: Colors.transparent,
      child: AnimatedContainer(
        duration: duration,
        margin: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
        height: 256,
        width: 256,
        decoration: BoxDecoration(
          color: servicesMobile[widget.index!].color,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [if (isHover) kDefaultCardShadow],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: duration,
              padding: const EdgeInsets.all(kDefaultPadding * 1.5),
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  if (!isHover)
                    BoxShadow(
                      offset: const Offset(0, 20),
                      blurRadius: 30,
                      color: Colors.black.withOpacity(0.1),
                    ),
                ],
              ),
              child: Image.asset(
                servicesMobile[widget.index!].image!,
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(height: kDefaultPadding),
            Text(
              servicesMobile[widget.index!].title!,
              style: const TextStyle(fontSize: 22),
            ),
          ],
        ),
      ),
    );
  }
}
