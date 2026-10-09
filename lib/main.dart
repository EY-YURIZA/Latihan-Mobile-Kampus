import 'package:flutter/material.dart';
// 1. BAGIAN SELAMAT DATANG
class SelamatDatang extends StatelessWidget {
  const SelamatDatang({super.key});
  // tulisan sapaan ini dibikin static const biar ga berubah aja
  // dan gampang dipanggil dari class lain tanpa harus bikin objek baru
  static const masihPemula = 'Halo, Selamat Datang SEPUHH!';  
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: CustomTextWidget(),
        ),
      ),
    );
  }
}
class DataPasien {
  // pake static soalnya puskesmasnya kan cuma satu gedung, 
  // jadi semua pasien yang antri otomatis lokasinya sama di sini terus
  static String lokasiFaskes = "Puskesmas Melati";
  // ini sengaja ga pake static, soalnya nama orang yang daftar berobat pasti beda-beda
  String namaPasien;
  // ini semacam jembatan buat nyimpennama pasien pas datanya diisi di bawah
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

  print("Info Antrian Pagi ");
  antrian1.statusAntrian();
  antrian2.statusAntrian();
  // karena variabelnya pake static, kita cukup ubah sekali aja di sini, 
  // nanti antrian si Nazwa dan Dinda otomatis ikut pindah semua.
  DataPasien.lokasiFaskes = "Puskesmas Mawar";
  //sudah dialinkan
  print(" Info Antrian Setelah Dialihkan ");
  antrian1.statusAntrian();
  antrian2.statusAntrian();
  runApp(const SelamatDatang());
}

//jajal buat custom widget
class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return const Text(
      // narik tulisan dari variabel masihPemula yang ada di class SelamatDatang tadi
      SelamatDatang.masihPemula,
      style: TextStyle(
        fontSize: 24,
        color: Colors.blue,
      ),
    );
  }
}
