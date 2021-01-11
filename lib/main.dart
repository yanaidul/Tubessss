import 'package:flutter/material.dart';
import 'package:tubes/home.dart';
import 'package:tubes/detailmeteran.dart';

void main() => runApp(MaterialApp(initialRoute: '/', routes: {
      // '/': (context) => Home(),
      '/': (context) => Home(),
      '/detail': (context) => DetailMeteran(),
    }));
