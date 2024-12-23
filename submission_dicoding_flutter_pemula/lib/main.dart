import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:submission_dicoding_flutter_pemula/utils/favorite_provider.dart';
import 'package:submission_dicoding_flutter_pemula/pages/home_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => FavoriteProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Goat App',
      home: HomePage(),
    );
  }
}

