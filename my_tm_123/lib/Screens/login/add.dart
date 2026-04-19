import 'package:flutter/material.dart';

class Add extends StatefulWidget {
  const Add({super.key});

  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {

    double _currentBalance = 0.00; 

  void _update(double amount) {
    setState(() {
      _currentBalance -= amount;
    });
  }


  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}