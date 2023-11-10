import 'package:flutter/material.dart';
import 'package:web_shareka/mobile/home_screen.dart';
import 'package:web_shareka/web/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key, required this.index});

  final int index;

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 1), () {
      if(widget.index ==0){
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => const HomeScreenMobile(),
          ),
              (route) {
            return false;
          },
        );
      }else{
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => const HomeScreen(),
          ),
              (route) {
            return false;
          },
        );
      }

    });
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              'assets/images/1 copy.png',
              fit: BoxFit.cover,
              height: 300,
            ),
          ),
        ],
      ),
    );
  }
}
