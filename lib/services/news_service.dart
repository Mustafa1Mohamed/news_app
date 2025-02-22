import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);
  final String baseUrl = 'https://newsapi.org/v2/top-headlines';
  final String apiKey = 'c20a812f81a04824847f7072ff916f89';
  Future<List<ArticleModel>> getNews({required String category}) async {
    try {
      Response response =
          await dio.get('$baseUrl?country=us&apiKey=$apiKey&category=$category');
      Map<String, dynamic> jsonData = response.data;
      List<ArticleModel> articles = [];
      jsonData['articles'].forEach((element) {
        if (element['urlToImage'] != null && element['description'] != null) {
          ArticleModel articleModel = ArticleModel(
            url: element['url'],
            title: element['title'],
            description: element['description'],
            imageUrl: element['urlToImage'],
          );
          articles.add(articleModel);
        }
      });
      return articles;
    } catch (e) {
      return [];
    }
  }
}
