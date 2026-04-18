import 'package:flutter/material.dart';
class CustomCard extends StatefulWidget {
  final String Name;
  const CustomCard({
  super.key,
  required this.Name
  });

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text('Name'),
      ),
    );
  }
}