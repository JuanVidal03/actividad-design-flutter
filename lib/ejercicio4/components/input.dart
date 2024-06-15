// ignore_for_file: prefer_const_constructors, body_might_complete_normally_nullable, avoid_unnecessary_containers

import 'package:flutter/material.dart';

Widget inputText(TextEditingController controller, String text, bool isPassword, double margin){
  return Container(
    margin: EdgeInsets.only(top: margin),
    child: TextFormField(
    controller: controller,
    obscureText: isPassword,
    decoration: InputDecoration(
      labelText: text,
      border: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.red,
          width: 2.0
        )
      )
    ),
    validator: (value) {
      // validando los valores
      if (value == null || value.isEmpty) {
        return 'El campo no puede estar vacio';
      }
      return null;
    },
  )
  );
}