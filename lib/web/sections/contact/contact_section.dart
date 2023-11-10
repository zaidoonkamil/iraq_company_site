import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_shareka/web/components/default_button.dart';

import '../../constants.dart';
import 'components/socal_card.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

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
      child: Column(
        children: [
          const SizedBox(height: 20),
          Container(
            width: double.maxFinite,
            constraints: const BoxConstraints(maxWidth: 1200),
            child: Text('تواصل معنا',
              textAlign: TextAlign.end,
              style: Theme.of(context)
                  .textTheme
                  .headline2
                  ?.copyWith(fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ),
          const ContactBox()
        ],
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
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 60),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  SocalCard(
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
                  const SizedBox(height: 20,),
                  const Text('07801112115',
                    textAlign: TextAlign.end,
                    style:
                    TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w200,
                        color: kTextColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 10,),
              Column(
                children: [
                  SocalCard(
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
                  const SizedBox(height: 20,),

                  const Text('07801112115',
                    textAlign: TextAlign.end,
                    style:
                    TextStyle(fontSize: 16,fontWeight: FontWeight.w200, color: kTextColor),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: kDefaultPadding * 2),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  SocalCard(
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
                  const SizedBox(height: 20,),
                  const Text('info@iqkhc.com',
                    textAlign: TextAlign.end,
                    style:
                    TextStyle(fontSize: 16,fontWeight: FontWeight.w200,
                        color: kTextColor),
                  ),
                ],
              ),
              const SizedBox(width: 10,),
              Column(
                children: [
                  SocalCard(
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
                  const SizedBox(height: 20,),
                  const Text('info@iqkhc.com',
                    textAlign: TextAlign.end,
                    style:
                    TextStyle(fontSize: 16,fontWeight: FontWeight.w200,
                        color: kTextColor),
                  ),
                ],
              ),
            ],
          ),

          const SizedBox(height: 20),
          const Text('اوقات الدوام :- من التاسعة صباحاً الى الخامسة مساءً',
            textAlign: TextAlign.end,
            style:
            TextStyle(fontSize: 16,fontWeight: FontWeight.w200, color: kTextColor),
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
        spacing: 20,
        runSpacing: 20,
        children: [
          Center(
            child: FittedBox(
              child: DefaultButton(
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
