import 'dart:convert';
import 'package:news_app/main.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:news_app/models/article.dart';
import 'package:news_app/models/autogenerated.dart';

class TecService{
  static final TecService _singleton= TecService._internal();
  TecService._internal();

  factory TecService(){
    return _singleton;
  }
  static Future<List<Articles>?> getAutogenerated() async{
    String url=
        'https://newsapi.org/v2/top-headlines?country=tr&category=technology&apiKey=eb9dee953a784f848a327036dee9153d';
    final response = await http.get(Uri.parse(url));

    if(response.body.isNotEmpty){
      final responseJson = json.decode(response.body);
      Autogenerated autogenerated = Autogenerated.fromJson(responseJson);
      return autogenerated.articles;
    }
    return null;
  }
}
