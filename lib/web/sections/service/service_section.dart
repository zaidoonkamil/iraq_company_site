import 'package:flutter/material.dart';

import '../../constants.dart';

class ServiceSection extends StatelessWidget {
  const ServiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      constraints: const BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          Container(
            width: double.maxFinite,
            constraints: const BoxConstraints(maxWidth: 1200),
            child: Text('الوكالات',
              textAlign: TextAlign.end,
              style: Theme.of(context)
                  .textTheme
                  .headline2
                  ?.copyWith(fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "تتمتع شركتنا بالعديد من الوكالات التجارية منها للأدوية واللقاحات البيطرية ومنها لمعدات تربية \nالثروة الحيوانية ومنها للمعدات الزراعية ",
                style: Theme.of(context).textTheme.headline5,
                textAlign: TextAlign.end,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    " شركة فارما سويد للأدوية البيطرية ",
                    style: Theme.of(context).textTheme.headline5,
                    textAlign: TextAlign.end,
                  ),
                  Text(
                    ".1 ",
                    style: Theme.of(context).textTheme.headline5,
                    textAlign: TextAlign.end,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    " شركة ميفاك للقاحات البيطرية",
                    style: Theme.of(context).textTheme.headline5,
                    textAlign: TextAlign.end,
                  ),
                  Text(
                    ".2 ",
                    style: Theme.of(context).textTheme.headline5,
                    textAlign: TextAlign.end,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "شركة الكااكرو لصناعة معدات تربية الدواجن",
                    style: Theme.of(context).textTheme.headline5,
                    textAlign: TextAlign.end,
                  ),
                  Text(
                    ".3 ",
                    style: Theme.of(context).textTheme.headline5,
                    textAlign: TextAlign.end,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "شركة كاف سان لصناعة معدات تربية الدواجن",
                    style: Theme.of(context).textTheme.headline5,
                    textAlign: TextAlign.end,
                  ),
                  Text(
                    ".4 ",
                    style: Theme.of(context).textTheme.headline5,
                    textAlign: TextAlign.end,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "شركة نفرتاري لأنظمة تقنية المياه",
                    style: Theme.of(context).textTheme.headline5,
                    textAlign: TextAlign.end,
                  ),
                  Text(
                    ".5 ",
                    style: Theme.of(context).textTheme.headline5,
                    textAlign: TextAlign.end,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "شركة فلوبي سبرنكلر",
                    style: Theme.of(context).textTheme.headline5,
                    textAlign: TextAlign.end,
                  ),
                  Text(
                    ".6 ",
                    style: Theme.of(context).textTheme.headline5,
                    textAlign: TextAlign.end,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "شركة ايكو داربول للأسمدة العضوية",
                    style: Theme.of(context).textTheme.headline5,
                    textAlign: TextAlign.end,
                  ),
                  Text(
                    ".7 ",
                    style: Theme.of(context).textTheme.headline5,
                    textAlign: TextAlign.end,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: Text(
                      "اضـافـة الـى ما تقدم. ترتبط شركتنا بصداقات وعـلاقـات دولـيـة مـع العديد من الشركات العالمية",
                      style: Theme.of(context).textTheme.headline5,
                      textAlign: TextAlign.end,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  // Image.asset('name'),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
