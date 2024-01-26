import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipe/dashboard.dart';
import 'package:recipe/favouriteActivity.dart';
import 'package:recipe/screen/confirmation.dart';

class Favourites extends StatefulWidget {
  const Favourites({super.key});

  @override
  State<Favourites> createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites> {
  void addData(items) {
    FirebaseFirestore.instance
        .collection('orders')
        .add({"items": items}).then((value) {
      Provider.of<favouriteactivity>(context, listen: false).clearFavourite();
      print('Data added successfully');
    }).catchError((error) {
      print('Error adding data: $error');
    });
  }

  @override
  Widget build(BuildContext context) {
    final favourite = Provider.of<favouriteactivity>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: SizedBox(
                height: 30,
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Dashboard(),
                            )),
                        child: const Icon(Icons.arrow_back),
                      ),
                      const Text(
                        "Favorites",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      favourite.favourriteitem.isEmpty
                          ? const Text('Empty')
                          : SizedBox(
                              height: 50,
                              child: TextButton(
                                style: TextButton.styleFrom(
                                    foregroundColor: Colors.white,
                                    backgroundColor:
                                        const Color.fromARGB(255, 96, 152, 248),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(12))),
                                onPressed: () {
                                  // String title = favourite.favourriteitem["title"],
                                  //     noofitem = favourite.favourriteitem["noofitem"]
                                  //         .toString();

                                  addData(favourite.favourriteitem);
                                  favourite.favourriteitem = [];

                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const ConfirmationPage(),
                                      ));
                                },
                                child: const Text(
                                  'Order Now',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: favourite.favourriteitem.isEmpty
                  ? const Center(child: Text("No items in favorites"))
                  : ListView.builder(
                      itemCount: favourite.favourriteitem.length,
                      itemBuilder: (context, index) {
                        return Container(
                          alignment: Alignment.topLeft,
                          margin: const EdgeInsets.only(
                            bottom: 5,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.amber[100],
                          ),
                          child: Stack(
                            children: [
                              SizedBox(
                                width: double.infinity,
                                child: Opacity(
                                  opacity: 0.5,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.network(
                                      favourite.favourriteitem[index]
                                          ["thumbnail"],
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned.fill(
                                child: Align(
                                  alignment: Alignment.topRight,
                                  child: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          favourite.deleteFavourite(index);
                                        });
                                      },
                                      icon: const Icon(Icons.delete)),
                                ),
                              ),
                              Positioned.fill(
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        favourite.favourriteitem[index]
                                            ["title"],
                                        style: const TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 32),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          IconButton(
                                            onPressed: () {
                                              setState(() {
                                                if (favourite.favourriteitem[
                                                        index]["quantity"] >
                                                    1) {
                                                  favourite
                                                          .favourriteitem[index]
                                                      ["quantity"]--;
                                                }
                                              });
                                            },
                                            icon: const Icon(Icons.remove),
                                            iconSize: 32,
                                          ),
                                          Consumer<favouriteactivity>(
                                            builder: (context, value, child) {
                                              // Check if the index is within the bounds of the list
                                              if (index >= 0 &&
                                                  index <
                                                      value.favourriteitem
                                                          .length) {
                                                return Text(
                                                  value.favourriteitem[index]
                                                          ["quantity"]
                                                      .toString(),
                                                  style: const TextStyle(
                                                      fontSize: 32),
                                                );
                                              } else {
                                                // Handle the case where the index is out of bounds
                                                return const Text('0',
                                                    style: TextStyle(
                                                        fontSize: 32));
                                              }
                                              // return Text(
                                              //   value.favourriteitem[index]
                                              //           ["quantity"]
                                              //       .toString() ,
                                              //   style: const TextStyle(
                                              //       fontSize: 32),
                                              // );
                                            },
                                          ),
                                          IconButton(
                                            onPressed: () {
                                              setState(() {
                                                favourite.favourriteitem[index]
                                                    ["quantity"]++;
                                              });
                                            },
                                            icon: const Icon(Icons.add),
                                            iconSize: 32,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
