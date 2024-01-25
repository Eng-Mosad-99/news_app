import 'package:dio/dio.dart';
import 'package:news_app/models/news_model.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

  Future<List<NewsModel>> getNews({required String category}) async {
    try {
      Response response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=593ed4ed895f48c3b19ee41019a0435b&category=$category',
      );

      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData["articles"];
      List<NewsModel> articleList = [];
      for (var article in articles) {
        NewsModel newsModel = NewsModel.fromJson(article);
        articleList.add(newsModel);
      }
      return articleList;
    } catch (e) {
      return [];
    }
  }
}
