import 'package:flutter/material.dart';

Widget textFieldWidget(String name, TextEditingController controller) {
  return Padding(
    padding: const EdgeInsets.only(
      left: 15.0,
      right: 15,
      bottom: 20,
    ),
    child: Container(
      height: 50,
      child: TextFormField(
        keyboardType: TextInputType.text,
        controller: controller,
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
            hintText: name,
            hintStyle: TextStyle(color: Colors.white30),
            focusColor: Colors.white54,
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white12)),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white12)),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white12))),
      ),
    ),
  );
}
