import 'dart:convert';
import 'package:tubes/data/api_service.dart';
import 'package:tubes/utils/constants.dart';

// data dummy
List<String> dummy_daya = ['zonk', '2200', '5500'];
List<String> dummy_golongan = ['zonk', 'R-1/TR', 'R-1/TR'];
List<String> dummy_lokasi = ['zonk', 'Rumah Dayeuhkolot', 'Rumah Batununggal'];
var perulangan = 0;
var latest;

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
    json['id'] = json['id'] != null ? json['id'].toString() : '0';

    json['macaddress'] = json['macaddress'] != null ? json['macaddress'] : '0';

    json['name'] = json['name'] != null ? json['name'] : '0';

    List temp = json['records'];
    json['records'] = json['records'].length != 0
        ? json['records']
        : json['records'].insert(0, {'reading': '0'});

    latest = temp.last['reading'].toString();

    // perulangan
    perulangan += 1;

    return Meteran(
      watt: latest,
      daya: dummy_daya[perulangan],
      golongan: dummy_golongan[perulangan],
      lokasi: dummy_lokasi[perulangan],
    );
  }
}
