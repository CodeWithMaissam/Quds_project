import 'package:flutter/material.dart';

class AddCash extends StatefulWidget {
  const AddCash({super.key});

  @override
  State<AddCash> createState() => _AddCashState();
}

class _AddCashState extends State<AddCash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "AddCash",

        ),
      ),
      body: Column(
        children: [
          TextFormField(
            
          )
        ],
      ),
    );
  }
}