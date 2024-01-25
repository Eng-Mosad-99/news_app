import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/views/category_view.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({Key? key, required this.categoryModel}) : super(key: key);
  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CategoryView(
              category: categoryModel.name,
            ),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.all(10),
        width: 250,
        height: 150,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(
            13,
          ),
          image: DecorationImage(
            image: AssetImage(
              categoryModel.image,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Text(
            categoryModel.name,
            style: const TextStyle(
              color: Colors.white60,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
