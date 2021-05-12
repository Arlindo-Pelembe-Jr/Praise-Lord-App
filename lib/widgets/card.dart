import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomCard extends StatelessWidget {
  String image,title,subtitle;
  CustomCard({this.title,this.subtitle,this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
            
            // shape: ShapeBorder.,
            color: Colors.white70,
            child: Column( 
              children: <Widget>[ 
                SizedBox(
                  height: 120.0,
                  child: Stack( 
                    children: <Widget>[ 
                      Positioned.fill(
                        bottom: 35.0, 
                        child: Image.asset(
                           image,
                          // 'assets/The Four.png', 
                          fit: BoxFit.fill,
                          ),
                        ),
                        Positioned(
                          bottom: 5.0,
                          left: 8.0,
                          right: 15.0,
                          child: FittedBox( 
                            fit: BoxFit.scaleDown,
                            alignment:Alignment.bottomLeft,
                            child: Text( 
                              title,
                              style: Theme.of(context)
                              .textTheme 
                              .headline6 
                              .copyWith(color:Colors.black),
                              ),
                          ), 
                          ),
                    ],
                    
                    ),
                ),
                Padding( 
                  padding: EdgeInsets.all(8),
                  child: subtitle != null ? Text(subtitle) : SizedBox(),
                  ),
              ],
            ),
          );
  }
}