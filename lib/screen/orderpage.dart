// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:recipe/favouriteActivity.dart';


// class OrderPage extends StatefulWidget {
//   const OrderPage({super.key});

//   @override
//   State<OrderPage> createState() => _OrderPageState();
// }

// class _OrderPageState extends State<OrderPage> {
//   Map<int, int> counters = {};

//   @override
//   Widget build(BuildContext context) {
//     final favourite =  Provider.of<FavouriteActivity>(context, listen: false);
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           children: List.generate(
//             favourite.favouritesList.length,
//             (index) {
//               int currentCounter = counters[index] ?? 0;

//               return Container(
//                 height: 150,
//                 padding: EdgeInsets.all(8),
//                 child: Column(
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         SizedBox(
//                           height: 100,
//                           width: 100,
//                           child: Image.network(
//                             favourite.favourriteItem[index]["thumbnail"],
//                           ),
//                         ),
//                         Row(
//                           children: [
//                             IconButton(
//                               icon: Icon(Icons.remove),
//                               onPressed: () {
//                                 setState(() {
//                                   if (currentCounter > 0) {
//                                     currentCounter--;
//                                     counters[index] = currentCounter;
//                                   }
//                                 });
//                               },
//                             ),
//                             Text(
//                               '$currentCounter',
//                               style: TextStyle(fontSize: 20.0),
//                             ),
//                             IconButton(
//                               icon: Icon(Icons.add),
//                               onPressed: () {
//                                 setState(() {
//                                   currentCounter++;
//                                   counters[index] = currentCounter;
//                                 });
//                               },
//                             ),
//                             IconButton(
//                               onPressed: () {
//                                 setState(() {
//                                   favourite.favouritesList.removeAt(index);
//                                 });
//                               },
//                               icon: Icon(Icons.delete),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                     Spacer(),
//                     Align(
//                       alignment: Alignment.bottomRight,
//                       child: TextButton(
//                         style: ButtonStyle(
//                           shape:
//                               MaterialStateProperty.all<RoundedRectangleBorder>(
//                             RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(18.0),
//                             ),
//                           ),
//                           backgroundColor:
//                               MaterialStateProperty.all<Color>(Colors.blue),
//                           foregroundColor:
//                               MaterialStateProperty.all<Color>(Colors.white),
//                         ),
//                         onPressed: () {
                          
//                         },
//                         child: Text(
//                           'Buy',
//                           style: TextStyle(
//                               fontSize: 15, fontWeight: FontWeight.bold),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               );
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }
