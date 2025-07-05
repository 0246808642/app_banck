import 'package:flutter/material.dart';

class EditTransference extends StatelessWidget {
  final TextEditingController? controller;
  final String? label;
  final String? tip;
  final IconData? iconData;

   EditTransference({this.controller, this.label, this.tip,this.iconData,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          TextField(
            controller: controller,
            style: TextStyle(fontSize: 24),
            decoration: InputDecoration(
              icon: iconData!= null ? Icon(iconData):null,
              labelText: label,
              hintText: tip,
            ),
            keyboardType: TextInputType.number,
          ),
        ],
      ),
    );
    ;
  }
}
