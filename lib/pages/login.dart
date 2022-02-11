import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pwpb1/pages/dashboard_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg-login.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(right: 140),
                child: const Text(
                  "Masuk",
                  style: TextStyle(
                      fontSize: 40,
                      color: Color(0xffffffff),
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 30, right: 70, left: 70),
                child: TextField(
                  controller: TextEditingController(),
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Username",
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 30, right: 70, left: 70),
                child: TextField(
                  controller: TextEditingController(),
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "********",
                  ),
                ),
              ),
              InkWell(
                  child: Container(
                    margin: EdgeInsets.only(top: 30, left: 140),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Color(0xff31314F),
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    child: const Icon(
                      Icons.arrow_right,
                      color: Color(0xffBA9D4B),
                      size: 35,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Dashboard()));
                  })
            ],
          ),
        ],
      ),
    );
  }
}
