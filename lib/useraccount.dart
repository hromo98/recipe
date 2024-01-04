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
      body: Center(child: SizedBox(height: 100,width:100, child: Image.asset('assets/useraccount.png'))),
    );
  }
}
