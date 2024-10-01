import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor; // Mendapatkan warna utama dari tema

    return MaterialApp(
      title: 'Flutter layout: Nama dan NIM Anda',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: Column(
          children: [
            Image.asset('assets/danau1.jpeg'), // Menambahkan gambar di sini
            titleSection,
            _buildButtonSection(color),
            textSection,
            Center(
              child: _buildBottomColumn(Colors.blue, Icons.star, 'Favorite'), // Contoh penggunaan _buildBottomColumn
            ),
          ],
        ),
      ),
    );
  }

  // Fungsi untuk membuat kolom dengan ikon dan teks
  Column _buildBottomColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }

  // Fungsi untuk membuat kolom tombol
  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }

  // Fungsi untuk membangun buttonSection
  Widget _buildButtonSection(Color color) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );
  }
}

// Implementasi titleSection
Widget titleSection = Container(
  padding: const EdgeInsets.all(32), // Padding 32 piksel di setiap sisi
  child: Row(
    children: [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Posisi kolom di awal baris
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 8), // Padding bawah 8 piksel
              child: const Text(
                'Wisata Gunung di Batu',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Text(
              'Batu, Malang, Indonesia',
              style: TextStyle(
                color: Colors.grey, // Set warna menjadi abu-abu
              ),
            ),
          ],
        ),
      ),
      const Icon(
        Icons.star, // Ikon bintang
        color: Colors.red, // Warna merah
      ),
      const Text('41'), // Teks "41"
    ],
  ),
);

Widget textSection = Container(
  padding: const EdgeInsets.all(32),
  child: const Text(
    'Carilah teks di internet yang sesuai '
        'dengan foto atau tempat wisata yang ingin '
        'Anda tampilkan. '
        'Tambahkan nama dan NIM Anda sebagai '
        'identitas hasil pekerjaan Anda. '
        'Selamat mengerjakan 🙂.',
    softWrap: true,
  ),
);
