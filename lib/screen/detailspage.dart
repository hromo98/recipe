import 'package:flutter/material.dart';

class Detailspage extends StatefulWidget {
  final details;
  const Detailspage({super.key, required this.details});

  @override
  State<Detailspage> createState() => _DetailspageState();
}

class _DetailspageState extends State<Detailspage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 3,
                width: MediaQuery.of(context).size.width / 2,
                child: Image.network(widget.details["thumbnail"]),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
                color: Colors.grey[600],
                child: Text(widget.details["discription"])),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                color: Colors.grey[600],
                child: Text(widget.details["ingridient"])),
          ),
        ],
      ),
    );
  }
}
