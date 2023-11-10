import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_shareka/mobile/components/default_button.dart';

import '../../constants.dart';
import 'components/socal_card.dart';

class ContactSectionMobile extends StatelessWidget {
  const ContactSectionMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xFFE8F0F9),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/bg_img_2.png"),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            const SizedBox(height: kDefaultPadding * 2.5),
            Container(
              width: double.maxFinite,
              child: Text('تواصل معنا',
                textAlign: TextAlign.end,
                style: Theme.of(context)
                  .textTheme
                  .headline2
                  ?.copyWith(fontWeight: FontWeight.bold, color: Colors.black,fontSize: 22),
              ),
            ),
            const ContactBox()
          ],
        ),
      ),
    );
  }
}

class ContactBox extends StatelessWidget {
  const ContactBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 1200),
      margin: const EdgeInsets.only(top: kDefaultPadding * 2),
      padding: const EdgeInsets.all(kDefaultPadding * 3),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Column(
            children: [
              Column(
                children: [
                  SocalCardMobile(
                    color: const Color(0xFFE8F0F9),
                    iconSrc: "assets/images/email.png",
                    name: 'EMAIL',
                    press: () async{
                      const String recipientEmail = 'infi@iqkhc.com';
                      const String subject = 'Your Subject';
                      const String body = 'Your Email Content';

                      final Uri emailLaunchUri = Uri(
                        scheme: 'mailto',
                        path: recipientEmail,
                        queryParameters: {
                          'subject': subject,
                          'body': body,
                        },
                      );
                      await launch(
                        emailLaunchUri.toString(),
                        enableJavaScript: true,
                        // forceWebView: true,
                      );
                    },
                  ),
                  const SizedBox(height: 8,),
                  const Text('info@iqkhc.com',
                    textAlign: TextAlign.end,
                    style:
                    TextStyle(fontSize: 12,fontWeight: FontWeight.w200,
                        color: kTextColor),
                  ),

                ],
              ),
              SizedBox(height: 12,),
              Column(
                children: [
                  SocalCardMobile(
                    color: const Color(0xFFE4FFC7),
                    iconSrc: "assets/images/phone.png",
                    name: 'PHONE',
                    press: () async{
                      const url =
                          'tel:07801112115';
                      await launch(
                        url,
                        enableJavaScript: true,
                        // forceWebView: true,
                      );
                    },
                  ),
                  const SizedBox(height: 8,),

                  const Text('07801112115',
                    textAlign: TextAlign.end,
                    style:
                    TextStyle(fontSize: 12,fontWeight: FontWeight.w200, color: kTextColor),
                  ),
                ],
              ),
              SizedBox(height: 12,),
              Column(
                children: [
                  SocalCardMobile(
                    color: const Color(0xFFE8F0F9),
                    iconSrc: "assets/images/email.png",
                    name: 'EMAIL',
                    press: () async{
                      const String recipientEmail = 'infi@iqkhc.com';
                      const String subject = 'Your Subject';
                      const String body = 'Your Email Content';

                      final Uri emailLaunchUri = Uri(
                        scheme: 'mailto',
                        path: recipientEmail,
                        queryParameters: {
                          'subject': subject,
                          'body': body,
                        },
                      );
                      await launch(
                        emailLaunchUri.toString(),
                        enableJavaScript: true,
                        // forceWebView: true,
                      );
                    },
                  ),
                  const SizedBox(height: 8,),
                  const Text('info@iqkhc.com',
                    textAlign: TextAlign.end,
                    style:
                    TextStyle(fontSize: 12,fontWeight: FontWeight.w200,
                        color: kTextColor),
                  ),

                ],
              ),
              SizedBox(height: 12,),
              Column(
                children: [
                  SocalCardMobile(
                    color: const Color(0xFFE4FFC7),
                    iconSrc: "assets/images/phone.png",
                    name: 'PHONE',
                    press: () async{
                      const url =
                          'tel:07801112117';
                      await launch(
                        url,
                        enableJavaScript: true,
                        // forceWebView: true,
                      );
                    },
                  ),
                  const SizedBox(height: 8,),

                  const Text('07801112117',
                    textAlign: TextAlign.end,
                    style:
                    TextStyle(fontSize: 12,fontWeight: FontWeight.w200, color: kTextColor),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 8,),
          const Text('اوقات الدوام :- من التاسعة صباحاً الى الخامسة مساءً',
            textAlign: TextAlign.end,
            style:
            TextStyle(fontSize: 14,fontWeight: FontWeight.w200, color: kTextColor),
          ),
          // const ContactForm(),
        ],
      ),
    );
  }
}

class ContactForm extends StatelessWidget {
  const ContactForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Wrap(
        spacing: kDefaultPadding * 2.5,
        runSpacing: kDefaultPadding * 1.5,
        children: [
          Center(
            child: FittedBox(
              child: DefaultButtonMobile(
                imageSrc: "assets/images/contact_icon.png",
                text: "Contact Me!",
                press: (){},
              ),
            ),
          )
        ],
      ),
    );
  }
}
