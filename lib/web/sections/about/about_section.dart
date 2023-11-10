import 'package:flutter/material.dart';

import '../../constants.dart';
import 'components/about_section_text.dart';
import 'components/about_text_with_sign.dart';
import 'components/experience_card.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      constraints: const BoxConstraints(maxWidth: 1200),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            width: double.maxFinite,
            constraints: const BoxConstraints(maxWidth: 1200),
            child: Text('من نحن',
              textAlign: TextAlign.end,
              style: Theme.of(context)
                  .textTheme
                  .headline2
                  ?.copyWith(fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Expanded(
                child: SizedBox(
                  width: 400,
                  child: AboutSectionText(
                    text:
                    "من اهم ما يميزنا الصداقات والعلاقات الدولية التي تتمتع بها شركتنا مع مختلف بلدان العالم مثل تركيا ومصر ورومانيا وهولندا وبلجيكا والمانيا و اليونان وفيرها من الشركات ذات الاختصاص.اضافة الى ذلك تتمتع الشركة بالعديد من الوكالات العالمية في مجال صناعة معدات تربية الحيوانات ومجال الادوية واللقاحات البيطرية.",
                  ),
                ),
              ),
              ExperienceCard(numOfExp: "17"),

              Expanded(
                child: SizedBox(
                  width: 400,
                  child: AboutSectionText(
                    text:
                        "شركة عراقية مختصة في مجال الثروة الحيوانية و الزراعية تاسست عام 2007 برقم تسجيل 02-7895 مش. في وزارة التجارة العراقية ، دائرة مسجل الشركات . شرعت شركتنا باعمالها الفعلية في العراق عام 2009 . اتخذت الشركة المنهج العلمي البحت طريقا لها ووضعت اسسها على مبادئ رصينة وحقيقة تمثلت بالثقة والمسؤولية والمثابرة على انجاح العمل .",
                  ),
                ),
              ),

            ],
          ),

          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
