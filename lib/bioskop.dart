import 'package:flutter/material.dart';
import 'package:ujianukl/bottom_navbar.dart';

class CinemaPage extends StatefulWidget {
  const CinemaPage({Key? key}) : super(key: key);

  @override
  State<CinemaPage> createState() => _BioskopScreenState();
}

class _BioskopScreenState extends State<CinemaPage> {
  void _addToFavorites(String name) {
    final snackBar =
        SnackBar(content: Text('$name telah ditambahkan ke bioskop favorit'));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bioskop'),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search Bar
            Container(
              height: 40,
              margin: const EdgeInsets.only(bottom: 16),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.search),
                        hintText: 'Cari bioskop',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.notifications),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.account_circle),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8),
              child: Row(
                children: [
                  Icon(Icons.location_on, size: 16),
                  Text(' Jakarta'),
                ],
              ),
            ),

            // Title Section
            Row(
              children: [
                Image.asset(
                  'img/bioskop_pilihan.png',
                  width: 60,
                  height: 60,
                ),
                const SizedBox(width: 8),
                const Text(
                  'Tandai bioskop favoritmu!',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8.0),
            const Text(
              'Bioskop favoritmu akan berada paling atas pada daftar ini dan pada jadwal film.',
              style: TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 16.0),

            // Cinema List
            Expanded(
              child: ListView(
                children: [
                  CinemaCard(
                    name: 'AEON MALL JGC CGV',
                    address: 'Jl. JGC No.1, Jakarta',
                    onTap: () {
                      _addToFavorites('AEON MALL JGC CGV');
                    },
                    imageUrl: 'bioskop/bioskop_1.jpg',
                  ),
                  CinemaCard(
                    name: 'AEON MALL TANJUNG BARAT XXI',
                    address: 'Jl. Tanjung Barat No.2, Jakarta',
                    onTap: () {
                      _addToFavorites('AEON MALL TANJUNG BARAT XXI');
                    },
                    imageUrl: 'bioskop/bioskop_2.jpg',
                  ),
                  CinemaCard(
                    name: 'AGORA MALL IMAX',
                    address: 'Jl. Agora No.3, Jakarta',
                    onTap: () {
                      _addToFavorites('AGORA MALL IMAX');
                    },
                    imageUrl: 'bioskop/bioskop_3.jpg',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavbar(currentIndex: 1),
    );
  }
}

class CinemaCard extends StatelessWidget {
  final String name;
  final String address;
  final VoidCallback onTap;
  final String imageUrl;

  const CinemaCard({
    super.key,
    required this.name,
    required this.address,
    required this.onTap,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: Image.asset(
          imageUrl,
          width: 50,
          height: 50,
          fit: BoxFit.cover,
        ),
        title: Text(
          name,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(address),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: onTap,
      ),
    );
  }
}
