import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomDropDownTextField extends StatefulWidget {
  List<String> items;
  dynamic currentSelectedValue;
  String placeholder;
  double width;
  var validacao, onChange, widthFactor, fontSize;

  CustomDropDownTextField(
      {Key key,
      @required this.items,
      @required this.currentSelectedValue,
      this.placeholder,
      @required this.width,
      this.validacao,
      this.onChange,
      this.widthFactor,
      this.fontSize})
      : super(key: key);
  @override
  _CustomDropDownTextFieldState createState() =>
      _CustomDropDownTextFieldState();
}

class _CustomDropDownTextFieldState extends State<CustomDropDownTextField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: widget.width / 1.2,
          padding: const EdgeInsets.only(left: 12, right: 12, top: 20),
          child: Text(widget.placeholder),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12, right: 12, bottom: 12),
          child: Container(
            child: DropdownButtonFormField<dynamic>(
              // decoration: InputDecoration(
              //   border: OutlineInputBorder(
              //     borderRadius: BorderRadius.circular(20),
              //   ),
              // ),
              value: widget.currentSelectedValue,
              isDense: true,
              isExpanded: true,
              onChanged: widget.onChange,
              items: widget.items.map((String value) {
                return new DropdownMenuItem<String>(
                  value: value,
                  child: new Text(value),
                );
              }).toList(),
              // validator: widget.validacao,
            ),
          ),
        ),
      ],
    );
  }
}