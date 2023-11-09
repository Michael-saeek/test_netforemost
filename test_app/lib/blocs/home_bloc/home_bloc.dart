import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:test_app/domain/entity/articles_response.dart';
import '../../infrastructure/datasource/article_datasource.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState()) {


    on<GetDataEvent>((event, emit) async {
    final articleInfraRepository = ArticleInfraRepository();
    final ArticlesResponse response = await articleInfraRepository.getArticles();

    final articles = ArticlesResponse.fromJson(response as Map<String, dynamic>);
    
      emit(state.copyWith(
        ArticlesResponse(status: articles.status, totalResults: articles.totalResults, articles: articles.articles),
        true,
      ));
    });
  }
}
