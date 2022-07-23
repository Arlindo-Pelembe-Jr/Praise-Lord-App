// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class MainAppBar extends StatelessWidget {
  MainAppBar({Key? key, this.childrens = const []}) : super(key: key);
  List<Widget> childrens = [];
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.white12,
      padding: const EdgeInsets.all(5),
      margin: EdgeInsets.only(
          top: MediaQuery.of(context).size.height / 20,
          left: MediaQuery.of(context).size.width / 500),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: childrens),
    );
  }
}
