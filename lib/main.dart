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

void main() {
  // ini ceritanya kita masukin data si Nazwa jadi pasien pertama
  DataPasien antrian1 = DataPasien("Nazwa");
  // nah kalo ini ngedata si Dinda jadi pasien kedua
  DataPasien antrian2 = DataPasien("Dinda");

  print("Jadwal Info Antrian Pagi ");
  antrian1.statusAntrian();
  antrian2.statusAntrian();
  //ceritanya puskesmas pindah lokasi sementara.
  // karena variabelnya pake static, kita cukup ubah sekali aja di sini, 
  // nanti antrian si Nazwa dan Dinda otomatis ikut pindah semua.
  DataPasien.lokasiFaskes = "Puskesmas Mawar";
