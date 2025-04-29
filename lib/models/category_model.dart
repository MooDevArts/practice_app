import 'package:flutter/material.dart';

class CategoryModel {
  String name = '';
  Widget icon = Icon(Icons.abc);
  Color color = Colors.black;

  CategoryModel({required this.name, required this.icon, required this.color});

  static List<CategoryModel> getCategories() {
    List<CategoryModel> categories = [];

    categories.add(
      CategoryModel(
        name: "Hima",
        icon: Icon(Icons.accessibility_new_outlined),
        color: Colors.red,
      ),
    );

    categories.add(
      CategoryModel(
        name: "Niama",
        icon: Icon(Icons.access_time_rounded),
        color: Colors.pink.shade100,
      ),
    );

    categories.add(
      CategoryModel(
        name: "Please",
        icon: Icon(Icons.wrap_text_rounded),
        color: Colors.orange,
      ),
    );

    return categories;
  }
}
