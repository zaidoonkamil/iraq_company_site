import 'package:flutter/material.dart';

class ditilsScreen extends StatelessWidget {
  const ditilsScreen({super.key, required this.image, required this.title, required this.description});

  final String image;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            Image.asset(image,width: double.maxFinite,height: MediaQuery.of(context).size.height*0.5,),
            Text(title,
              textAlign: TextAlign.end,
              style: Theme.of(context)
                  .textTheme
                  .headline2
                  ?.copyWith(fontWeight: FontWeight.bold, color: Colors.black),
            ),
            Text(
              description,
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  ?.copyWith(height: 1.5),
              textAlign: TextAlign.end,
            ),
            const SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}
