import 'dart:convert';
import 'package:tubes/data/api_service.dart';
import 'package:tubes/utils/constants.dart';

// data dummy
// List<String> dummy_daya = ['2200', '5500'];
// List<String> dummy_golongan = ['R-1/TR', 'R-1/TR'];
// List<String> dummy_lokasi = ['Rumah Dayeuhkolot', 'Rumah Batununggal'];

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
    // cek nilai kosong, apabila nilai kosong maka ganti dengan tulisan 0
    json['id'] = json['id'] != null ? json['id'].toString() : '0';

    // isi data daya
    json['macaddress'] = ['2200', '5500'];

    // list data golongan
    json['name'] = ['R-1/TR', 'R-1/TR'];

    // list data lokasi
    json['records']['timestamp'] = ['Rumah Dayeuhkolot', 'Rumah Batununggal'];

    // ambil data latest reading sebagai watt
    // apabila kosong, buat dictionary baru didalam record
    List temp = json['records'];
    json['records'] = json['records'].length != 0
        ? json['records']
        : json['records'].insert(0, {'reading': '0'});

    json['records'] = temp.last['reading'].toString();

    return Meteran(
        watt: json['records'],
        daya: json['macaddress'],
        golongan: json['name'],
        lokasi: json['records']['timestamp']);
  }
}
