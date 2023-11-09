// To parse this JSON data, do
//
//     final articlesResponse = articlesResponseFromJson(jsonString);

import 'dart:convert';
import 'article.dart';


ArticlesResponse articlesResponseFromJson(String str) => ArticlesResponse.fromJson(json.decode(str));

String articlesResponseToJson(ArticlesResponse data) => json.encode(data.toJson());

class ArticlesResponse {
    String? status;
    int? totalResults;
    List<Article> articles;

    ArticlesResponse({
        required this.status,
        required this.totalResults,
        required this.articles,
    });

    factory ArticlesResponse.fromJson(Map<String, dynamic> json) => ArticlesResponse(
        status: json["status"],
        totalResults: json["totalResults"],
        articles: List<Article>.from(json["articles"].map((x) => Article.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "totalResults": totalResults,
        "articles": List<dynamic>.from(articles.map((x) => x.toJson())),
    };

    ArticlesResponse articlesResponseFromJson(String str) => ArticlesResponse.fromJson(json.decode(str));

    String articlesResponseToJson(ArticlesResponse data) => json.encode(data.toJson());
}
