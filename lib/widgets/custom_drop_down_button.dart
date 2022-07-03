// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomDropDownButtonClass extends StatelessWidget {
  final List values;
  final double width;
  const CustomDropDownButtonClass({
    Key? key,
    required this.values,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: width * 0.05),
      width: width,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(53, 53, 53, 1.0),
        borderRadius: BorderRadius.circular(10),
      ),
      child: DropdownButton(
        items: values
            .map(
              (e) => DropdownMenuItem(
                value: e,
                child: Text(e),
              ),
            )
            .toList(),
        value: values.first,
        underline: Container(),
        dropdownColor: const Color.fromRGBO(53, 53, 53, 1.0),
        style: const TextStyle(color: Colors.white),
        onChanged: (_) {},
      ),
    );
  }
}
