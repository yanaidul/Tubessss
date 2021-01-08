import 'package:flutter/material.dart';
import 'meteran.dart';

class MeteranContrainer extends StatelessWidget {

  final Meteran meteran;

  MeteranContrainer({this.meteran});

  @override
  Widget build(BuildContext context) {
    return Container(
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
                              meteran.watt,
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
                            right: 0,
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                color: Colors.indigo[100],
                                borderRadius: BorderRadius.circular(12),
                              ),
                              padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                              child: Row(children: [
                                Text(meteran.lokasi),
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
                                meteran.daya,
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
                                meteran.golongan,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                )
                            ),
                          ])),
                    ]),
              ])
      ),
    );
  }
}