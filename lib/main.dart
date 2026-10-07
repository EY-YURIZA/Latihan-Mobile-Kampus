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