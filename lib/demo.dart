import 'package:subcategory/sub_categories.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DemoApp());
}

class DemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DemoHomePage(),
    );
  }
}

class DemoHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SubCategoriesPage()),
            );
          },
          child: Text('Go to Categories Page'),
        ),
      ),
    );
  }
}

// Your CategoriesPage widget goes here...