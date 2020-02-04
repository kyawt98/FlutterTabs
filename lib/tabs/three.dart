import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Third extends StatelessWidget{
  @override

    Widget build(BuildContext context) {
      return Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.airport_shuttle,
                size: 160.0,
                color: Colors.red,
              ),

              Text(
                  'Three Text')

            ],
          ),
        ),
      );
    }
  }

