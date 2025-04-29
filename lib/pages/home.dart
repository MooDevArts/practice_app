import 'package:flutter/material.dart';
import 'package:practice_app/models/category_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CategoryModel> categories = [];

  void getCategories() {
    categories = CategoryModel.getCategories();
  }

  @override
  Widget build(BuildContext context) {
    getCategories();
    return Scaffold(
      appBar: myAppBar(),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(25),
            child: TextField(
              decoration: InputDecoration(
                hintText: "What u wanna eat ?",
                contentPadding: EdgeInsets.all(8),
                prefixIcon: Icon(Icons.search),
                suffixIcon: Icon(Icons.menu_book),
                filled: true,
                fillColor: Colors.yellow.shade200,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide(color: Colors.red),
                ),
              ),
            ),
          ),
          Text(
            "Categories",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              color: Colors.black,
              fontSize: 18,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 25, 0, 25),
            child: SizedBox(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 5, left: 5),
                    child: Container(
                      decoration: BoxDecoration(
                        color: categories[index].color,
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      width: 200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          categories[index].icon,
                          Text(categories[index].name),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  AppBar myAppBar() {
    return AppBar(
      leading: GestureDetector(
        onTap: () {},
        child: Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.grey.shade800,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(Icons.arrow_left_outlined, color: Colors.white),
        ),
      ),
      title: Text(
        "Breakfast",
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
      centerTitle: true,
      backgroundColor: Colors.grey[300],
      actions: [
        GestureDetector(
          onTap: () {},
          child: Container(
            margin: EdgeInsets.all(10),
            width: 35,
            height: 35,
            decoration: BoxDecoration(
              color: Colors.grey.shade800,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(Icons.menu, color: Colors.white, size: 16),
          ),
        ),
      ],
    );
  }
}
