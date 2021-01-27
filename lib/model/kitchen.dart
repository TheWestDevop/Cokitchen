import 'dart:convert';

class Kitchen {
  final String title;
  final String shortDescription;
  final List<String> imageBannerUrl;
  final String logoUrl;
  Kitchen({
    this.title,
    this.shortDescription,
    this.imageBannerUrl,
    this.logoUrl,
  });


  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'shortDescription': shortDescription,
      'imageBannerUrl': imageBannerUrl,
      'logoUrl': logoUrl,
    };
  }

  factory Kitchen.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
  
    return Kitchen(
      title: map['title'],
      shortDescription: map['shortDescription'],
      imageBannerUrl: map['imageBannerUrl'],
      logoUrl: map['logoUrl'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Kitchen.fromJson(String source) => Kitchen.fromMap(json.decode(source));
}
