// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sipalingundip/navbar.dart';

class InfoMhsPerwalian extends StatefulWidget {
  const InfoMhsPerwalian({super.key});

  @override
  State<InfoMhsPerwalian> createState() => _InfoMhsPerwalianState();
}

class SemesterData {
  final String title;
  final String year;
  final List<Map<String, String>> subjects;
  final String ipSemester;

  SemesterData({
    required this.title,
    required this.year,
    required this.subjects,
    required this.ipSemester,
  });
}

class _InfoMhsPerwalianState extends State<InfoMhsPerwalian> {
  final List<SemesterData> _semesters = [
    SemesterData(
      title: "Semester 1",
      year: "2022/2023 Ganjil",
      subjects: [
        {
          'No': '1',
          'Kode': 'PAIK6101',
          'Mata Kuliah': 'Dasar Pemrograman',
          'Status': 'Baru',
          'SKS': '4',
          'Nilai Huruf': 'A',
          'Bobot': '4',
          'SKS x Bobot': '16',
        },
        {
          'No': '2',
          'Kode': 'PAIK6102',
          'Mata Kuliah': 'Matematika',
          'Status': 'Baru',
          'SKS': '3',
          'Nilai Huruf': 'A',
          'Bobot': '4',
          'SKS x Bobot': '12',
        },
      ],
      ipSemester: "3.75",
    ),
    SemesterData(
      title: "Semester 2",
      year: "2022/2023 Genap",
      subjects: [
        {
          'No': '1',
          'Kode': 'PAIK6201',
          'Mata Kuliah': 'Matematika II',
          'Status': 'Baru',
          'SKS': '4',
          'Nilai Huruf': 'A',
          'Bobot': '4',
          'SKS x Bobot': '16',
        },
        {
          'No': '2',
          'Kode': 'PAIK6202',
          'Mata Kuliah': 'Algoritma Pemrograman',
          'Status': 'Baru',
          'SKS': '3',
          'Nilai Huruf': 'A',
          'Bobot': '4',
          'SKS x Bobot': '12',
        },
      ],
      ipSemester: "3.85",
    ),
  ];

  final List<bool> _isExpanded = [];

  @override
  void initState() {
    super.initState();
    _isExpanded.addAll(List.generate(_semesters.length, (index) => false));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 45, 136),
      appBar: const MyNavbar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Card(
              color: Colors.white,
              child: SizedBox(
                width: 1300,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Text(
                        "Krisna Okky Widayat",
                        style: TextStyle(
                          fontSize: 54,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 8.0, right: 8),
                      child: Divider(
                        color: Colors.black,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text("Dosen Wali: Joko Yanto M.T."),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text("NIP: 12345678971214"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Container(
                          height: 300,
                          width: 800,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 211, 208, 208),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(30.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Row(
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("NIM"),
                                            Text("24060122120021", style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                            ),),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("Jenis Kelamin"),
                                            Text("Laki-laki", style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                            ),),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("Angkatan"),
                                            Text("2022", style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                            ),),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("IPK"),
                                            Text("4.00", style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                            ),),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("Status"),
                                            Text("Aktif", style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                            ),),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("SKSK"),
                                            Text("78", style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                            ),),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ExpansionPanelList(
                        elevation: 1,
                        expandedHeaderPadding: const EdgeInsets.all(0),
                        expansionCallback: (index, isExpanded) {
                          setState(() {
                            _isExpanded[index] = isExpanded;
                          });
                        },
                        children: List.generate(
                          _semesters.length,
                          (index) {
                            final semester = _semesters[index];
                            return ExpansionPanel(
                              headerBuilder: (context, isExpanded) {
                                return ListTile(
                                  title: Text(
                                    "${semester.title} | Tahun Ajaran ${semester.year}",
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  tileColor: Colors.blue,
                                );
                              },
                              body: Container(
                                padding: const EdgeInsets.all(8.0),
                                color: Colors.white,
                                child: Column(
                                  children: [
                                    DataTable(
                                      columns: const [
                                        DataColumn(label: Text('No')),
                                        DataColumn(label: Text('Kode')),
                                        DataColumn(label: Text('Mata Kuliah')),
                                        DataColumn(label: Text('Status')),
                                        DataColumn(label: Text('SKS')),
                                        DataColumn(label: Text('Nilai Huruf')),
                                        DataColumn(label: Text('Bobot')),
                                        DataColumn(label: Text('SKS x Bobot')),
                                      ],
                                      rows: semester.subjects
                                          .map(
                                            (subject) => DataRow(
                                              cells: subject.values
                                                  .map(
                                                    (value) => DataCell(
                                                      Text(value),
                                                    ),
                                                  )
                                                  .toList(),
                                            ),
                                          )
                                          .toList(),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "IP Semester: ${semester.ipSemester}",
                                        style: const TextStyle(
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              isExpanded: _isExpanded[index],
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
