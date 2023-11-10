import 'package:flutter/material.dart';

import '../../../constants.dart';

class SocalCardMobile extends StatefulWidget {
  const SocalCardMobile({
    Key? key,
    this.iconSrc,
    this.name,
    this.color,
    this.press,
  }) : super(key: key);

  final String? iconSrc, name;
  final Color? color;
  final Function()? press;

  @override
  _SocalCardMobileState createState() => _SocalCardMobileState();
}

class _SocalCardMobileState extends State<SocalCardMobile> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: InkWell(
        onTap: widget.press,
        onHover: (value) {
          setState(() {
            isHover = value;
          });
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 10,
          ),
          decoration: BoxDecoration(
            color: widget.color,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [if (isHover) kDefaultCardShadow],
          ),
          child: Row(
            children: [
              Image.asset(
                widget.iconSrc!,
                height: 20,
                width: 20,
              ),
              const SizedBox(width: 10),
              Text(widget.name!,style: const TextStyle(fontSize: 14),),
            ],
          ),
        ),
      ),
    );
  }
}
