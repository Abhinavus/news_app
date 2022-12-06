import 'dart:convert';

import 'package:http/http.dart'as http;

import '../models/article_model.dart';

class News{
  Future<List<ArticleModel>> fetchNews() async{
    
      var response = await http.get(Uri.parse('https://newsapi.org/v2/top-headlines?sources=bbc-news&apiKey=14fff43c6da54ae1aa1c4c82785b8bcf'));
 var data = jsonDecode(response.body);
 List<ArticleModel> articlelist =[];
 if( response.statusCode == 200){
  for(var item in data["articles"]){
    ArticleModel articlemodel = ArticleModel.fromJson(item);
    articlelist.add(articlemodel);
  
  }
  return articlelist;
 } else{
  return articlelist ;
 }

  }
}