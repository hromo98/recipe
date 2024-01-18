import 'package:flutter/material.dart';
import 'package:recipe/dashboard.dart';


class Detailspage extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  final details;
  const Detailspage({super.key, required this.details});

  @override
  State<Detailspage> createState() => _DetailspageState();
}

class _DetailspageState extends State<Detailspage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(children: [
              SizedBox(
                height: 200,
                width: double.infinity,
                child: Image.network(
                  widget.details["thumbnail"],
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Dashboard(),
                      )),
                  icon: const Icon(Icons.arrow_back),
                  color: Colors.white,
                  iconSize: 32,
                  
                ),
              ),
            ]),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Description',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text('${widget.details["discription"]}'),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Ingredient",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(widget.details["ingridient"]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
