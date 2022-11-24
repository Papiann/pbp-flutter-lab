import 'dart:convert';

List<WatchList> WatchListFromJson(String str) =>
    List<WatchList>.from(json.decode(str).map((x) => WatchList.fromJson(x)));

String WatchListToJson(List<WatchList> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class WatchList {
  WatchList(
      {required this.film_watched,
      required this.film_title,
      required this.film_rating,
      required this.release_date,
      required this.film_review});

  String film_watched;
  String film_title;
  String film_rating;
  String release_date;
  String film_review;

  factory WatchList.fromJson(Map<String, dynamic> json) => WatchList(
        film_watched: json["fields"]["film_watched"],
        film_title: json["fields"]["film_title"],
        film_rating: json["fields"]["film_rating"],
        release_date: json["fields"]["release_date"],
        film_review: json["fields"]["film_review"],
      );

  Map<String, dynamic> toJson() => {
        "film_watched": film_watched,
        "film_title": film_title,
        "film_rating": film_rating,
        "release_date": release_date,
        "film_review": film_review,
      };
}