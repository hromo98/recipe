import 'package:flutter/material.dart';
import 'package:recipe/screen/homepage.dart';

class Favourites extends StatefulWidget {
  final List<Map> favoritesList;

  const Favourites({super.key, required this.favoritesList});

  @override
  State<Favourites> createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListView.builder(
            itemCount: widget.favoritesList.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(widget.favoritesList[index]['title']),
              );
            },
          ),
        ],
      ),
    );
  }
}
