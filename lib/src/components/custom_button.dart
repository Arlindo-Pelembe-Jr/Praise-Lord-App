import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  String? title;
  void Function()? onTap;
  CustomButton({Key? key, required this.title, this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white30,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(child: Text(title.toString())),
      ),
      onTap: onTap,
    );
  }
}
