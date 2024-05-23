import 'package:flutter/material.dart';
import 'demo.dart';

class SubCategoriesPage extends StatefulWidget {
  final double imageWidth;
  final double imageHeight;

  SubCategoriesPage({this.imageWidth = 90.0, this.imageHeight = 90.0});

  @override
  _SubCategoriesPageState createState() => _SubCategoriesPageState();
}

class _SubCategoriesPageState extends State<SubCategoriesPage> {
  // Sample data
  List<String> subCategoriesImages = [
    'assets/categories/electronics.png',
    'assets/categories/cleaners.png',
    'assets/categories/lays.png',
    'assets/categories/vegetables.png',
    'assets/categories/fruits.png',
    'assets/categories/drinks.png',
    'assets/categories/books.png',
    'assets/categories/clothes.png',
    'assets/categories/shoes.png',
    'assets/categories/furniture.png',
    'assets/categories/toys.png',
  ];
  List<String> subCategoriesNames = [
    'Electronics',
    'Cleaners & Repellents',
    'Chips & Namkeen',
    'Vegetables',
    'Fruits',
    'Drinks',
  ];
  Map<String, List<Map<String, String>>> products = {
    'Electronics': [
      {'name': 'Smart Watch', 'image': 'assets/subcategories/Electronics/smartwatch.png', 'price': '199.99', 'quantity': '10'},
      {'name': 'Earpods', 'image': 'assets/subcategories/Electronics/earpods.png', 'price': '149.99', 'quantity': '20'},
      {'name': 'Speaker', 'image': 'assets/subcategories/Electronics/speakers.png', 'price': '99.99', 'quantity': '15'},
      {'name': 'Mobiles', 'image': 'assets/subcategories/Electronics/mobiles.png', 'price': '299.99', 'quantity': '5'},
      {'name': 'Home Appliances', 'image': 'assets/subcategories/Electronics/iron.png', 'price': '49.99', 'quantity': '30'},
      {'name': 'Trimmer', 'image': 'assets/subcategories/Electronics/trimmer.png', 'price': '29.99', 'quantity': '25'},
    ],
    'Cleaners & Repellents': [
      {'name': 'Detergent', 'image': 'assets/subcategories/Cleaners/detergent.png', 'price': '19.99', 'quantity': '50'},
      {'name': 'Toilet Cleaner', 'image': 'assets/subcategories/Cleaners/toilet_cleaner.png', 'price': '9.99', 'quantity': '40'},
      {'name': 'Floor Cleaner', 'image': 'assets/subcategories/Cleaners/floor_cleaner.png', 'price': '15.99', 'quantity': '35'},
      {'name': 'Garbage Bags', 'image': 'assets/subcategories/Cleaners/garbage_bags.png', 'price': '5.99', 'quantity': '60'},
      {'name': 'Shoe Cleaner', 'image': 'assets/subcategories/Cleaners/shoe_cleaner.png', 'price': '12.99', 'quantity': '45'},
      {'name': 'Cleaning Tools', 'image': 'assets/subcategories/Cleaners/cleaning_tools.png', 'price': '25.99', 'quantity': '20'},
    ],
    'Chips & Namkeen': [
      {'name': 'Chips', 'image': 'assets/subcategories/Chips/chips.png', 'price': '2.99', 'quantity': '100'},
      {'name': 'Bhujia', 'image': 'assets/subcategories/Chips/bhujia.png', 'price': '3.99', 'quantity': '90'},
      {'name': 'Nachos', 'image': 'assets/subcategories/Chips/nachos.png', 'price': '4.99', 'quantity': '80'},
      {'name': 'Popcorn', 'image': 'assets/subcategories/Chips/popcorn.png', 'price': '1.99', 'quantity': '110'},
      {'name': 'Papad', 'image': 'assets/subcategories/Chips/papad.png', 'price': '2.49', 'quantity': '95'},
      {'name': 'Healthy Snacks', 'image': 'assets/subcategories/Chips/healthy_snacks.png', 'price': '5.99', 'quantity': '70'},
    ],
    'Vegetables': [
      {'name': 'Tomato', 'image': 'assets/subcategories/Vegetables/tomato.png', 'price': '0.99', 'quantity': '200'},
      {'name': 'Carrot', 'image': 'assets/subcategories/Vegetables/carrot.png', 'price': '1.29', 'quantity': '180'},
      {'name': 'Onion', 'image': 'assets/subcategories/Vegetables/onion.png', 'price': '0.79', 'quantity': '220'},
      {'name': 'Cucumber', 'image': 'assets/subcategories/Vegetables/cucumber.png', 'price': '0.99', 'quantity': '210'},
      {'name': 'Capsicum', 'image': 'assets/subcategories/Vegetables/capsicum.png', 'price': '1.49', 'quantity': '170'},
      {'name': 'Potato', 'image': 'assets/subcategories/Vegetables/potato.png', 'price': '0.59', 'quantity': '250'},
    ],
    'Fruits': [
      {'name': 'Apple', 'image': 'assets/subcategories/Fruits/apple.png', 'price': '1.99', 'quantity': '150'},
      {'name': 'Banana', 'image': 'assets/subcategories/Fruits/banana.png', 'price': '0.49', 'quantity': '300'},
      {'name': 'Orange', 'image': 'assets/subcategories/Fruits/orange.png', 'price': '1.29', 'quantity': '160'},
      {'name': 'Grapes', 'image': 'assets/subcategories/Fruits/grapes.png', 'price': '2.99', 'quantity': '140'},
      {'name': 'Mango', 'image': 'assets/subcategories/Fruits/mango.png', 'price': '1.99', 'quantity': '130'},
      {'name': 'Pineapple', 'image': 'assets/subcategories/Fruits/pineapple.png', 'price': '2.49', 'quantity': '120'},
    ],
    'Drinks': [
      {'name': 'Water', 'image': 'assets/subcategories/Drinks/water.png', 'price': '0.99', 'quantity': '500'},
      {'name': 'Juice', 'image': 'assets/subcategories/Drinks/juice.png', 'price': '2.99', 'quantity': '150'},
      {'name': 'Soda', 'image': 'assets/subcategories/Drinks/soda.png', 'price': '1.99', 'quantity': '200'},
      {'name': 'Tea', 'image': 'assets/subcategories/Drinks/tea.png', 'price': '3.49', 'quantity': '100'},
      {'name': 'Coffee', 'image': 'assets/subcategories/Drinks/coffee.png', 'price': '4.99', 'quantity': '90'},
      {'name': 'Energy Drinks', 'image': 'assets/subcategories/Drinks/energy_drinks.png', 'price': '2.99', 'quantity': '180'},
    ],
  };

  String selectedsubCategory = 'Electronics';

  @override
  Widget build(BuildContext context) {
    // Check if the selected subcategory exists in the map, default to the first category if not
    if (!products.containsKey(selectedsubCategory)) {
      selectedsubCategory = subCategoriesNames.first;
    }

    return Scaffold(
      body: Row(
        children: [
          Container(
            width: 100, // Set width for the navbar
            color: Colors.amberAccent, // Set background color of navbar
            child: ListView.builder(
              itemCount: subCategoriesNames.length + 1, // Add 1 for the "Categories" text
              itemBuilder: (context, index) {
                // Check if it's the first item to display "Categories" text
                if (index == 0) {
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    child: Text(
                      "Categories",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  );
                }
                // Otherwise, display the categories
                index -= 1; // Subtract 1 to account for the added "Categories" text
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedsubCategory = subCategoriesNames[index];
                    });
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15), // Circular border radius
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      alignment: Alignment.center,
                      color: selectedsubCategory == subCategoriesNames[index]
                          ? Colors.white // Set background color for selected category
                          : Colors.amberAccent, // Set background color for unselected categories
                      child: Column(
                        children: [
                          Image.asset(
                            subCategoriesImages[index],
                            width: widget.imageWidth, // Adjust width using widget parameter
                            height: widget.imageHeight, // Adjust height using widget parameter
                          ),
                          Text(
                            subCategoriesNames[index],
                            style: TextStyle(
                              color: selectedsubCategory == subCategoriesNames[index]
                                  ? Colors.black // Set text color for selected category
                                  : Colors.black, // Set text color for unselected categories
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.white, // Set background color of content area
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    child: Text(
                      selectedsubCategory,
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.grey[200], // Set background color of subcategories section
                      child: GridView.builder(
                        padding: EdgeInsets.all(16.0),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2, // Number of items per row
                          mainAxisSpacing: 16.0, // Spacing between rows
                          crossAxisSpacing: 16.0, // Spacing between columns
                          childAspectRatio: 0.6, // Aspect ratio of the grid items
                        ),
                        itemCount: products[selectedsubCategory]?.length ?? 0,
                        itemBuilder: (context, index) {
                          // Wrap each subcategory in a different section
                          var product = products[selectedsubCategory]?[index];
                          if (product == null) return Container();

                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => DemoHomePage()),
                              );
                            },
                            child: Card(
                              elevation: 2.0, // Add elevation for a shadow effect
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: Image.asset(
                                        product['image']!,
                                        width: widget.imageWidth, // Adjust width using widget parameter
                                        height: widget.imageHeight, // Adjust height using widget parameter
                                        fit: BoxFit.cover, // Cover the available space
                                      ),
                                    ),
                                    SizedBox(height: 8.0),
                                    Text(
                                      product['name']!,
                                      style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold), // Adjust font size and weight
                                      textAlign: TextAlign.center,
                                    ),
                                    SizedBox(height: 4.0),
                                    Text(
                                      'Price: \$${product['price']!}',
                                      style: TextStyle(fontSize: 14.0), // Adjust font size
                                      textAlign: TextAlign.center,
                                    ),
                                    SizedBox(height: 4.0),
                                    Text(
                                      'Quantity: ${product['quantity']!}',
                                      style: TextStyle(fontSize: 14.0), // Adjust font size
                                      textAlign: TextAlign.center,
                                    ),
                                    SizedBox(height: 8.0),
                                    ElevatedButton(
                                      onPressed: () {
                                        // Handle add to cart functionality
                                      },
                                      child: Text('Add'),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
