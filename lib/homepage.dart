import 'package:flutter/material.dart';
import 'package:recipe/screen/fav.dart';
import 'package:recipe/screen/ingridient.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map> Itemlist = [
    {
      'title': 'momo',
      'ingridient': '''1 cup maida / plain flour,          
1/2 tsp salt water for kneading,
oil for greasing,
3tsp oil''',
      'discription':
          'Momos are a type of steamed filled dumpling in Tibetan and Nepali cuisine that is also popular in neighbouring Bhutan and India. Momos are usually served with a sauce known as achar influenced by the spices and herbs used within many South Asian',
// //       // 'thumbnail': 'vvv',
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
      // 'thumbnail': 'vvv',
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
      // 'thumbnail': 'vvv',
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
      // 'thumbnail': 'vvv',
    },
    {
      'title': 'porkbbq',
      'ingridient': '''Ingredients:
2 lbs pork shoulder or pork butt, trimmed and cut into 2-inch cubes
1 cup BBQ sauce (store-bought or homemade)
2 tablespoons olive oil
2 tablespoons soy sauce
2 tablespoons Worcestershire sauce
2 tablespoons brown sugar
1 tablespoon Dijon mustard
3 cloves garlic, minced
1 teaspoon smoked paprika
1 teaspoon onion powder
1 teaspoon black pepper
1/2 teaspoon cayenne pepper (adjust to taste)
Salt to taste''',
      'discription':
          ' Pork Barbecue are marinated in a sweet, savory sauce and skewered in bamboo sticks. These meat kebabs are seriously addictive!',
      // 'thumbnail': 'vvv',
    },
    {
      'title': 'paratha',
      'ingridient': '''3 cups all-purpose flour, plus more for dusting,
 1 3/4 teaspoons kosher salt
 1 tablespoon neutral oil, such as canola, plus more as needed
 1 cup warm water
 3/4 cup ghee''',
      'discription':
          'Paratha is a flatbread native to South Asia, with earliest reference mentioned in early medieval Sanskrit text from Karnataka, India; prevalent throughout the modern-day nations of India, Sri Lanka,',
      // 'thumbnail': 'vvv',
    },
    {
      'title': 'kher',
      'ingridient': '''5 cups milk (full fat) ((Or almond milk if vegan))
1/4 cup water
1/2 cup basmati rice ((Or any medium grain white rice, rinsed))
1/2 cup sugar (adjust to taste)
1/4 cup almonds (sliced)''',
      'discription':
          ' Pork Barbecue are marinated in a sweet, savory sauce and skewered in bamboo sticks. These meat kebabs are seriously addictive!',
      // 'thumbnail': 'vvv',
    },
//     {
//       'title': 'gimbab',
//       'discription': 'Ingredients:
// For the Rice:
// 2 cups short-grain sushi rice
// 2 1/2 cups water
// 1/3 cup rice vinegar
// 3 tablespoons sugar
// 1 teaspoon salt',
//       // 'thumbnail': 'vvv',
//     },
//     {
//       'title': 'friedchicken',
//       'discription': 'Chicken pieces (cut into desired size, like drumsticks or wings)
// 2 cups buttermilk
// 2 cups all-purpose flour
// 1 tablespoon paprika
// 1 tablespoon garlic powder
// 1 tablespoon onion powder
// 1 teaspoon cayenne pepper (adjust to taste)
// Salt and pepper to taste
// Vegetable oil for frying',
//       // 'thumbnail': 'vvv',
//     }
  ];

  int _currentIndex = 0;

  final screens = [
    HomePage(),
    Favourites(),
    Ingridient(),

    // Add more screens as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      
      screens[_currentIndex],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Colors.blue.shade200,
          labelTextStyle: const MaterialStatePropertyAll(
            TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ),
        child: NavigationBar(
          height: 60,
          backgroundColor: Colors.amberAccent.shade400,
          selectedIndex: _currentIndex,
          onDestinationSelected: (_currentIndex) =>
          setState(() {
            this._currentIndex = _currentIndex;
          }),
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home_filled), label: 'Home'),
             NavigationDestination(icon: Icon(Icons.bookmark), label: 'Favourites'),
              NavigationDestination(icon: Icon(Icons.feed), label: 'Ingridient')
          ],
        ),
      ),


      // SizedBox(
      //   height: 1000,
      //   width: double.infinity,
      //   child: Padding(
      //     padding: const EdgeInsets.all(10.0),
      //     child: Column(
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       children: [
      //         Center(
      //           child: Stack(
      //             children: [
      //               Padding(
      //                 padding: const EdgeInsets.all(8.0),
      //                 child: Transform(
      //                   alignment: Alignment.topLeft,
      //                   transform: Matrix4.rotationZ(-0.3),
      //                   child: Image.asset(
      //                     'chef.jpg',
      //                     height: 40,
      //                     width: 40,
      //                     fit: BoxFit.contain,
      //                   ),
      //                 ),
      //               ),
      //               Padding(
      //                 padding: const EdgeInsets.all(8.0),
      //                 child: Text(
      //                   'CookIt',
      //                   style: TextStyle(
      //                     color: Colors.yellow,
      //                     fontSize: 40,
      //                   ),
      //                 ),
      //               ),
      //             ],
      //           ),
      //         ),
      //         SizedBox(
      //           height: 20,
      //         ),
      //         Padding(
      //           padding: const EdgeInsets.symmetric(horizontal: 10),
      //           child: Text(
      //             'New Recipes',
      //             style: TextStyle(
      //               fontSize: 20,
      //             ),
      //           ),
      //         ),
      //         Expanded(
      //           child: ListView.builder(
      //             shrinkWrap: true,
      //             itemCount: Itemlist.length,
      //             itemBuilder: (context, index) {
      //               return Container(
      //                 decoration: BoxDecoration(
      //                   color: Colors.amber[100],
      //                   borderRadius: BorderRadius.all(
      //                     Radius.circular(10),
      //                   ),
      //                 ),
      //                 margin: EdgeInsets.all(10),
      //                 height: 150,
      //                 width: double.infinity,
      //                 child: Row(
      //                   children: [
      //                     Stack(
      //                       children: [
      //                         ClipRRect(
      //                           borderRadius:
      //                               BorderRadius.all(Radius.circular(10)),
      //                           child: Image.asset(
      //                             'assets/vegmomo.jpeg',
      //                             height: 150,
      //                             width: 100,
      //                             fit: BoxFit.cover,
      //                           ),
      //                         ),
      //                         Padding(
      //                           padding:
      //                               const EdgeInsets.symmetric(vertical: 10),
      //                           child: IconButton(
      //                             onPressed: () {
      //                               setState(() {
      //                                 (Icons.bookmark);
      //                               });
      //                             },
      //                             highlightColor:
      //                                 Color.fromARGB(255, 214, 174, 30),
      //                             icon: Icon(Icons.bookmark_border),
      //                           ),
      //                         ),
      //                       ],
      //                     ),
      //                     Column(
      //                       crossAxisAlignment: CrossAxisAlignment.start,
      //                       mainAxisAlignment: MainAxisAlignment.center,
      //                       children: [
      //                         Padding(
      //                           padding:
      //                               const EdgeInsets.symmetric(horizontal: 10),
      //                           child: Text(
      //                             '${Itemlist[index]["title"]}',
      //                             style: TextStyle(
      //                                 fontWeight: FontWeight.bold,
      //                                 fontSize: 15),
      //                           ),
      //                         ),
      //                         SizedBox(
      //                           height: 5.0,
      //                         ),
      //                         Padding(
      //                           padding:
      //                               const EdgeInsets.symmetric(horizontal: 10),
      //                           child: Container(
      //                             decoration: BoxDecoration(
      //                                 borderRadius: BorderRadius.all(
      //                                     Radius.circular(10))),
      //                             height: 100,
      //                             width:
      //                                 MediaQuery.of(context).size.width / 1.6,
      //                             child: InkWell(
      //                               onTap: () {
      //                                 Navigator.push(
      //                                   context,
      //                                   MaterialPageRoute(
      //                                     builder: (context) => Ingridient(),
      //                                   ),
      //                                 );
      //                               },
      //                             ),
      //                           ),
      //                         ),
      //                       ],
      //                     ),
      //                   ],
      //                 ),
      //               );
      //             },
      //           ),
      //         ),
              // bottomnavigationBar:BottomNavigationBar(items:
              //   [BottomNavigationBarItem(icon: Icon(Icons.camera ))]);

              // BottomNavigationBar(
              //  currentIndex: _currentIndex,

              //  backgroundColor: Colors.blue[200],
              //  type: BottomNavigationBarType.fixed,
              //  selectedItemColor: Colors.blueAccent,
              //  unselectedItemColor: Colors.amber,
              //  items: <BottomNavigationBarItem>[
              //    BottomNavigationBarItem(
              //      icon: Icon(Icons.home),
              //      label: 'Home',

              //    ),
              //    // BottomNavigationBarItem(
              //    //   icon: Icon(Icons.search),
              //    //   label: 'search',
              //    // ),
              //    BottomNavigationBarItem(
              //      icon: Icon(Icons.bookmark),
              //      label: 'fav',
              //    ),
              //    BottomNavigationBarItem(
              //      icon: Icon(Icons.camera_alt_outlined),
              //      label: 'ingridient',
              //    ),
              //  ],
              //   )
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
