import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:news_app/models/article.dart';
import 'package:news_app/models/news.dart';


//String apiKey = "eb9dee953a784f848a327036dee9153d";
//kendi api keyim...

class NewsService{
  static final NewsService _singleton= NewsService._internal();
  NewsService._internal();

  factory NewsService(){
    return _singleton;
  }
  static Future<List<Articles>?> getNews() async{
    String url=
    'https://newsapi.org/v2/top-headlines?country=tr&category=business&apiKey=eb9dee953a784f848a327036dee9153d';
    final response = await http.get(Uri.parse(url));

    if(response.body.isNotEmpty){
      final responseJson = json.decode(response.body);
      News news = News.fromJson(responseJson);
      return news.articles;
    }
    return null;
  }
}