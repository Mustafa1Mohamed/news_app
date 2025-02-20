import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);
  Future<List<ArticleModel>> getGeneralNews() async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=c20a812f81a04824847f7072ff916f89&category=general');
      Map<String, dynamic> jsonData = response.data;
      List<ArticleModel> articles = [];
      jsonData['articles'].forEach((element) {
        if (element['urlToImage'] != null && element['description'] != null) {
          ArticleModel articleModel = ArticleModel(
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
