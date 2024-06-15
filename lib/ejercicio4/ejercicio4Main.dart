// ignore_for_file: prefer_const_constructors, file_names

import 'package:design_app_flutter/ejercicio4/home.dart';
import 'package:flutter/material.dart';

class Ejercicio4main extends StatefulWidget {
  const Ejercicio4main({super.key});

  @override
  State<Ejercicio4main> createState() => _Ejercicio4mainState();
}

class _Ejercicio4mainState extends State<Ejercicio4main> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Iniciar Sesion',
      home: Home(),
    );
  }
}