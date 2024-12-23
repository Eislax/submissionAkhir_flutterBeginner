import 'package:flutter/material.dart';
import 'package:submission_dicoding_flutter_pemula/models/goats_model.dart';
import 'package:submission_dicoding_flutter_pemula/themes/app_theme.dart';
import 'package:submission_dicoding_flutter_pemula/widgets/goat_card.dart';
import 'package:submission_dicoding_flutter_pemula/widgets/top_nav.dart';
import 'package:submission_dicoding_flutter_pemula/pages/favorite_page.dart';
// import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0; // Menyimpan index halaman yang aktif

  final List<Widget> _pages = [
    // Halaman utama
    HomePageBody(),
    // Halaman Favorit
    FavoritePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopNav(),
      body: _pages[_currentIndex], // Menampilkan halaman sesuai dengan index
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
        ],
        currentIndex: _currentIndex, // Index halaman aktif
        onTap: (index) {
          setState(() {
            _currentIndex = index; // Mengubah halaman yang ditampilkan
          });
        },
      ),
    );
  }
}

class HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ligtestGrey,
      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Jumlah card per baris
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 2 / 3, // Proporsi ukuran card
        ),
        itemCount: goatsList.length,
        itemBuilder: (context, index) {
          final GoatsModel goat = goatsList[index];
          return GoatCard(goat: goat);
        },
      ),
    );
  }
}
