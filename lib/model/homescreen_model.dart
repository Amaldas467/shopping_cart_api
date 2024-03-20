// To parse this JSON data, do
//
//     final sampleApiResModel = sampleApiResModelFromJson(jsonString);

import 'dart:convert';

List<SampleApiResModel> sampleApiResModelFromJson(String str) =>
    List<SampleApiResModel>.from(
        json.decode(str).map((x) => SampleApiResModel.fromJson(x)));

String sampleApiResModelToJson(List<SampleApiResModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class SampleApiResModel {
  int? id;
  String? title;
  double? price;
  String? description;
  String? category;
  String? image;
  Rating? rating;

  SampleApiResModel({
    this.id,
    this.title,
    this.price,
    this.description,
    this.category,
    this.image,
    this.rating,
  });

  factory SampleApiResModel.fromJson(Map<String, dynamic> json) =>
      SampleApiResModel(
        id: json["id"],
        title: json["title"],
        price: json["price"]?.toDouble(),
        description: json["description"],
        category: json["category"],
        image: json["image"],
        rating: json["rating"] == null ? null : Rating.fromJson(json["rating"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "price": price,
        "description": description,
        "category": category,
        "image": image,
        "rating": rating?.toJson(),
      };
}

class Rating {
  double? rate;
  int? count;

  Rating({
    this.rate,
    this.count,
  });

  factory Rating.fromJson(Map<String, dynamic> json) => Rating(
        rate: json["rate"]?.toDouble(),
        count: json["count"],
      );

  Map<String, dynamic> toJson() => {
        "rate": rate,
        "count": count,
      };
}
