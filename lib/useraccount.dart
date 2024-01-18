import 'package:flutter/material.dart';

class Myaccount extends StatefulWidget {
  const Myaccount({super.key});

  @override
  State<Myaccount> createState() => _MyaccountState();
}

class _MyaccountState extends State<Myaccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: SizedBox(
                  height: 150,
                  width: 150,
                  child: Image.asset('assets/Shot .png'))),const SizedBox(height: 20,),
          const Text(
            "Step into a world of culinary excellence at 'Chef's Haven,",
            style: TextStyle(
                fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
          ),
           const Text(
            "where every dish is a masterpiece crafted by skilled chefs",
            style: TextStyle(
                fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
          ),const SizedBox(height: 30,),
       
           const Text(
            "From the sizzling grills to the delicate desserts,",
            style: TextStyle(
                fontStyle: FontStyle.normal, fontWeight: FontWeight.bold),
          ), const Text(
            "Chef's Haven is not just a restaurant; ",
            style: TextStyle(
                fontStyle: FontStyle.normal, fontWeight: FontWeight.bold),
          ),
          const Text(
            "it's an experience, where passion for food",
            style: TextStyle(
                fontStyle: FontStyle.normal, fontWeight: FontWeight.bold),
          ),const Text(
            "meets impeccable craftsmanship.",
            style: TextStyle(
                fontStyle: FontStyle.normal, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
