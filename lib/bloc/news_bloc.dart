import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/bloc/news_event.dart';
import 'package:news_app/models/article_model.dart';

import 'package:news_app/repositories/news.dart';

import 'news_state.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  News newsRepository;
  NewsBloc(
      {
      required this.newsRepository,
      })
      : super(NewsLoadingState()){
        on<NewsEvent>(((event, emit) async{

          emit(NewsLoadingState());
          List<ArticleModel> articleList = [];
        
        articleList = await newsRepository.fetchNews();
          return emit(NewsLoadedState(articleList: articleList));
          
        }));
      }
}



















//   @override
//   Stream<NewsState> mapEventToState(NewsEvent event) async* {
//     if (event is StartEvent) {
//       try {
//         List<ArticleModel> _articleList = [];
//         yield NewsLoadingState(); 
//         _articleList = await newsRepository.fetchNews();
//         yield NewsLoadedState(articleList: _articleList);
//       } catch (e) {
//         yield NewsErrorState(errorMessage: (e).toString() );
//       }
//     }
//   }
// }
