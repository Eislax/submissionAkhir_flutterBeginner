import 'package:flutter/material.dart';
import 'package:submission_dicoding_flutter_pemula/models/goats_model.dart';
import 'package:submission_dicoding_flutter_pemula/pages/detail_card.dart';
import 'package:submission_dicoding_flutter_pemula/themes/app_theme.dart';

class GoatCard extends StatelessWidget {
  final GoatsModel goat; // Model untuk card ini

  const GoatCard({Key? key, required this.goat}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // print("GoatCard clicked: ${goat.name}");
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailCard(goat: goat),
          ),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 6,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    goat.imageCard, // Gambar dari model
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter,
                    width: double.infinity,
                    errorBuilder: (context, error, stackTrace) => Container(
                      color: Colors.grey[300],
                      child: Icon(
                        Icons.broken_image,
                        size: 50,
                        color: greyColor,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                goat.name,
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 5),
              Text(
                goat.category,
                style: greyTextStyle.copyWith(
                  fontSize: 14,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
