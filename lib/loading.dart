import 'package:flutter/material.dart';
import 'package:recipe/dashboard.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() async {
    await Future.delayed(const Duration(seconds: 3));

    // ignore: use_build_context_synchronously
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const Dashboard(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Center(
            child: Text(
              'RECIPES',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 200,
            width: 200,
            child: Image.asset('assets/image1.jpg'),
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Easily save your favourite ',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Text(
                'recipes ',
                style: TextStyle(fontSize: 20, color: Colors.redAccent),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: LinearProgressIndicator(),
          ),
        ],
      ),
    );
  }
}
