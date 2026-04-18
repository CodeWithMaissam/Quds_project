import 'package:flutter/material.dart';
class CustomItemButton extends StatefulWidget {
  final buttonName;
  final pagerouteName;
  const CustomItemButton({super.key,
  this.buttonName,
  this.pagerouteName});

  @override
  State<CustomItemButton> createState() => _CustomItemButtonState();
}

class _CustomItemButtonState extends State<CustomItemButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){
      context;
      Navigator.pop(context);
    }, child: Text(''));
    
  }
}