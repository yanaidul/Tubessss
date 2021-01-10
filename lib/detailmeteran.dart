import 'package:flutter/material.dart';
import 'meteran.dart';
import 'MeteranContainer.dart';
import 'package:intl/intl.dart';


class DetailMeteran extends StatefulWidget {
  @override
  _DetailMeteranState createState() => _DetailMeteranState();
}

class _DetailMeteranState extends State<DetailMeteran> {
  DateTime _dateTime;
  String dateNow;
  Map data = {};
  var tcVisibility = false;

  Future<String> createAlertDialog (BuildContext context){

    TextEditingController customController = TextEditingController();

    return showDialog(context: context,builder: (context) {
      Widget cancelButton = FlatButton(
        child: Text("Cancel"),
        onPressed:  () {
          Navigator.of(context).pop();
        },
      );
      Widget saveButton = FlatButton(
        child: Text("Save"),
        onPressed:  () {
          Navigator.of(context).pop();
        },
      );
      return AlertDialog(
         title: Text('Configure Device'),
        content: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            //posisi
            mainAxisSize: MainAxisSize.min,
            // wrap content
        children : <Widget> [
            Text("Nama"),
              TextField(
                controller: customController,
              ),
          SizedBox(height: 20),
          Text("Daya"),
          DropdownButtonFormField(items: null, onChanged: null),
          SizedBox(height: 20),
          Text("Golongan"),
          DropdownButtonFormField(items: null, onChanged: null),
        ]
        ),
        actions: [
            cancelButton,
            saveButton,
        ],
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context).settings.arguments;
    print(data);
    return Scaffold(
      backgroundColor: Colors.blue[900],
      appBar: AppBar(
        shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.circular(20)
        ),
        title: Text(
          'Device Detail',
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
          children: <Widget>[  Container(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
          height: 220,
          width: double.maxFinite,

          child: Card(
              elevation: 5,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: Colors.indigoAccent,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            padding: EdgeInsets.fromLTRB(10, 40, 10, 40),
                            child: Stack(children: [
                              Row(children: [
                                Text(
                                  data['watt'],
                                  style: TextStyle(
                                    fontSize: 40.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                    "kWH",
                                    style: TextStyle(
                                      color: Colors.white,
                                    )
                                ),
                              ]),
                              Positioned(
                                bottom: -60,
                                right: 13,
                                child: Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    color: Colors.indigo[100],
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                                  child: Row(children: [
                                    Text(data['lokasi']),
                                  ],),
                                ),
                              ),
                            ],
                              overflow: Overflow.visible,
                            ),
                          ),
                          Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                color: Colors.indigoAccent,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              padding: EdgeInsets.fromLTRB(10, 50, 10, 50),
                              child: Column(children: [
                                Text(
                                  "Daya",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(height: 5.0),
                                Text(
                                    data['daya'],
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    )
                                ),
                              ])),
                          Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                color: Colors.indigoAccent,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              padding: EdgeInsets.fromLTRB(10, 50, 10, 50),
                              child: Column(children: [
                                Text(
                                  "Golongan",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(height: 5.0),
                                Text(
                                    data['golongan'],
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    )
                                ),
                              ])),
                        ]),
                  ])
          ),
        ),
        Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(20, 20, 60, 20),
              child: Text(
                  'Laporan Detail',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            InkWell(
              onTap:(){},
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                child: Text('Latest',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )
                ),
              ),
            ),
            SizedBox(width: 10),
            InkWell(
              onTap:(){
                createAlertDialog(context).then((namaBaru){
                  print(namaBaru);
                });
    },
            child: Container(
                decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              padding: EdgeInsets.fromLTRB(10, 15, 10, 15),
              child: Icon(Icons.build),
            ),
            ),
            SizedBox(width: 10),
            InkWell(
              onTap: (){
                print(_dateTime);
                showDatePicker(
                    context: context,
                    initialDate: _dateTime == null ? DateTime.now() : _dateTime,
                    firstDate: DateTime(2020),
                    lastDate: DateTime(2025)).then((date){
                      setState(() {
                        _dateTime = date;
                        DateTime now = _dateTime;
                        String formattedDate = DateFormat('yyyy-MM-ddTHH:mm:ss').format(now);
                        dateNow = formattedDate;
                        tcVisibility = true;
                      });
                });
              },

            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              padding: EdgeInsets.fromLTRB(10, 15, 10, 15),
              child: Icon(Icons.calendar_today),
            ),
            )
          ],
        ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
                  child:
                  Text(_dateTime == null ? 'Pick a date' : ('$dateNow'),
                      style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget> [
                Visibility(
                  visible: tcVisibility,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
                  child: Row (children: [
                  Column (
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text('Pemakaian Hari Ini'),
                    Text(
                      data['watt'] + ' kWH',
                      style: TextStyle(
                        fontSize: 40.0,
                        color: Colors.indigoAccent,
                        fontWeight: FontWeight.bold,
                      ),)
                  ],),
                    SizedBox(width: 140),
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 10, 5, 10),
                    child: Icon(
                        Icons.bolt,
                        size : 50,
                    ) ,
                    )
                    ],)
                ),
                ),
              ],
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget> [
                Visibility(
                  visible: tcVisibility,
                  child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
                      child: Row (children: [
                        Column (
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Perbedaan Pemakaian'),
                            Text(
                              '0' + ' kWH',
                              style: TextStyle(
                                fontSize: 40.0,
                                color: Colors.greenAccent,
                                fontWeight: FontWeight.bold,
                              ),)
                          ],),
                        SizedBox(width: 140),
                        Container(
                          padding: EdgeInsets.fromLTRB(25, 10, 5, 10),
                          child: Icon(
                            Icons.offline_bolt_outlined,
                            size : 50,
                          ) ,
                        )
                      ],)
                  ),
                ),
              ],
            )
      ]
    ),
    );
  }
}
