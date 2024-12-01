import 'package:flutter/material.dart';
import 'package:sipalingundip/navbar.dart';

class PilihRole extends StatefulWidget {
  const PilihRole({super.key});

  @override
  State<PilihRole> createState() => _PilihRoleState();
}

class _PilihRoleState extends State<PilihRole> {

  // ignore: constant_identifier_names
  static const IconData account_circle_outlined = IconData(0xee35, fontFamily: 'MaterialIcons');
  // Daftar role yang akan ditampilkan
  final List<String> roles = ["Dekan", "Pembimbing Akademik", "Kaprodi"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 45, 136),
      appBar: const MyNavbar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 65.0),
          child: Center(
            child: Container(
              width: 800,
              height: 400,
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: Text(
                      "Sebagai Apa Anda Ingin Masuk?",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  // Looping untuk membuat TextButton sesuai dengan data role
                  ...roles.map((role) {
                    return Container(
                      width: 500,
                      margin: const EdgeInsets.symmetric(vertical: 8.0),
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: TextButton(
                        onPressed: () {
                          // Aksi saat tombol diklik
                          debugPrint("Anda memilih: $role");
                        },
                        child: Row(
                          children: [
                            const Icon(account_circle_outlined, color: Colors.white,),
                            const Text(" "),
                            Text(
                              role,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  // ignore: unnecessary_to_list_in_spreads
                  }).toList(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
