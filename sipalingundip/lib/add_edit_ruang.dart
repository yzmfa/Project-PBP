import 'package:flutter/material.dart';
import 'package:sipalingundip/navbar.dart';
import 'view_ruang.dart'; // File yang berisi model RuangKuliah

class AddEditRuangPage extends StatefulWidget {
  final bool isEdit;
  final RuangKuliah? ruang;

  AddEditRuangPage({required this.isEdit, this.ruang});

  @override
  _AddEditRuangPageState createState() => _AddEditRuangPageState();
}

class _AddEditRuangPageState extends State<AddEditRuangPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController gedungController = TextEditingController();
  final TextEditingController namaController = TextEditingController();
  final TextEditingController kapasitasController = TextEditingController();
  final TextEditingController programStudiController = TextEditingController();

  @override
  void initState() {
    super.initState();
    if (widget.isEdit && widget.ruang != null) {
      gedungController.text = widget.ruang!.gedung;
      namaController.text = widget.ruang!.nama;
      kapasitasController.text = widget.ruang!.kapasitas.toString();
      programStudiController.text = widget.ruang!.programStudi;
    }
  }

  @override
  void dispose() {
    gedungController.dispose();
    namaController.dispose();
    kapasitasController.dispose();
    programStudiController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 45, 136),
      appBar: const MyNavbar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          elevation: 8,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: ListView(
                children: [
                  Text(
                    widget.isEdit ? 'Edit Ruang Kuliah' : 'Tambah Ruang Kuliah',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 45, 136),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Divider(thickness: 2),
                  SizedBox(height: 16),
                  // Row untuk dua kolom
                  Row(
                    children: [
                      Expanded(
                        child: _buildTextField(
                          controller: gedungController,
                          labelText: 'Gedung',
                          icon: Icons.location_city,
                          hintText: 'Masukkan gedung',
                        ),
                      ),
                      SizedBox(width: 16), // Spacing antara kolom
                      Expanded(
                        child: _buildTextField(
                          controller: namaController,
                          labelText: 'Nama Gedung',
                          icon: Icons.business,
                          hintText: 'Masukkan nama gedung',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                        child: _buildTextField(
                          controller: kapasitasController,
                          labelText: 'Kapasitas',
                          icon: Icons.people,
                          hintText: 'Masukkan kapasitas',
                          keyboardType: TextInputType.number,
                        ),
                      ),
                      SizedBox(width: 16), // Spacing antara kolom
                      Expanded(
                        child: _buildTextField(
                          controller: programStudiController,
                          labelText: 'Program Studi',
                          icon: Icons.school,
                          hintText: 'Masukkan program studi',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 32),
                  ElevatedButton.icon(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.of(context).pop(RuangKuliah(
                          widget.ruang?.no ?? '',
                          gedungController.text,
                          namaController.text,
                          int.tryParse(kapasitasController.text) ?? 0,
                          programStudiController.text,
                        ));
                      }
                    },
                    icon: Icon(Icons.save, color: Colors.white),
                    label: Text(widget.isEdit ? 'Update' : 'Tambah'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 0, 45, 136),
                      padding: EdgeInsets.symmetric(vertical: 16),
                      textStyle: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Fungsi untuk membuat TextFormField dengan Icon dan Validator
  Widget _buildTextField({
    required TextEditingController controller,
    required String labelText,
    required IconData icon,
    String? hintText,
    TextInputType keyboardType = TextInputType.text,
  }) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        prefixIcon: Icon(icon),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        filled: true,
        fillColor: Colors.grey[200],
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return '$labelText tidak boleh kosong';
        }
        if (keyboardType == TextInputType.number && int.tryParse(value) == null) {
          return '$labelText harus berupa angka';
        }
        return null;
      },
    );
  }
}