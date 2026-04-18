import 'dart:nativewrappers/_internal/vm/lib/ffi_native_type_patch.dart';

import 'package:flutter/material.dart';
class CustomContainer extends StatefulWidget {
  final String Name;
  final dynamic Amount;
  const CustomContainer({
    super.key,
    required this.Amount,
    required this.Name,
    });

  @override
  State<CustomContainer> createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          border: Border.all(width: 2,),
        ),
        child: TextFormField(
          // style: TextStyle(),
          decoration: InputDecoration(
            hintText: 'Name',
            labelText: 'Name',
          )
        ),
      
    ),
    );
  }
}