import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BarangRuangPage extends StatelessWidget {
  const BarangRuangPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 21),
              child: const Text(
                "Data Barang dan Ruang",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
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
            )
          ],
        ),
        const TableBarang(),
        const TableRuang(),
      ]),
    );
  }
}

final List<Map<String, String>> barangList = [
  {'id': '1', 'harga': '500000', 'barang': 'kursi'},
  {'id': '2', 'harga': '250000', 'barang': 'meja'},
  {'id': '3', 'harga': '9250000', 'barang': 'aquarium'},
  {'id': '4', 'harga': '150000', 'barang': 'lemari'},
  {'id': '5', 'harga': '575000', 'barang': 'kasur'},
];

class TableBarang extends StatelessWidget {
  const TableBarang({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 21, vertical: 50),
      child: DataTable(
        columnSpacing: 0,
        dividerThickness: 5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.transparent),
        ),
        dataRowHeight: 60,
        headingRowHeight: 65,
        showBottomBorder: true,
        headingRowColor:
            MaterialStateColor.resolveWith((states) => const Color(0xffBA9D4B)),
        dataRowColor:
            MaterialStateColor.resolveWith((states) => const Color(0xff31314f)),
        dataTextStyle: const TextStyle(
          color: Colors.white,
        ),
        columns: const [
          DataColumn(
              tooltip: '',
              label: Text(
                "Data Barang",
                style: TextStyle(
                    color: Color(0xff31314f),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )),
          DataColumn(
              label: Icon(
                FontAwesomeIcons.angleRight,
                size: 28,
              ),
              numeric: true),
        ],
        rows: barangList
            .map((item) => DataRow(cells: <DataCell>[
                  DataCell(Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 15),
                        height: 15,
                        width: 15,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xffBA9D4B),
                        ),
                      ),
                      Text(
                        item['barang'].toString(),
                        style: const TextStyle(fontSize: 18),
                      ),
                    ],
                  )),
                  DataCell(Container(
                    padding: const EdgeInsets.all(7),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Text(
                      "Rp. " + item["harga"].toString(),
                      style: TextStyle(fontSize: 16, color: Color(0xff31314F)),
                    ),
                  ))
                ]))
            .toList(),
      ),
    );
  }
}

final List<Map<String, String>> ruangList = [
  {'id': '1', 'ruang': 'Lab RPL 1', 'jumlah': '35'},
  {'id': '2', 'ruang': 'Lab MM A', 'jumlah': '25'},
  {'id': '3', 'ruang': 'Ruang Teori 35', 'jumlah': '10'},
  {'id': '4', 'ruang': 'Ruang Teori 32', 'jumlah': '666'},
  {'id': '5', 'ruang': 'Lab PD', 'jumlah': '1'},
];

class TableRuang extends StatelessWidget {
  const TableRuang({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 21, vertical: 0),
      child: DataTable(
        columnSpacing: 0,
        dividerThickness: 5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.transparent),
        ),
        dataRowHeight: 60,
        headingRowHeight: 65,
        showBottomBorder: true,
        headingRowColor:
            MaterialStateColor.resolveWith((states) => const Color(0xffBA9D4B)),
        dataRowColor:
            MaterialStateColor.resolveWith((states) => const Color(0xff31314f)),
        dataTextStyle: const TextStyle(
          color: Colors.white,
        ),
        columns: const [
          DataColumn(
              tooltip: '',
              label: Text(
                "Data Ruang",
                style: TextStyle(
                    color: Color(0xff31314f),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )),
          DataColumn(
              label: Icon(
                FontAwesomeIcons.angleRight,
                size: 28,
              ),
              numeric: true),
        ],
        rows: ruangList
            .map((item) => DataRow(cells: <DataCell>[
                  DataCell(Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 15),
                        height: 15,
                        width: 15,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xffBA9D4B),
                        ),
                      ),
                      Text(
                        item['ruang'].toString(),
                        style: const TextStyle(fontSize: 18),
                      ),
                    ],
                  )),
                  DataCell(
                    Text(
                      item["jumlah"].toString() + " Barang",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  )
                ]))
            .toList(),
      ),
    );
  }
}
