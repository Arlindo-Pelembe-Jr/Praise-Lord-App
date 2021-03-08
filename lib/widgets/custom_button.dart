import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  String title; void Function() onTap;
  CustomButton({this.title,this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
       child: Container(
       padding: EdgeInsets.all(10),
       decoration: BoxDecoration( 
       color: Colors.white30,
       borderRadius: BorderRadius.circular(10),
       ),
       child: Center(child: Text(title)),
                                   
        ),
        onTap:onTap,
        );
  }
}