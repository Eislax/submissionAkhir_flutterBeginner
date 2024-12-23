import "package:flutter/material.dart";
import 'package:submission_dicoding_flutter_pemula/themes/app_theme.dart';

class TopNav extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: whiteColor,
      elevation: 4,
      toolbarHeight: 70,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Only Goats',
          style: blackTextStyle.copyWith(
              fontSize: 18,
            ),
          ),
          SizedBox(height: 4), // Menambahkan sedikit spasi pada title dan sub title
          Text(
            'Greatest of All Times Anime Characters',
            style: greyTextStyle.copyWith(fontSize: 12),
          ),
        ],
      ),
      centerTitle: false, // Meletakkan judul pada sebelah kiri
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(70);
}