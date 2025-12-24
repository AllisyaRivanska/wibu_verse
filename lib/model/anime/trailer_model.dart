class Trailer {
  dynamic youtubeId;
  dynamic url;
  String? embedUrl;
  TrailerImages? images;

  Trailer({this.youtubeId, this.url, this.embedUrl, this.images});

  Trailer.fromJson(Map<String, dynamic> json) {
    youtubeId = json['youtube_id'];
    url = json['url'];
    embedUrl = json['embed_url'];
    images =
        json['images'] != null ? TrailerImages.fromJson(json['images']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['youtube_id'] = youtubeId;
    data['url'] = url;
    data['embed_url'] = embedUrl;
    if (images != null) {
      data['images'] = images!.toJson();
    }
    return data;
  }
}

class TrailerImages {
  dynamic imageUrl;
  dynamic smallImageUrl;
  dynamic mediumImageUrl;
  dynamic largeImageUrl;
  dynamic maximumImageUrl;

  TrailerImages(
      {this.imageUrl,
      this.smallImageUrl,
      this.mediumImageUrl,
      this.largeImageUrl,
      this.maximumImageUrl});

  TrailerImages.fromJson(Map<String, dynamic> json) {
    imageUrl = json['image_url'];
    smallImageUrl = json['small_image_url'];
    mediumImageUrl = json['medium_image_url'];
    largeImageUrl = json['large_image_url'];
    maximumImageUrl = json['maximum_image_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['image_url'] = imageUrl;
    data['small_image_url'] = smallImageUrl;
    data['medium_image_url'] = mediumImageUrl;
    data['large_image_url'] = largeImageUrl;
    data['maximum_image_url'] = maximumImageUrl;
    return data;
  }
}
