import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppBarCustom extends StatelessWidget {
  String title; 
  AppBarCustom(this.title);
  @override
  Widget build(BuildContext context) {
    return   Container(
                    // color: Colors.white12,
                    padding: EdgeInsets.all(5),
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height / 20,
                        left: MediaQuery.of(context).size.width / 500),
                    child:Row(
                      children: [
                        Text(title),
                      ],
                    ),
                  );
  }
}