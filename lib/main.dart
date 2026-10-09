import 'package:flutter/material.dart';
//pelajaran dosen , cmn diubah sdikit 
class SelamatDatang extends StatelessWidget {
  const SelamatDatang({super.key});
  // tulisan  ini dibikin static const biar ga berubah aja
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
  //in pas ud dpindhin dipindahin
  print(" Info Antrian Setelah Dialihkan ");
  antrian1.statusAntrian();
  antrian2.statusAntrian();
  runApp(const SelamatDatang());
}
// jajal buat custom widget
class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget({super.key});
  @override
  Widget build(BuildContext context) {
    // dpkein column  y biar widget fontnya bisa ikutan tampil di bawah teks biru 
    // tanpa harus ngubah class SelamatDatang
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center, // biar posisinya pas di tengah layar
      children: [
        Text(
          // narik tulisan dari variabel masihPemula yang ada di class SelamatDatang tadi
          SelamatDatang.masihPemula,
          style: TextStyle(
            fontSize: 24,
            color: Colors.blue,
          ),
        ),
        SizedBox(height: 40), // kasih jarak biar ga nempel banget
        // manggil widget tes font buatanmu di bawah
        FontTextWidget(), 
      ],
    );
  }
}
class FontTextWidget extends StatelessWidget {
  const FontTextWidget({super.key});
  @override
  Widget build(BuildContext context) {
    // pake Column biar barisan teksnya numpuk ke bawah
    return const Column(
      // crossAxisAlignment ini biar tulisannya rata kiri semua, rapi gtu
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // ini buat kya nulis biasa 
        Text(
          'Ini teks Normal',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        SizedBox(height: 10), // klo untuk sizebox buat jaga jrk ajsi
        //  ini buat nebelin tulisan ny
        Text(
          'Ini teks Bold',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold, //  buat nebalin font
          ),
        ),
        SizedBox(height: 10),
        // ini buat font aga tebel dikit kya semi gtu
        Text(
          'Ini teks Semi Bold',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600, // nah w600 ini buat ngtur tingkat ktebalan ny
          ),
        ),
        SizedBox(height: 10),
        // ini buat font miring 
        Text(
          'Ini teks Italic (Miring)',
          style: TextStyle(
            fontSize: 20,
            fontStyle: FontStyle.italic, // bikin tulisannya miring
          ),
        ),
      ],
    );
  }
}