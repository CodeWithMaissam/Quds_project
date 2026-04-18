import 'package:flutter/material.dart';
import 'package:my_tm_123/category/category.dart';

class AddCategory extends StatefulWidget {
  const AddCategory({super.key});

  @override
  State<AddCategory> createState() => _AddCategoryState();
}

class _AddCategoryState extends State<AddCategory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[200],
      appBar: AppBar(
        title: Text(
          "Add a New Category",
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          
          Container(
          
                margin: EdgeInsets.all( 10),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30)
          
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    
                    border: InputBorder.none,
                    hintText: "Category Name"
                  ),
                ),
              ),
            
              Container(
            
            margin: EdgeInsets.symmetric(horizontal: 10),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30)
            
            ),
            child: TextFormField(
              decoration: InputDecoration(
                
                border: InputBorder.none,
                hintText: "Total Price"
              ),
            ),
          ),
          SizedBox(height: 20),

          ElevatedButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Category()));
            
          }, child: Text(
            "Add Category",
          ),
          ),
        ],
      ),
    );
  }
}