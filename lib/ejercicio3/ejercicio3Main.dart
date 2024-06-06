// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
// componentes
import 'package:design_app_flutter/ejercicio3/home.dart';

class Ejercicio3Main extends StatefulWidget {
  const Ejercicio3Main({super.key});

  @override
  State<Ejercicio3Main> createState() => _Ejercicio3MainState();
}

class _Ejercicio3MainState extends State<Ejercicio3Main> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Menu Hospital',
      home: Home(),
    );
  }
}