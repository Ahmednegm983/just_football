import 'package:dio/dio.dart';
import 'package:just_news/containers/getnews_Server/article_model.dart';

class Getnews
{
  final Dio dio;

  Getnews(this.dio);
  Future<List<ArticleModel>>getnews({required String categories}) async
  {
    try{
    Response response = await
    dio.get('https://newsapi.org/v2/everything?apiKey=4e58c9f0f6094d8aaaf79999c02279c6&q=$categories');

    Map<String,dynamic> jsonData = response.data;

    List<dynamic> articles=jsonData['articles'];

    List<ArticleModel> articlelistt=[];
    for (var article in articles)
      {
        ArticleModel articleModell=
            ArticleModel(image: article['urlToImage'], title: article['title'],news: article['content'],url: article['url']);
        articlelistt.add(articleModell);
        print(articlelistt);
      };
    return articlelistt;
  }catch(e)
    {
      return [];
    };
  }

}