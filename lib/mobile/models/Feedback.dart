import 'package:flutter/material.dart';

class FeedbackMobile {
  final String? name, review, userPic;
  final int? id;
  final Color? color;

  FeedbackMobile({this.name, this.review, this.userPic, this.id, this.color});
}

// List of demo feedbacks
List<FeedbackMobile> feedbacksMobile = [
  FeedbackMobile(
    id: 1,
    name: "محمد عباس العبيدي",
    review: review,
    userPic: "assets/images/people.png",
    color: const Color(0xFFFFF3DD),
  ),
];

String review =
    '(الدكتور المهندس الزراعي) محمد عباس العبيدي يعتبر المدير المفوض )الدكتور محمد عباس العبيدي ( لشركتنا من أهم المختصين في مجال الثروة الحيوانية والزراعية في الشرق الاوسط ووسط اسيا بشهادة المنظمة الدولية لتطوير الثروة الحيوانية اضافة الى عضويتها وشهادة وزارة الزراعة العراقية . وعضوية مجلس الاعمال الوطني العراقي وغرفة تجارة بغداد واتحاد المستوردين العراقيين. حيث قام بتنفيذ العديد من المشاريع في دول مختلفة منها دولة اذربيجان وروسيا  ودولة اوزبكستان واليمن والمغرب والامارات العربية المتحدة وختاماً في العراق وقدم ايضا دراسة التربية العمودية لدولة مصر ودراسة تطوير مشاريع عبد العزيز الفقيه في المملكة العربية السعودية.';
