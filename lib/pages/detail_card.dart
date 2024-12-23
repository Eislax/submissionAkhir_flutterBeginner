import 'dart:async';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:submission_dicoding_flutter_pemula/utils/favorite_provider.dart';
import 'package:submission_dicoding_flutter_pemula/models/goats_model.dart';
import 'package:submission_dicoding_flutter_pemula/themes/app_theme.dart';

class DetailCard extends StatefulWidget {
  final GoatsModel goat;

  DetailCard({required this.goat});

  @override
  _DetailCardState createState() => _DetailCardState();
}

class _DetailCardState extends State<DetailCard> {
  int _currentImageIndex = 0;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    // Mengatur timer untuk mengganti gambar setiap beberapa detik
    _timer = Timer.periodic(Duration(seconds: 3), (timer) {
      setState(() {
        _currentImageIndex = (_currentImageIndex + 1) % widget.goat.imageCarousel.length;
        // print('Current image index: $_currentImageIndex');
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel(); // Pastikan timer dihentikan saat widget dihapus atau keluar
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            // Bagian Carousel Gamba
            Positioned.fill(
              child: AnimatedSwitcher(
                duration: Duration(milliseconds: 500), // Durasi animasi
                child: Image.asset(
                  widget.goat.imageCarousel[_currentImageIndex],
                  key: ValueKey<int>(_currentImageIndex), // Key unik untuk setiap gambar
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Konten di bawah gambar
            ListView(
              children: [
                SizedBox(
                  height: 525, // Menyesuaikan ukuran ruang untuk konten di bawah gambar
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                    color: whiteColor,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      // NOTE: TITLE
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: edge,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.goat.name,
                              style: blackTextStyle.copyWith(
                                fontSize: 22,
                              ),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text.rich(
                              TextSpan(
                                text: 'Anime: ',
                                style: greyTextStyle.copyWith(
                                  fontSize: 16,
                                ),
                                children: [
                                  TextSpan(
                                    text: widget.goat.category,
                                    style: blackTextStyle.copyWith(
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      // NOTE: DESCRIPTION
                      Padding(
                        padding: EdgeInsets.only(left: edge),
                        child: Text(
                          'Description',
                          style: regulerTextStyle.copyWith(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: edge),
                        child: Text(
                          widget.goat.description,
                          style: greyTextStyle.copyWith(
                            fontSize: 14,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // Ikon back dan favorite berada di atas gambar
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: edge,
                vertical: 30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.grey,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  FavoriteButton(goat: widget.goat),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FavoriteButton extends StatelessWidget {
  final GoatsModel goat;

  FavoriteButton({required this.goat});

  @override
  Widget build(BuildContext context) {
    return Consumer<FavoriteProvider>(
      builder: (context, favoriteProvider, child) {
        // Cek apakah goat ini ada di dalam daftar favorit
        bool isFavorite = favoriteProvider.favorites.contains(goat);

        return CircleAvatar(
          backgroundColor: Colors.white,
          child: IconButton(
            icon: Icon(
              isFavorite ? Icons.favorite : Icons.favorite_border,
              color: Colors.red,
            ),
            onPressed: () {
              // Mengubah status favorit
              favoriteProvider.toggleFavorite(goat);
            },
          ),
        );
      },
    );
  }
}


