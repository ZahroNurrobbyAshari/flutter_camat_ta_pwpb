import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Container(
              width: size.width * 0.3,
              margin: const EdgeInsets.only(top: 24, right: 16),
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.black),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(FontAwesomeIcons.userCircle),
                  Text("Admin"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
