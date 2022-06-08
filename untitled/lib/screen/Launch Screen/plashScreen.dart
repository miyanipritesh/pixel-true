import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../constant.dart';
import '../homeScreen.dart';
import 'launchScreen1.dart';

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
            builder: (BuildContext context) => StreamBuilder(
                  stream: FirebaseAuth.instance.authStateChanges(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.active) {
                      if (snapshot.data == null) {
                        return const LaunchScreen1();
                      }
                      return const Home();
                    } else {
                      return const Scaffold();
                    }
                  },
                ))));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.DARK_BLUE500,
      body: Center(
        child: Image.asset('assest/ic_logo.png'),
      ),
    );
  }
}
