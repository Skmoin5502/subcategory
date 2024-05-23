import 'package:flutter/material.dart';
import 'package:subcategory/demo.dart';
import 'sub_categories.dart'; // Assuming your homepage is defined in a file named 'homepage.dart'

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SubCategoriesPage(),
    );
  }
}