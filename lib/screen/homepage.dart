import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipe/favouriteActivity.dart';
import 'package:recipe/screen/detailspage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map> itemlist = [
    {
      'title': 'momo',
      'ingridient': '''1 cup maida / plain flour,          
1/2 tsp salt water for kneading,
oil for greasing,
3tsp oil,
300g maida''',
      'discription':
          'Momos are a type of steamed filled dumpling in Tibetan and Nepali cuisine that is also popular in neighbouring Bhutan and India. Momos are usually served with a sauce known as achar influenced by the spices and herbs used within many South Asian',
      'thumbnail':
          'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a1/Momo_nepal.jpg/220px-Momo_nepal.jpg',
      'noofitem': 1,
    },
    {
      'title': 'sandwish',
      'ingridient': '''2 slices of your favorite bread
4-6 slices of turkey
2 slices of your preferred cheese
Lettuce leaves
Tomato slices
Mayonnaise
Mustard
Salt and pepper to taste''',
      'discription':
          'A sandwich is a food typically consisting of vegetables, sliced cheese or meat, placed on or between slices of bread, or more generally any dish wherein bread serves as a container or wrapper for another food type.[1][2][3] The sandwich began as a portable, convenient finger food in the Western world, though over time it has become prevalent worldwide.',
      'thumbnail':
          'https://upload.wikimedia.org/wikipedia/commons/thumb/2/24/Bologna_sandwich.jpg/250px-Bologna_sandwich.jpg',
      'noofitem': 1,
    },
    {
      'title': 'roast chicken',
      'ingridient': '''1 whole chicken (about 4-5 pounds)
Salt and pepper, to taste
2 teaspoons paprika
1 teaspoon garlic powder
1 teaspoon onion powder
1 teaspoon dried thyme
1 teaspoon dried rosemary
1/2 teaspoon dried oregano
1/2 teaspoon dried sage
1/4 cup olive oil
1 lemon, halved
1 onion, quartered
4 cloves garlic, peeled
Fresh herbs (rosemary, thyme, and sage) for stuffing (optional)
1 cup chicken broth or water, for basting''',
      'discription':
          'Roast chicken is chicken prepared as food by roasting whether in a home kitchen, over a fire, or with a rotisserie (rotary spit). Generally, the chicken is roasted with its own fat and juices by circulating the meat during roasting, and therefore, are usually cooked exposed to fire or heat with some type of rotary grill so that the circulation of these fats and juices is as efficient as possible. Roast chicken is a dish that appears in a wide variety of cuisines worldwide.',
      'thumbnail':
          'https://upload.wikimedia.org/wikipedia/commons/thumb/3/37/Chicken_dinner.jpg/300px-Chicken_dinner.jpg',
      'noofitem': 1,
    },
    {
      'title': 'porkchop',
      'ingridient': '''4 pork chops (bone-in or boneless)
Salt and black pepper to taste
1 teaspoon garlic powder
1 teaspoon paprika
1/2 teaspoon dried thyme
2 tablespoons olive oil
2 tablespoons unsalted butter
Fresh herbs (such as thyme or rosemary) for garnish (optional)''',
      'discription':
          'A pork chop, like other meat chops, is a loin cut taken perpendicular to the spine of the pig and is usually a rib or part of a vertebra. Pork chops are unprocessed and leaner than other cuts.[1] Chops are commonly served as an individual portion, and can be accompanied with applesauce, vegetables, and other sides. Pork is one of the most commonly consumed meats in the world.[1][2] In the United States, pork chops are the most commonly consumed meat cut from the pork loin and account for 10% of total pork consumption',
      'thumbnail':
          'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f0/C%C3%B4tes_de_porc_marin%C3%A9es%2C_cuites_au_barbecue%2C_mars_2020_%28006%29.jpg/220px-C%C3%B4tes_de_porc_marin%C3%A9es%2C_cuites_au_barbecue%2C_mars_2020_%28006%29.jpg',
      'noofitem': 1,
    },
  ];
  @override
  Widget build(BuildContext context) {
    // final favourite = Provider.of<FavouriteActivity>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: 1000,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Transform(
                          alignment: Alignment.topLeft,
                          transform: Matrix4.rotationZ(-0.3),
                          child: Image.asset(
                            'chef.jpg',
                            height: 40,
                            width: 40,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'CookIt',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 40,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    'New Recipes',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: itemlist.length,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          color: Colors.amber[100],
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        margin: const EdgeInsets.all(10),
                        height: 150,
                        width: double.infinity,
                        child: Row(
                          children: [
                            Stack(
                              children: [
                                ClipRRect(
                                  borderRadius:
                                      const BorderRadius.all(Radius.circular(10)),
                                  child: Image.network(
                                    itemlist[index]["thumbnail"],
                                    height: 150,
                                    width: 100,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 10),
                                    child: Consumer<favouriteactivity>(
                                        builder: (context, provider, child) {
                                      return IconButton(
                                        onPressed: () {
                                          Provider.of<favouriteactivity>(context,
                                                  listen: false)
                                              .addToFavourite(
                                                {
                                                  "thumbnail" : '${itemlist[index]["thumbnail"]}',
                                                  "title" : '${itemlist[index]["title"]}',
                                                  "quantity" : 0
                                                  }
                                               );
    
                                          // provider.addToFavourite(
                                          //   Itemlist[index]["thumbnail"],
                                          //   Itemlist[index]["title"],
                                          //   Itemlist[index]["discription"],
                                          // );
                                        },
                                        highlightColor:
                                            const Color.fromARGB(255, 214, 174, 30),
                                        icon: Column(
                                          children: [
                                            Icon(
                                              Icons.bookmark,
                                              color: provider.favourriteitem.any(
                                                      (favItem) =>
                                                          favItem["title"] ==
                                                          itemlist[index]
                                                              ["title"])
                                                  ? Colors.amber
                                                  : Colors.black,
                                            ),
                                          ],
                                        ),
                                      );
                                    })),
                              ],
                            ),
                            const SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Center(
                                  child: Text(
                                    '${itemlist[index]["title"]}',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Detailspage(
                                            details: itemlist[index],
                                          ),
                                        ));
                                  },
                                  child: SizedBox(
                                    width: 200,
                                    child: Text(
                                      maxLines: 5,
                                      overflow: TextOverflow.clip,
                                      '${itemlist[index]["discription"]}',
                                      style: TextStyle(
                                          fontSize:
                                              MediaQuery.of(context).size.width /
                                                  25),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
