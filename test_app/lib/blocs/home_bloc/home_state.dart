part of 'home_bloc.dart';

class HomeState extends Equatable {

  final ArticlesResponse? listInfo; 
  final bool isLoaded;

  const HomeState({
    this.listInfo,
    this.isLoaded = false,
  });
  

  HomeState copyWith(
    ArticlesResponse listInfo,
    bool? isLoaded
    ) => HomeState(
      listInfo: listInfo ?? this.listInfo,
      isLoaded: isLoaded ?? this.isLoaded,
    );
  

  @override
  List<Object> get props => [ ];
}
