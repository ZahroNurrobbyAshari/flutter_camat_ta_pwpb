import 'package:flutter/material.dart';
import 'package:pwpb1/background/background_login.dart';
import 'package:pwpb1/forms/form_login.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'kontol',
      home: Scaffold(
        body: Stack(
          children: [
            const Background(),
            const FormLogin(),
          ],
        ),
      ),
    );
  }
}
