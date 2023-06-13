import 'dart:async';

import 'package:delayed_display/delayed_display.dart';
import 'package:first_app/screens/homePage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 8), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 220,
            ),
            DelayedDisplay(
              delay: const Duration(seconds: 1),
              child: Container(
                height: 125,
                width: 125,
                child: Image.asset('images/list.png'),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            DelayedDisplay(
              delay: const Duration(seconds: 2),
              child: Text("Manage your daily Activities with us.",
                  style: GoogleFonts.acme(fontSize: 22, color: Colors.white)),
            ),
            const SizedBox(height: 150),
            DelayedDisplay(
              delay: const Duration(seconds: 4),
              child: LoadingAnimationWidget.staggeredDotsWave(
                color: Colors.white,
                size: 70,
              ),
            ),
          ],
        ),
      ),
    );
    ;
  }
}
