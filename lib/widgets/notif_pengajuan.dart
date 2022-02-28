import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NotifPengajuan extends StatelessWidget {
  const NotifPengajuan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 27),
      decoration: BoxDecoration(
        color: Color(0xff31314f),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 20),
                  child: Icon(
                    FontAwesomeIcons.bell,
                    color: Color(0xffBA9D4B),
                    size: 25,
                  ),
                ),
                Text(
                  "Daftar Pengajuan",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ],
            ),
          ),
          notif1(),
          notif2(),
          notif3(),
          notif4()
        ],
      ),
    );
  }
}

Widget notif1() {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
    margin: const EdgeInsets.symmetric(horizontal: 13, vertical: 15),
    decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(50)),
    child: Text(
      "Kamis, 10 Januari 2022\nPengajuan Barang : Aquarium",
      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    ),
  );
}

Widget notif2() {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
    margin: const EdgeInsets.symmetric(horizontal: 13, vertical: 15),
    decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(50)),
    child: Text(
      "Kamis, 10 Januari 2022\nPengajuan Barang : Aquarium",
      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    ),
  );
}

Widget notif3() {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
    margin: const EdgeInsets.symmetric(horizontal: 13, vertical: 15),
    decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(50)),
    child: Text(
      "Kamis, 10 Januari 2022\nPengajuan Barang : Aquarium",
      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    ),
  );
}

Widget notif4() {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
    margin: const EdgeInsets.symmetric(horizontal: 13, vertical: 15),
    decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(50)),
    child: Text(
      "Kamis, 10 Januari 2022\nPengajuan Barang : Aquarium",
      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    ),
  );
}


















// final List<String> notifStr = [
//   'Kamis, 10 Januari 2022\nPengajuan Barang : Aquarium',
//   'Jumat, 11 Januari 2022\nPengajuan Barang : Tanah',
//   'Sabtu, 12 Januari 2022\nPengajuan Barang : Rumah',
//   'Minggu, 13 Januari 2022\nPengajuan Barang : Meja',
// ];

// List<Widget> _buildNotif = notifStr
//     .map((item) => Container(
//           child: Container(
//             margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
//             decoration: BoxDecoration(
//               color: Colors.white,
//             ),
//             child: Text(item),
//           ),
//         ))
//     .toList();
