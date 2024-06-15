// ignore_for_file: file_names, prefer_const_constructors

import 'package:design_app_flutter/ejercicio5/home.dart';
import 'package:flutter/material.dart';

class Ejercicio5main extends StatefulWidget {
  const Ejercicio5main({super.key});

  @override
  State<Ejercicio5main> createState() => _Ejercicio5mainState();
}

class _Ejercicio5mainState extends State<Ejercicio5main> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Imagenes deslizantes!',
      home: Home()
    );
  }
}