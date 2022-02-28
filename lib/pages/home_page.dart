import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pwpb1/pages/aset_ruang.dart';
import 'package:pwpb1/pages/barang_ruang.dart';
import 'package:pwpb1/pages/pengajuan_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  PageController _pageController = PageController();

  void onTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    _pageController.animateToPage(index,
        duration: Duration(milliseconds: 500), curve: Curves.decelerate);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: const [
          Home(),
          AsetRuangPage(),
          PengajuanPage(),
          BarangRuangPage(),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
            ),
            boxShadow: [
              BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
            ]),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
          ),
          child: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.home),
                label: 'beranda',
              ),
              BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.boxOpen),
                label: 'beranda',
              ),
              BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.list),
                label: 'beranda',
              ),
              BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.solidFolderOpen),
                label: 'beranda',
              ),
            ],
            currentIndex: _selectedIndex,
            showSelectedLabels: false,
            selectedItemColor: Color(0xffBA9D4B),
            unselectedItemColor: Color(0xff31314F),
            onTap: onTapped,
          ),
        ),
      ),
    );
  }
}

final List<String> list = [
  'Daftar\nBarang',
  'Daftar\nPengajuan',
  'Aset\nRuang',
];

final List<String> notifList = [
  'Kamis, 10 Januari 2022\nPengajuan Barang: Meja',
  'Jumat, 11 Januari 2022\nPengajuan Barang: Kursi',
  'Sabtu, 12 Januari 2022\nPengajuan Barang: Pancing',
  'Minggu, 13 Januari 2022\nPengajuan Barang: Bantal',
];

class CarouselBanner extends StatefulWidget {
  const CarouselBanner({Key? key}) : super(key: key);

  @override
  _CarouselBannerState createState() => _CarouselBannerState();
}

class _CarouselBannerState extends State<CarouselBanner> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: bannerSliders,
          options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: true,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
        ),
      ],
    );
  }
}

final List<Widget> bannerSliders = list
    .map((item) => Container(
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 37),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: const Color(0xff31314f),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  item,
                  style: const TextStyle(color: Colors.white, fontSize: 25),
                ),
                Container(
                  width: 100,
                  height: 100,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/Barcode-amico.png')),
                  ),
                ),
              ],
            ),
          ),
        ))
    .toList();

class Notification extends StatelessWidget {
  const Notification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 27),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xff31314f),
      ),
      child: ListView(
        shrinkWrap: true,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(right: 15),
                child: const Icon(
                  FontAwesomeIcons.bell,
                  color: Color(0xffBA9D4B),
                  size: 27,
                ),
              ),
              const Text(
                "Daftar Pengajuan",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          notif1(),
          notif2(),
          notif3(),
          notif4(),
        ],
      ),
    );
  }
}

Widget notif1() {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 14, horizontal: 30),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Row(
      children: [
        Container(
          margin: const EdgeInsets.all(15),
          height: 20,
          width: 20,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xffBA9D4B),
          ),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(5, 5, 20, 5),
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
          child: Text(
            notifList[0],
            style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    ),
  );
}

Widget notif2() {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 14, horizontal: 30),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Row(
      children: [
        Container(
          margin: const EdgeInsets.all(15),
          height: 20,
          width: 20,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xffBA9D4B),
          ),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(5, 5, 20, 5),
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
          child: Text(
            notifList[1],
            style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    ),
  );
}

Widget notif3() {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 14, horizontal: 30),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Row(
      children: [
        Container(
          margin: const EdgeInsets.all(15),
          height: 20,
          width: 20,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xffBA9D4B),
          ),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(5, 5, 20, 5),
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
          child: Text(
            notifList[2],
            style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    ),
  );
}

Widget notif4() {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 14, horizontal: 30),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Row(
      children: [
        Container(
          margin: const EdgeInsets.all(15),
          height: 20,
          width: 20,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xffBA9D4B),
          ),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(5, 5, 20, 5),
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
          child: Text(
            notifList[3],
            style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    ),
  );
}

List<Widget> getNotif() {
  List<Widget> childs = [];
  for (var i = 0; i < notifList.length; i++) {
    childs.add(Card(
      child: ListTile(
        leading: Container(
          decoration:
              const BoxDecoration(shape: BoxShape.circle, color: Colors.red),
        ),
      ),
    ));
  }
  return childs;
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
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
                children: const [
                  Icon(FontAwesomeIcons.userCircle),
                  Text("Admin"),
                ],
              ),
            ),
          ),
          CarouselBanner(),
          Notification(),
        ],
      ),
    );
  }
}
