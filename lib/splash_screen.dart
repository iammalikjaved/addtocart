import 'dart:async';

import 'package:addtocart/info.dart';
import 'package:addtocart/widgets/navigation.dart';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
 
}

class _SplashScreenState extends State<SplashScreen> {
   bool auth = true;
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 4), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => InfoNavigatePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    // Future.delayed(const Duration(seconds: 3), () {
    //   Navigator.push(
    //       context, MaterialPageRoute(builder: (context) => const MyHomePage()));
    // });

    return const Scaffold(
      body: Center(
        child: Image(image: AssetImage("assets/splashimg.png!bw700")),
      ),
    );
  }
}
