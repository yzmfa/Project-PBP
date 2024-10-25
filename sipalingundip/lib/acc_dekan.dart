// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sipalingundip/navbar.dart';

class AccDekan extends StatefulWidget {
  const AccDekan({super.key});

  @override
  _AccDekanState createState() => _AccDekanState();
}

class _AccDekanState extends State<AccDekan> {
  // Variabel untuk mengontrol apakah tabel Semester Ganjil dan Genap ditampilkan
  bool showTableGanjil = false;
  bool showTableGenap = false;

  // Data dummy untuk tabel Semester Ganjil
  final List<Map<String, dynamic>> _dataGanjil = [
    {"no": 1, "nama": "Matematika Dasar", "sks": 3, "semester": 1, "kelas": "A", "ruang": "E101", "jadwal": "Senin, 07.00-09.30"},
    {"no": 2, "nama": "Matematika Dasar", "sks": 3, "semester": 1, "kelas": "B", "ruang": "E101", "jadwal": "Senin, 10.00-12.30"},
    {"no": 3, "nama": "Matematika Dasar", "sks": 3, "semester": 1, "kelas": "C", "ruang": "E102", "jadwal": "Selasa, 07.00-09.30"},
    {"no": 2, "nama": "Pemrograman Lanjut", "sks": 4, "semester": 3, "kelas": "A", "ruang": "E101", "jadwal": "Senin, 07.00-09.30"},
    {"no": 3, "nama": "Basis Data", "sks": 3, "semester": 3, "kelas": "A", "ruang": "E101", "jadwal": "Senin, 07.00-09.30"},
  ];

  // Data dummy untuk tabel Semester Genap
  final List<Map<String, dynamic>> _dataGenap = [
    {"no": 1, "nama": "Fisika Dasar", "sks": 3, "semester": 2, "kelas": "A", "ruang": "E103", "jadwal": "Senin, 07.00-09.30"},
    {"no": 2, "nama": "Kalkulus", "sks": 4, "semester": 2, "kelas": "A", "ruang": "E102", "jadwal": "Senin, 07.00-09.30"},
    {"no": 3, "nama": "Struktur Data", "sks": 3, "semester": 4, "kelas": "A", "ruang": "E103", "jadwal": "Senin, 12.00-14.30"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 45, 136),
      appBar: const MyNavbar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'RENCANA AKADEMIK',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 52,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Center(
                child: SizedBox(
                  width: 1400,
                  child: Card(
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Container(
                              height: 100,
                              width: 1300,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: TextButton(
                                onPressed: () {
                                  setState(() {
                                    showTableGanjil = !showTableGanjil; 
                                  });
                                },
                                child: Text(
                                  'Semester Ganjil 2024',
                                  style: TextStyle(
                                    fontSize: 24,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          
                          if (showTableGanjil)
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Container(
                                width: 1300,
                                child: Column(
                                  children: [
                                    DataTable(
                                      columns: const [
                                        DataColumn(label: Text('No')),
                                        DataColumn(label: Text('Nama Mata Kuliah')),
                                        DataColumn(label: Text('SKS')),
                                        DataColumn(label: Text('Semester')),
                                        DataColumn(label: Text('Kelas')),
                                        DataColumn(label: Text('Ruang')),
                                        DataColumn(label: Text('Jadwal')),
                                      ],
                                      rows: _dataGanjil.map((item) {
                                        return DataRow(cells: [
                                          DataCell(Text(item['no'].toString())),
                                          DataCell(Text(item['nama'])),
                                          DataCell(Text(item['sks'].toString())),
                                          DataCell(Text(item['semester'].toString())),
                                          DataCell(Text(item['kelas'].toString())),
                                          DataCell(Text(item['ruang'].toString())),
                                          DataCell(Text(item['jadwal'].toString())),
                                        ]);
                                      }).toList(),
                                    ),
                                    
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end, 
                                      children: [
                                        ElevatedButton(
                                          onPressed: () {
                                            
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.green, 
                                            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(8),
                                            ),
                                          ),
                                          child: Text('Acc', style: TextStyle(fontSize: 16, color: Colors.white)),
                                        ),
                                        SizedBox(width: 16), 
                                        ElevatedButton(
                                          onPressed: () {
                                            
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.red, 
                                            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(8),
                                            ),
                                          ),
                                          child: Text('Tolak', style: TextStyle(fontSize: 16, color: Colors.white)),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),

                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Container(
                              height: 100,
                              width: 1300,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: TextButton(
                                onPressed: () {
                                  setState(() {
                                    showTableGenap = !showTableGenap; 
                                  });
                                },
                                child: Text(
                                  'Semester Genap 2024',
                                  style: TextStyle(
                                    fontSize: 24,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          
                          if (showTableGenap)
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Container(
                                width: 1300,
                                child: Column(
                                  children: [
                                    DataTable(
                                      columns: const [
                                        DataColumn(label: Text('No')),
                                        DataColumn(label: Text('Nama Mata Kuliah')),
                                        DataColumn(label: Text('SKS')),
                                        DataColumn(label: Text('Semester')),
                                        DataColumn(label: Text('Kelas')),
                                        DataColumn(label: Text('Ruang')),
                                        DataColumn(label: Text('Jadwal')),
                                      ],
                                      rows: _dataGenap.map((item) {
                                        return DataRow(cells: [
                                          DataCell(Text(item['no'].toString())),
                                          DataCell(Text(item['nama'])),
                                          DataCell(Text(item['sks'].toString())),
                                          DataCell(Text(item['semester'].toString())),
                                          DataCell(Text(item['kelas'].toString())),
                                          DataCell(Text(item['ruang'].toString())),
                                          DataCell(Text(item['jadwal'].toString())),
                                        ]);
                                      }).toList(),
                                    ),
                                    
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end, 
                                      children: [
                                        ElevatedButton(
                                          onPressed: () {
                                            
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.green, // Warna tombol Acc
                                            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(8),
                                            ),
                                          ),
                                          child: Text('Acc', style: TextStyle(fontSize: 16, color: Colors.white),),
                                        ),
                                        SizedBox(width: 16), // Spasi antara tombol
                                        ElevatedButton(
                                          onPressed: () {
                                            // Aksi saat tombol Tolak ditekan
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.red, // Warna tombol Tolak
                                            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(8),
                                            ),
                                          ),
                                          child: Text('Tolak', style: TextStyle(fontSize: 16, color: Colors.white)),
                                        ),
                                      ],
                                    )
                                  ],
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
          ],
        ),
      ),
    );
  }
}