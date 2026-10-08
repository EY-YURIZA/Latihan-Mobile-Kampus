import 'package:flutter/material.dart';

void main() {
  runApp(const SelamatDatang());
}

class SelamatDatang extends StatelessWidget {
  const SelamatDatang({super.key});
  
  static const masih_pemula = 'Halo, Selamat Datang SEPUHH!';  

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(child: Text(masih_pemula)),
      ),
    );
  }
}

class DataPasien {
  // pake static soalnya puskesmasnya kan cuma satu gedung
  // jadi semua pasien yang antri otomatis lokasinya sama di sini terus
  static String lokasiFaskes = "Puskesmas Melati";
  //  ga pake static, soalnya nama orang yang daftar berobat pasti beda-beda
  String namaPasien;
  // ini semacam jembatan buat nyimpen nama pasien pas datanya diisi di bawah
  DataPasien(this.namaPasien); 
  void statusAntrian() {
    print("Atas nama kak $namaPasien, jadwal pemeriksaannya di $lokasiFaskes.");
  }
}

