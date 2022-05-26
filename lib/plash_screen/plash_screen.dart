import 'dart:async';

import 'package:flutter/material.dart';

import '../Onbording_Screen/onbording_screen.dart';

class PlashScreen extends StatefulWidget {
  const PlashScreen({Key? key}) : super(key: key);

  @override
  State<PlashScreen> createState() => _PlashScreenState();
}

class _PlashScreenState extends State<PlashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => OnbordingPage1())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('assest/3.png'),
      ),
    );
  }
}
