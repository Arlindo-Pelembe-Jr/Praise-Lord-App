// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class GridViewCountWidget extends StatelessWidget {
  GridViewCountWidget({
    Key? key,
    required this.count,
    required this.items,
  }) : super(key: key);
  int? count;
  List<Widget>? items;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: MediaQuery.of(context).size.height,
      margin: EdgeInsets.fromLTRB(
          18, MediaQuery.of(context).size.height / 2.1, 18, 0),
      child: GridView.count(
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        padding: const EdgeInsets.all(8),
        crossAxisCount: count!,
        children: items!,
      ),
    );
  }
}
