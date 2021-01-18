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
        url: Constants.BASE_URL,
        parse: (response) {
          final result = json.decode(response.body);
          Iterable list = result;
          return list.map((model) => Meteran.fromJson(model)).toList();
        });
  }

  factory Meteran.fromJson(Map<String, dynamic> json) {
    // cek nilai kosong, apabila nilai kosong maka ganti dengan tulisan "KOSONG"
    json['id'] = json['id'] != null ? json['id'].toString() : 'KOSONG';

    json['macaddress'] =
        json['macaddress'] != null ? json['macaddress'] : 'KOSONG';

    json['name'] = json['name'] != null ? json['name'] : 'KOSONG';

    return Meteran(
        watt: json['id'],
        daya: json['macaddress'],
        golongan: json['name'],
        lokasi: json['id']);
  }
}
