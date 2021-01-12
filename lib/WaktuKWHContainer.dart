import 'package:flutter/material.dart';
import 'package:tubes/waktukwh.dart';
import 'detailmeteran.dart';

class WaktuKWHContainer extends StatelessWidget {

  final Waktukwh waktukwh;

  WaktuKWHContainer ({this.waktukwh});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget> [
              Container(
              width: 300.0,
              height: 80.0,

              child: Card(
                elevation: 20,

          child: Stack (children: [
                Row(children: [
                  SizedBox(width: 25),
                  Column (
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text (waktukwh.waktu,
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),)
                    ],),
                ]),
                Positioned(
                  right: 0,
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.indigoAccent,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    width: 120.0,
                    height: 72.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(waktukwh.kwh,
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),),
                      ],),
                  ),
                ),
              ],
                overflow: Overflow.visible,
              )
          ),
          )

      ],
      );
  }
}
