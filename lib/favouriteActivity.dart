
import 'package:flutter/material.dart';


class favouriteactivity with ChangeNotifier {
  List favourriteitem = [];

  void addToFavourite(description) {
    favourriteitem.add(description);
    notifyListeners();
  }

  void deleteFavourite(index) {
    favourriteitem.removeAt(index);
    notifyListeners();
  }
  void clearFavourite(){
    favourriteitem.clear();
    notifyListeners();
  }
}
