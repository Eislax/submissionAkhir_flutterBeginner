import 'package:flutter/material.dart';
import 'package:submission_dicoding_flutter_pemula/models/goats_model.dart';

class FavoriteProvider with ChangeNotifier {
  List<GoatsModel> _favorites = [];

  List<GoatsModel> get favorites => _favorites;

  void toggleFavorite(GoatsModel goat) {
    if (_favorites.contains(goat)) {
      _favorites.remove(goat);
      // print('Removed from favorites');
    } else {
      _favorites.add(goat);
      // print('Added to favorites');
    }
    notifyListeners();
  } 

}