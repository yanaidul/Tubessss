import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tubes/MeteranContainer.dart';
import 'package:tubes/model/news_article.dart';
import 'package:tubes/data/api_service.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // buat list kosong berisi data artikel
  // List<Meteran> _newsArticles = List<NewsArticle>();
  List<Meteran> _meteran = List<Meteran>();

  @override
  void initState() {
    // _populateNewsArticles();
    // _melakukan fetch pada data news
    _fetchData();
    super.initState();
  }

  // void _populateNewsArticles() {
  void _fetchData() {
    // Webservice().load(NewsArticle.all).then((newsArticles) => {
    Webservice().load(Meteran.all).then((meteran) => {
          // setState(() => {_newsArticles = newsArticles})
          setState(() => {_meteran = meteran})
        });
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //       backgroundColor: Colors.blue[900],
  //       appBar: AppBar(
  //         shape:
  //             BeveledRectangleBorder(borderRadius: BorderRadius.circular(20)),
  //         title: Text(
  //           'Device List',
  //           style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
  //         ),
  //         centerTitle: true,
  //         backgroundColor: Colors.indigoAccent,
  //         elevation: 0.0,
  //       ),
  //       body: ListView.builder(
  //         itemCount: _newsArticles.length,
  //         itemBuilder: _buildItemsForListView,
  //       ));
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[900],
        appBar: AppBar(
          shape:
              BeveledRectangleBorder(borderRadius: BorderRadius.circular(20)),
          title: Text(
            'Device List',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.indigoAccent,
          elevation: 0.0,
        ),
        body: ListView(
          children: _meteran
              .map((meteran) => MeteranContrainer(meteran: meteran))
              .toList(),
        ));
  }
}
