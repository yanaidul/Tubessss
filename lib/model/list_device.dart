import 'dart:convert';
import 'package:tubes/data/api_service.dart';
import 'package:tubes/utils/constants.dart';

class Meteran {
  String watt;
  String daya;
  String golongan;
  String lokasi;

  Meteran({this.watt, this.daya, this.golongan, this.lokasi});

  static Resource<List<Meteran>> get all {
    return Resource(
        url: Constants.HEADLINE_NEWS_URL,
        parse: (response) {
          final result = json.decode(response.body);
          Iterable list = result;
          return list.map((model) => Meteran.fromJson(model)).toList();
        });
  }

  factory Meteran.fromJson(Map<String, dynamic> json) {
    print(json);
    return Meteran(
        watt: json['name'],
        daya: json['name'],
        golongan: json['name'],
        lokasi: json['name']);
  }
}
