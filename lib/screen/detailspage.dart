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
      body: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                height:200 ,
                width: double.infinity,
                child: Image.network(widget.details["thumbnail"]),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
                height: MediaQuery.of(context).size.height/4,
                width: MediaQuery.of(context).size.width,
                color: Colors.grey[600],
                child: Text(widget.details["discription"])),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(alignment: Alignment.topLeft,
                height: MediaQuery.of(context).size.height/4,
                width: MediaQuery.of(context).size.width,
                color: Colors.grey[600],
                child: Center(child: Text(widget.details["ingridient"]))),
          ),
        ],
      ),
    );
  }
}
