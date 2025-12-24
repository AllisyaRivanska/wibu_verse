import 'package:wibu_verse/model/anime/trailer_model.dart';
import 'package:wibu_verse/model/common/common_meta.dart';
import 'package:wibu_verse/model/shared/image_model.dart';
import 'package:wibu_verse/model/shared/pagination_model.dart';

class TopAnimeModel {
  Pagination? pagination;
  List<Data>? data;

  TopAnimeModel({this.pagination, this.data});

  TopAnimeModel.fromJson(Map<String, dynamic> json) {
    pagination = json['pagination'] != null
        ? Pagination.fromJson(json['pagination'])
        : null;
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (pagination != null) {
      data['pagination'] = pagination!.toJson();
    }
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}


class Data {
  int? malId;
  String? url;
  Images? images;
  Trailer? trailer;
  bool? approved;
  List<Titles>? titles;
  String? title;
  String? titleEnglish;
  String? titleJapanese;
  List<String>? titleSynonyms;
  String? type;
  String? source;
  int? episodes;
  String? status;
  bool? airing;
  Aired? aired;
  String? duration;
  String? rating;
  double? score;
  int? scoredBy;
  int? rank;
  int? popularity;
  int? members;
  int? favorites;
  String? synopsis;
  String? background;
  String? season;
  int? year;
  Broadcast? broadcast;
  List<CommonMeta>? producers;
  List<CommonMeta>? licensors;
  List<CommonMeta>? studios;
  List<CommonMeta>? genres;
  List<CommonMeta>? explicitGenres;
  List<CommonMeta>? themes;
  List<CommonMeta>? demographics;

  Data(
      {this.malId,
      this.url,
      this.images,
      this.trailer,
      this.approved,
      this.titles,
      this.title,
      this.titleEnglish,
      this.titleJapanese,
      this.titleSynonyms,
      this.type,
      this.source,
      this.episodes,
      this.status,
      this.airing,
      this.aired,
      this.duration,
      this.rating,
      this.score,
      this.scoredBy,
      this.rank,
      this.popularity,
      this.members,
      this.favorites,
      this.synopsis,
      this.background,
      this.season,
      this.year,
      this.broadcast,
      this.producers,
      this.licensors,
      this.studios,
      this.genres,
      this.explicitGenres,
      this.themes,
      this.demographics});

  Data.fromJson(Map<String, dynamic> json) {
    malId = json['mal_id'];
    url = json['url'];
    images =
        json['images'] != null ? Images.fromJson(json['images']) : null;
    trailer =
        json['trailer'] != null ? Trailer.fromJson(json['trailer']) : null;
    approved = json['approved'];
    if (json['titles'] != null) {
      titles = <Titles>[];
      json['titles'].forEach((v) {
        titles!.add(Titles.fromJson(v));
      });
    }
    title = json['title'];
    titleEnglish = json['title_english'];
    titleJapanese = json['title_japanese'];
    titleSynonyms = json['title_synonyms'] != null 
    ? json['title_synonyms'].cast<String>()
    : [];
    type = json['type'];
    source = json['source'];
    episodes = json['episodes'];
    status = json['status'];
    airing = json['airing'];
    aired = json['aired'] != null ? Aired.fromJson(json['aired']) : null;
    duration = json['duration'];
    rating = json['rating'];
    score = json['score'] != null ? (json['score'] as num).toDouble() : null;
    scoredBy = json['scored_by'];
    rank = json['rank'];
    popularity = json['popularity'];
    members = json['members'];
    favorites = json['favorites'];
    synopsis = json['synopsis'];
    background = json['background'];
    season = json['season'];
    year = json['year'];
    broadcast = json['broadcast'] != null
        ? Broadcast.fromJson(json['broadcast'])
        : null;
    genres = _parseMeta(json['genres']);
    studios = _parseMeta(json['studios']);
    themes = _parseMeta(json['themes']);
    demographics = _parseMeta(json['demographics']);
    producers = _parseMeta(json['producers']);
    licensors = _parseMeta(json['licensors']);
    explicitGenres = _parseMeta(json['explicit_genres']);
  }

    List<CommonMeta>? _parseMeta(dynamic jsonArray){
      if (jsonArray != null) {
        return (jsonArray as List).map((v) => CommonMeta.fromJson(v)).toList();
      }
      return null;
    }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['mal_id'] = malId;
    data['url'] = url;
    if (images != null) {
      data['images'] = images!.toJson();
    }
    if (trailer != null) {
      data['trailer'] = trailer!.toJson();
    }
    data['approved'] = approved;
    if (titles != null) {
      data['titles'] = titles!.map((v) => v.toJson()).toList();
    }
    data['title'] = title;
    data['title_english'] = titleEnglish;
    data['title_japanese'] = titleJapanese;
    data['title_synonyms'] = titleSynonyms;
    data['type'] = type;
    data['source'] = source;
    data['episodes'] = episodes;
    data['status'] = status;
    data['airing'] = airing;
    if (aired != null) {
      data['aired'] = aired!.toJson();
    }
    data['duration'] = duration;
    data['rating'] = rating;
    data['score'] = score;
    data['scored_by'] = scoredBy;
    data['rank'] = rank;
    data['popularity'] = popularity;
    data['members'] = members;
    data['favorites'] = favorites;
    data['synopsis'] = synopsis;
    data['background'] = background;
    data['season'] = season;
    data['year'] = year;
    if (broadcast != null) {
      data['broadcast'] = broadcast!.toJson();
    }
    if (producers != null) data['producers'] = producers!.map((v) => v.toJson()).toList();
    if (licensors != null) data['licensors'] = licensors!.map((v) => v.toJson()).toList();
    if (studios != null) data['studios'] = studios!.map((v) => v.toJson()).toList();
    if (genres != null) data['genres'] = genres!.map((v) => v.toJson()).toList();
    if (explicitGenres != null) data['explicit_genres'] = explicitGenres!.map((v) => v.toJson()).toList();
    if (themes != null) data['themes'] = themes!.map((v) => v.toJson()).toList();
    if (demographics != null) data['demographics'] = demographics!.map((v) => v.toJson()).toList();
    return data;
  }
}

class Titles {
  String? type;
  String? title;

  Titles({this.type, this.title});

  Titles.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['type'] = type;
    data['title'] = title;
    return data;
  }
}

class Aired {
  String? from;
  String? to;
  Prop? prop;
  String? string;

  Aired({this.from, this.to, this.prop, this.string});

  Aired.fromJson(Map<String, dynamic> json) {
    from = json['from'];
    to = json['to'];
    prop = json['prop'] != null ? Prop.fromJson(json['prop']) : null;
    string = json['string'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['from'] = from;
    data['to'] = to;
    if (prop != null) {
      data['prop'] = prop!.toJson();
    }
    data['string'] = string;
    return data;
  }
}

class Prop {
  From? from;
  From? to;

  Prop({this.from, this.to});

  Prop.fromJson(Map<String, dynamic> json) {
    from = json['from'] != null ? From.fromJson(json['from']) : null;
    to = json['to'] != null ? From.fromJson(json['to']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (from != null) {
      data['from'] = from!.toJson();
    }
    if (to != null) {
      data['to'] = to!.toJson();
    }
    return data;
  }
}

class From {
  int? day;
  int? month;
  int? year;

  From({this.day, this.month, this.year});

  From.fromJson(Map<String, dynamic> json) {
    day = json['day'];
    month = json['month'];
    year = json['year'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['day'] = day;
    data['month'] = month;
    data['year'] = year;
    return data;
  }
}

class Broadcast {
  String? day;
  String? time;
  String? timezone;
  String? string;

  Broadcast({this.day, this.time, this.timezone, this.string});

  Broadcast.fromJson(Map<String, dynamic> json) {
    day = json['day'];
    time = json['time'];
    timezone = json['timezone'];
    string = json['string'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['day'] = day;
    data['time'] = time;
    data['timezone'] = timezone;
    data['string'] = string;
    return data;
  }
}
