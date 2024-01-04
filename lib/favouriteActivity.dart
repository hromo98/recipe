import 'package:flutter/material.dart';

class FavouriteActivity with ChangeNotifier {
  List<Map<String, dynamic>> favouritesList = [];

  void addToFavourite(String image, String description) {
    favouritesList.add({"image": image, "description": description});
    print(favouritesList);
    notifyListeners();
  }
}
