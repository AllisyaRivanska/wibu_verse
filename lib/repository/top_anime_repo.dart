import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:wibu_verse/model/anime/top_anime_model.dart';

class TopAnimeRepository {
  final dio = Dio();
  
  Future<Either<String, TopAnimeModel>> loadTopAnime() async {
    try {
      final response = await dio.get('https://api.jikan.moe/v4/top/anime');

      if (response.statusCode == 200) {
        final topAnime = TopAnimeModel.fromJson(response.data);
        return Right(topAnime);
      }else {
        return Left('Terjadi Kesalahan: ${response.statusMessage}');
      }

      } catch (e) {
      throw Exception(e);
      }
  }
}
      // return right(TopAnimeModel.fromJson(response.data));
