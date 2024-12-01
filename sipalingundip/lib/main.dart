import 'package:flutter/material.dart';
import 'package:sipalingundip/info_mhs_perwalian.dart';
import 'package:sipalingundip/khs.dart';
import 'package:sipalingundip/pilih_role.dart';
import 'package:sipalingundip/registrasi.dart';
import 'view_ruang.dart';
import 'acc_dekan.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mencoba',
      initialRoute: '/',
      routes: {
        '/': (context) => const ViewRuang(),
        '/second': (context) => const AccDekan(),
        '/third' : (context) => const Registrasi(),
        '/fourth' : (context) => const KHS(),
        '/fifth' : (context) => const InfoMhsPerwalian(),
        '/sixth' : (context) => const PilihRole(),
      },
    );
  }
}

