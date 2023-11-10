import 'package:flutter/material.dart';

class ServiceMobile {
  final int? id;
  final String? title, image;
  final Color? color;

  ServiceMobile({this.id, this.title, this.image, this.color});
}

// For demo list of service
List<ServiceMobile> servicesMobile = [
  ServiceMobile(
    id: 1,
    title: "Graphic Design",
    image: "assets/images/graphic.png",
    color: Color(0xFFD9FFFC),
  ),
  ServiceMobile(
    id: 2,
    title: "Web Design",
    image: "assets/images/desktop.png",
    color: Color(0xFFE4FFC7),
  ),
  ServiceMobile(
    id: 3,
    title: "UI Design",
    image: "assets/images/ui.png",
    color: Color(0xFFFFF3DD),
  ),
  ServiceMobile(
    id: 4,
    title: "Interaction Design",
    image: "assets/images/Intreaction_design.png",
    color: Color(0xFFFFE0E0),
  ),
];
