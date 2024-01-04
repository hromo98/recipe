import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipe/favouriteActivity.dart';


class Favourites extends StatefulWidget {
  const Favourites({super.key});

  @override
  State<Favourites> createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites> {

  @override
  Widget build(BuildContext context) {
    final favourite = Provider.of<FavouriteActivity>(context,listen: false);
    return Scaffold(
      body: ListView.builder(
        itemCount: favourite.favouritesList.length,
        itemBuilder: (context, index) {
          return Card(
            child: Image.network(
                favourite.favouritesList[index]["image"]),
          );
        },
      ),
    );
  }
}
