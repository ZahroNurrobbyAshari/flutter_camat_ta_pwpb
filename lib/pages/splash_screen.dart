import 'package:flutter/material.dart';

import 'dart:async';

import 'package:pwpb1/pages/login_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    splashScreenStart();
  }

  splashScreenStart() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 42, right: 42, top: 0, bottom: 50),
              child: Image.asset(
                'assets/images/splashscreen-1.png',
                width: 350,
                height: 350,
              ),
            ),
            const Text(
              "CAMAT",
              style: TextStyle(
                  fontSize: 42,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff1A2E35)),
            ),
            const Text(
              "Catat Manajemen Aset",
              style: TextStyle(
                fontSize: 16,
                color: Color(0xff1A2E35),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
