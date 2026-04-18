import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_tm_123/category/add_category.dart';

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Category",
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            // crossAxisAlignment: .end,
            mainAxisAlignment: .end,
            children: [
              FloatingActionButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> AddCategory()));
              },
              child: Icon(
                // CupertinoIcons.plus,
                Icons.add,
              ),
              ),
            ],
          ),
        )
      ),
    );
  }
}