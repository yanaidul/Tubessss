import 'package:flutter/material.dart';
import 'meteran.dart';
import 'MeteranContainer.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<Meteran> daftarmeteran = [
    Meteran(watt: '543', daya: '1000Va', golongan: 'R1/TA', lokasi: 'Toko'),
    Meteran(watt: '345', daya: '1000Va', golongan: 'R1/TA', lokasi: 'Kantin'),
    Meteran(watt: '322', daya: '1000Va', golongan: 'R1/TA', lokasi: 'Rumah'),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      appBar: AppBar(
        shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.circular(20)
        ),
        title: Text(
          'Device List',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.indigoAccent,
        elevation: 0.0,
      ),

      body: ListView(
        children: daftarmeteran.map((meteran) => MeteranContrainer(meteran: meteran)).toList(),
      ),
    );
  }
}



