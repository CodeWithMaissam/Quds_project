import 'package:flutter/material.dart';
import 'package:my_tm_123/Widgets/Custom_card.dart';
class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text('Expenses'),
          centerTitle: true,
        ),
        body: Column(children: [
          CustomCard(Name: 'Hospital',),
        ],),
        
    );
  }
}