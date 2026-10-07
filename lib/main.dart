//iseng buat aja dari awal
import 'package:flutter/material.dart';

void main() {
  runApp(const SelamatDatang());
}

class SelamatDatang extends StatelessWidget {
  const SelamatDatang({super.key});
  
  // sapaan awal kita bikin static const biar nempel di class
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
  // pake static karena antrian ini lokasinya sama di satu puskesmas
  static String lokasiFaskes = "Puskesmas Melati";
  // ga static soalnya nama yang berobat pasti beda-beda
  String namaPasien;
  // buat nyimpen nama pas pendaftaran
  DataPasien(this.namaPasien);
  void statusAntrian() {
    print("Atas nama kak $namaPasien, jadwal pemeriksaannya di $lokasiFaskes.");
  }
}