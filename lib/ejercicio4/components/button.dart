// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';

Widget formButton(String text, Function function, double marginTop){
  return Container(
    margin: EdgeInsets.only(top: marginTop),
    width: double.infinity,
    child: ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.red),
      ),
      onPressed: (){
        function();
      }, child:Text(
        text,
        style: TextStyle(color: Colors.white),
      ),
    )
  );
}