import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:recipe/dashboard.dart';

class ConfirmationPage extends StatefulWidget {
  const ConfirmationPage({Key? key}) : super(key: key);

  @override
  State<ConfirmationPage> createState() => _ConfirmationPageState();
}

class _ConfirmationPageState extends State<ConfirmationPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 200, width: 200, child: Lottie.asset('assets/lottie.json',repeat: false)),
            const Text(
              ' You have successfully Order',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Thank you',
              style: TextStyle(fontStyle: FontStyle.italic, fontSize: 20),
            ),
            IconButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Dashboard(),
                ),
              ),
              icon: const Icon(Icons.home),
            ),
          ],
        )),
      ),
    );
  }
}
