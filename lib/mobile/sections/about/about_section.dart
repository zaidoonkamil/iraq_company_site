import 'package:flutter/material.dart';

import '../../constants.dart';
import 'components/about_section_text.dart';
import 'components/about_text_with_sign.dart';
import 'components/experience_card.dart';

class AboutSectionMobile extends StatelessWidget {
  const AboutSectionMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:  const EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: AboutTextWithSignMobile(),
            ),
            Column(
              children: const [
                SizedBox(
                  width: double.maxFinite,
                  child: AboutSectionTextMobile(
                    text:
                    "من اهم ما يميزنا الصداقات والعلاقات الدولية التي تتمتع بها شركتنا مع مختلف بلدان العالم مثل تركيا ومصر ورومانيا وهولندا وبلجيكا والمانيا و اليونان وفيرها من الشركات ذات الاختصاص.اضافة الى ذلك تتمتع الشركة بالعديد من الوكالات العالمية في مجال صناعة معدات تربية الحيوانات ومجال الادوية واللقاحات البيطرية.",
                  ),
                ),
                SizedBox(height: 20,),
                ExperienceCardMobile(numOfExp: "17"),
                SizedBox(height: 20,),
                SizedBox(
                  width: double.maxFinite,
                  child: AboutSectionTextMobile(
                    text:
                        "شركة عراقية مختصة في مجال الثروة الحيوانية و الزراعية تاسست عام 2007 برقم تسجيل 02-7895 مش. في وزارة التجارة العراقية ، دائرة مسجل الشركات . شرعت شركتنا باعمالها الفعلية في العراق عام 2009 . اتخذت الشركة المنهج العلمي البحت طريقا لها ووضعت اسسها على مبادئ رصينة وحقيقة تمثلت بالثقة والمسؤولية والمثابرة على انجاح العمل .",
                  ),
                ),

              ],
            ),

            const SizedBox(height: kDefaultPadding * 3),
          ],
        ),
      ),
    );
  }
}
