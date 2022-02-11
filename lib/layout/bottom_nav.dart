import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pwpb1/pages/dashboard_page.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int pageIndex = 0;

  final pages = [
    const DashboardPage(),
    const Page2(),
    const Page3(),
    const Page4(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageIndex],
      bottomNavigationBar: BottomNav(context),
    );
  }

  Container BottomNav(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.08,
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0x33000000),
            blurRadius: 4,
            spreadRadius: 8,
            offset: Offset(0, 4),
          )
        ],
        color: Color(0xffF1F1F1),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () {
              setState(() {
                pageIndex = 0;
              });
            },
            icon: const Icon(
              FontAwesomeIcons.home,
              color: Color(0xff31314F),
              size: 20,
            ),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                pageIndex = 1;
              });
            },
            icon: const Icon(
              FontAwesomeIcons.box,
              color: Color(0xff31314F),
              size: 20,
            ),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                pageIndex = 2;
              });
            },
            icon: const Icon(
              FontAwesomeIcons.tasks,
              color: Color(0xff31314F),
              size: 20,
            ),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                pageIndex = 3;
              });
            },
            icon: const Icon(
              FontAwesomeIcons.slidersH,
              color: Color(0xff31314F),
              size: 20,
            ),
          ),
        ],
      ),
    );
  }
}

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Dashboard"),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("page2"),
    );
  }
}

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("page3"),
    );
  }
}

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("page4"),
    );
  }
}
