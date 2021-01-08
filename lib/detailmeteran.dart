import 'package:flutter/material.dart';

class DetailMeteran extends StatefulWidget {
  @override
  _DetailMeteranState createState() => _DetailMeteranState();
}

class _DetailMeteranState extends State<DetailMeteran> {
  @override
  Widget build(BuildContext context) {
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
        children: <Widget> [
          Container(
            padding: EdgeInsets.fromLTRB(10,10,10,0),
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
                                    "752",
                                    style: TextStyle(
                                      fontSize: 40.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                      "kWH",
                                      style:TextStyle(
                                        color:  Colors.white,
                                      )
                                  ),
                                ]),
                                Positioned(
                                  bottom: -60,
                                  right: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      color: Colors.indigo[100],
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                                    child: Row(children: [
                                      Icon(Icons.local_mall),
                                      Text(" Toko"),
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
                                      "1000Va",
                                      style:TextStyle(
                                        color:  Colors.white,
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
                                      "R1/TA",
                                      style:TextStyle(
                                        color:  Colors.white,
                                        fontWeight: FontWeight.bold,
                                      )
                                  ),
                                ])),
                          ]),
                    ])
            ),
          ),

          Container(
            padding: EdgeInsets.fromLTRB(10,10,10,0),
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
                                    "950",
                                    style: TextStyle(
                                      fontSize: 40.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                      "kWH",
                                      style:TextStyle(
                                        color:  Colors.white,
                                      )
                                  ),
                                ]),
                                Positioned(
                                  bottom: -60,
                                  right: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      color: Colors.indigo[100],
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    padding: EdgeInsets.fromLTRB(10, 10, 20, 10),
                                    child: Row(children: [
                                      Icon(Icons.restaurant),
                                      Text(" Kantin"),
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
                                      "1000Va",
                                      style:TextStyle(
                                        color:  Colors.white,
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
                                      "R1/TA",
                                      style:TextStyle(
                                        color:  Colors.white,
                                        fontWeight: FontWeight.bold,
                                      )
                                  ),
                                ])),
                          ]),
                    ])
            ),
          ),
        ],
      ),
    );
  }
}
