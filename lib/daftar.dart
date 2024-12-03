import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Daftar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60), // Menyesuaikan tinggi AppBar
        child: AppBar(
          backgroundColor: Colors.white, // Background AppBar putih
          elevation: 0, // Menghilangkan bayangan AppBar
          title: Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              'Daftar TIX ID',
              style: TextStyle(
                color: Colors.black, // Teks judul berwarna hitam
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(2.0), // Ketebalan garis bawah
            child: Container(
              color: Colors.grey[800], // Garis bawah abu-abu tua
              height: 2.0,
            ),
          ),
        ),
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 30, left: 16, right: 16, bottom: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Field Nama Lengkap
            Text(
              'Nama Lengkap',
              style: TextStyle(
                fontSize: 16,
                color: Colors.blue[800],
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Masukkan Nama Lengkap',
                hintStyle: TextStyle(color: Colors.grey),
                border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
              ),
            ),
            SizedBox(height: 20), // Jarak antara field
            // Field Nomor Handphone dengan prefix +62
            Text(
              'Nomor Handphone',
              style: TextStyle(
                fontSize: 16,
                color: Colors.blue[800],
              ),
            ),
            TextField(
              keyboardType:
                  TextInputType.phone, // Set prefix +62 secara default
              decoration: InputDecoration(
                prefixText: '+62 ', // Menambahkan prefix +62
                prefixStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 16), // Ukuran font lebih besar
                hintText: 'Masukkan Nomor Handphone',
                hintStyle: TextStyle(color: Colors.grey),
                border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
              ),
              inputFormatters: [
                FilteringTextInputFormatter
                    .digitsOnly, // Hanya angka yang dapat dimasukkan
              ],
            ),
            SizedBox(height: 40), // Jarak antara form dan tombol
            // Tombol Daftar
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue[800], // Warna tombol biru tua
                  minimumSize: Size(double.infinity, 45), // Lebar tombol penuh
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(8), // Sudut tombol melengkung
                  ),
                ),
                onPressed: () {
                  // Aksi daftar
                  Navigator.pushReplacementNamed(context, '/home');
                },
                child: Text(
                  'Daftar TIX ID',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}