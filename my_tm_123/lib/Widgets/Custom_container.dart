import 'package:flutter/material.dart';
class CustomContainer extends StatefulWidget {
  final name;
  const CustomContainer({
    super.key,
    this.name
  });

  @override
  State<CustomContainer> createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(margin: EdgeInsets.all(10),padding: EdgeInsets.all(10),
    height: 100,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.green,
                  ),
                  borderRadius: BorderRadius.circular(10),
                  // gradient: RadialGradient(colors: [
                  //   Colors.white,
                  //   Colors.green.shade100,
                  // ]),
                  ),
                  child: Center(child: Text(widget.name)),
                );
  }
}