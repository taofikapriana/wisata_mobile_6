import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:wisata_mobile_6/mystatefulwidget.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Stack(
            alignment: Alignment.center,
            children: [
              Lottie.network(
                'https://lottie.host/956e1e4f-8c98-4206-ae82-50dd50161d69/dtw01aXDDE.json',
                width: 350,
                height: 350,
              ),
              const Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 300,
                  ),
                  Text(
                    'ASLABTIF',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff1b1b1b),
                      fontFamily: "NunitoSansBold",
                    ),
                  ),
                  Text(
                    'TRAVEL',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff1b1b1b),
                      fontFamily: "NunitoSansBold",
                    ),
                  ),
                ],
              )
            ],
          )),
        ],
      ),
      splashIconSize: 200,
      splashTransition: SplashTransition.fadeTransition,
      duration: 2000,
      backgroundColor: Colors.white,
      nextScreen: const Mystatefulwidget(),
    );
  }
}
