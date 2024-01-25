import 'package:flutter/material.dart';
import 'package:news_app/models/news_model.dart';
import 'package:news_app/widgets/news_tile.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({Key? key, required this.newsModel}) : super(key: key);
  final List<NewsModel> newsModel;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: newsModel.length,
        (context, index) {
          return NewsTile(
            articleModel: newsModel[index],
          );
        },
      ),
    );
  }
}
