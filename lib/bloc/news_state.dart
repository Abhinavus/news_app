import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

class NewsState extends Equatable{
  const NewsState();
  @override 
  List<Object> get props => [];

}
class NewInitState extends NewsState {}

class NewsLoadingState extends NewsState{}

class NewsLoadedState extends NewsState{
  final List<ArticleModel> articleList;
   NewsLoadedState({required this.articleList});
}

class NewsErrorState extends NewsState {
  final String errorMessage;
NewsErrorState({required this.errorMessage});
}