import 'package:flutter/material.dart';

class Feedback {
  final String? name, review, userPic;
  final int? id;
  final Color? color;

  Feedback({this.name, this.review, this.userPic, this.id, this.color});
}

// List of demo feedbacks
List<Feedback> feedbacks = [
  Feedback(
    id: 1,
    name: "محمد عباس العبيدي",
    review: review,
    userPic: "assets/images/people.png",
    color: const Color(0xFFFFF3DD),
  ),
];

class Partners {
  final String? name, review, userPic;
  final int? id;
  final Color? color;

  Partners({this.name, this.review, this.userPic, this.id, this.color});
}

// List of demo feedbacks
List<Partners> partnersVar = [
  Partners(
    id: 1,
    name: "محمد عباس العبيدي",
    review: review,
    userPic: "assets/images/photo_2023-11-01_20-24-27.jpg",
    color: const Color(0xFFFFF3DD),
  ),
  Partners(
    id: 2,
    name: "محمد عباس العبيدي",
    review: review,
    userPic: "assets/images/photo_2023-11-01_20-24-33.jpg",
    color: const Color(0xFFFFF3DD),
  ),
  Partners(
    id: 3,
    name: "محمد عباس العبيدي",
    review: review,
    userPic: "assets/images/photo_2023-11-01_20-24-37.jpg",
    color: const Color(0xFFFFF3DD),
  ),
  Partners(
    id: 4,
    name: "محمد عباس العبيدي",
    review: review,
    userPic: "assets/images/photo_2023-11-01_20-24-40.jpg",
    color: const Color(0xFFFFF3DD),
  ),
  Partners(
    id: 5,
    name: "محمد عباس العبيدي",
    review: review,
    userPic: "assets/images/photo_2023-11-01_20-24-43.jpg",
    color: const Color(0xFFFFF3DD),
  ),
  Partners(
    id: 6,
    name: "محمد عباس العبيدي",
    review: review,
    userPic: "assets/images/photo_2023-11-01_20-24-46.jpg",
    color: const Color(0xFFFFF3DD),
  ),
  Partners(
    id: 6,
    name: "محمد عباس العبيدي",
    review: review,
    userPic: "assets/images/photo_2023-11-01_20-24-49.jpg",
    color: const Color(0xFFFFF3DD),
  ),
  Partners(
    id: 6,
    name: "محمد عباس العبيدي",
    review: review,
    userPic: "assets/images/photo_2023-11-01_20-24-53.jpg",
    color: const Color(0xFFFFF3DD),
  ),
  Partners(
    id: 7,
    name: "محمد عباس العبيدي",
    review: review,
    userPic: "assets/images/photo_2023-11-01_20-24-55.jpg",
    color: const Color(0xFFFFF3DD),
  ),
];

String review =
    '(الدكتور المهندس الزراعي) محمد عباس العبيدي يعتبر المدير المفوض )الدكتور محمد عباس العبيدي ( لشركتنا من أهم المختصين في مجال الثروة الحيوانية والزراعية في الشرق الاوسط ووسط اسيا بشهادة المنظمة الدولية لتطوير الثروة الحيوانية اضافة الى عضويتها وشهادة وزارة الزراعة العراقية . وعضوية مجلس الاعمال الوطني العراقي وغرفة تجارة بغداد واتحاد المستوردين العراقيين. حيث قام بتنفيذ العديد من المشاريع في دول مختلفة منها دولة اذربيجان وروسيا  ودولة اوزبكستان واليمن والمغرب والامارات العربية المتحدة وختاماً في العراق وقدم ايضا دراسة التربية العمودية لدولة مصر ودراسة تطوير مشاريع عبد العزيز الفقيه في المملكة العربية السعودية.';
