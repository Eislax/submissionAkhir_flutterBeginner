import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:submission_dicoding_flutter_pemula/models/goats_model.dart';
import 'package:submission_dicoding_flutter_pemula/widgets/goat_card.dart';
import 'package:submission_dicoding_flutter_pemula/pages/detail_card.dart';
import 'package:submission_dicoding_flutter_pemula/utils/favorite_provider.dart';

class FavoritePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<FavoriteProvider>(
      builder: (context, favoriteProvider, child) {
        List<GoatsModel> favoriteGoats = favoriteProvider.favorites;

        // Jika tidak ada favorit, tampilkan pesan kosong
        if (favoriteGoats.isEmpty) {
          return Center(
            child: Text("No favorites yet"),
          );
        }

        return GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: 2 / 3,
          ),
          itemCount: favoriteGoats.length,
          itemBuilder: (context, index) {
            final goat = favoriteGoats[index];
            return GestureDetector(
              onTap: () {
                // Saat card favorit di klik, buka halaman detail
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailCard(goat: goat),
                  ),
                );
              },
              child: GoatCard(goat: goat),
            );
          },
        );
      },
    );
  }
}

