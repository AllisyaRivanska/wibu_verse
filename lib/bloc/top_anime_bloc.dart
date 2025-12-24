import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wibu_verse/bloc/top_anime_state.dart';
import 'package:wibu_verse/repository/top_anime_repo.dart';

class TopAnimeBloc extends Cubit<TopAnimeState> {
  TopAnimeBloc() : super(TopAnimeInitial());

  void getTopAnime() async {
    emit(TopAnimeLoading());

    final response = await TopAnimeRepository().loadTopAnime();
    response.fold(
      (l) => emit(TopAnimeError(l)),
      (r) => emit(TopAnimeLoaded(r.data!)),
    );
  }
}