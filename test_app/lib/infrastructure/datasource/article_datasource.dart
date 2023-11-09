import 'package:dio/dio.dart';

import '../../domain/entity/articles_response.dart';


class ArticleInfraRepository { 

  Future<ArticlesResponse> getArticles() async {
    final dio = Dio();
    
    try {
      final dynamic response = await dio.get(
      'https://newsapi.org/v2/everything?q=keyword&apiKey=d1cd37ee2cbb429db8ef6eaef0166c76',

      options: Options(
        responseType: ResponseType.json,
        headers: {
          'X-Api-Key': 'd1cd37ee2cbb429db8ef6eaef0166c76'
        })
      );
    
      return response;
    } catch(e) {
      rethrow;
    }
  } 
}
