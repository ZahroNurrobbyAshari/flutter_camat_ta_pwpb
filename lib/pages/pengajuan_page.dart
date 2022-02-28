import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PengajuanPage extends StatelessWidget {
  const PengajuanPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
            margin: const EdgeInsets.only(left: 21),
            child: const Text(
              "Rekap Pengajuan",
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
          ),
        ]),
        const TablePengajuanBaru(),
        const TableRekap(),
      ]),
    );
  }
}

final List<Map<String, String>> pengajuanList = [
  {'id': '1', 'nama': 'ahmad'},
  {'id': '2', 'nama': 'afif'},
  {'id': '3', 'nama': 'ajay'},
  {'id': '4', 'nama': 'arif'},
  {'id': '5', 'nama': 'aryanta'},
];

final List<Map<String, String>> rekapList = [
  {'id': '1', 'nama': 'ahmad', 'status': 'diterima'},
  {'id': '2', 'nama': 'afif', 'status': 'ditolak'},
  {'id': '3', 'nama': 'ajay', 'status': 'ditolak'},
  {'id': '4', 'nama': 'arif', 'status': 'diterima'},
  {'id': '5', 'nama': 'aryanta', 'status': 'diterima'},
];

class TablePengajuanBaru extends StatelessWidget {
  const TablePengajuanBaru({Key? key}) : super(key: key);

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
                "Data Pengajuan Baru",
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
        rows: pengajuanList
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
                        'Pengajuan ' + item['nama'].toString(),
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
                    child: const Text(
                      "lihat",
                      style: TextStyle(fontSize: 16, color: Color(0xff31314F)),
                    ),
                  ))
                ]))
            .toList(),
      ),
    );
  }
}

class TableRekap extends StatelessWidget {
  const TableRekap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(21, 20, 21, 21),
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
                "Rekap Data Pengajuan",
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
        rows: rekapList
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
                        'Pengajuan ' + item['nama'].toString(),
                        style: const TextStyle(fontSize: 18),
                      ),
                    ],
                  )),
                  DataCell(Row(
                    children: [
                      item["status"] == "diterima"
                          ? const Icon(
                              FontAwesomeIcons.checkCircle,
                              color: Colors.green,
                            )
                          : const FaIcon(
                              FontAwesomeIcons.timesCircle,
                              color: Colors.red,
                            ),
                      Container(
                        padding: const EdgeInsets.all(7),
                        margin: const EdgeInsets.only(left: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: const Text(
                          "lihat",
                          style:
                              TextStyle(fontSize: 16, color: Color(0xff31314F)),
                        ),
                      ),
                    ],
                  ))
                ]))
            .toList(),
      ),
    );
  }
}
