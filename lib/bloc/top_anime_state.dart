import 'package:equatable/equatable.dart';
import 'package:wibu_verse/model/anime/top_anime_model.dart';

class TopAnimeState extends Equatable {
  @override
  List<Object?> get props => [];

}

class TopAnimeInitial extends TopAnimeState {}

class TopAnimeLoading extends TopAnimeState {}

class TopAnimeLoaded extends TopAnimeState {
final List<Data> topAnime;

TopAnimeLoaded(this.topAnime);

@override
List<Object?> get props => [topAnime];
}

class TopAnimeError extends TopAnimeState {
  final String message;

  TopAnimeError(this.message);

  @override
  List<Object?> get props => [message];
}