import 'package:flutter/widgets.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_card.dart';

class CategeoryListView extends StatelessWidget {
  const CategeoryListView({Key? key}) : super(key: key);
  final List<CategoryModel> categories = const [
    CategoryModel(
      name: 'Business',
      image: 'assets/business.jpeg',
    ),
    CategoryModel(
      name: 'Entertainment',
      image: 'assets/entertaiment.jpeg',
    ),
    CategoryModel(
      name: 'General',
      image: 'assets/general.jpeg',
    ),
    CategoryModel(
      name: 'Health',
      image: 'assets/health.png',
    ),
    CategoryModel(
      name: 'Science',
      image: 'assets/science.png',
    ),
    CategoryModel(
      name: 'Sports',
      image: 'assets/sports.jpeg',
    ),
    CategoryModel(
      name: 'Technology',
      image: 'assets/technology.jpeg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryCard(
            categoryModel: categories[index],
          );
        },
      ),
    );
  }
}
