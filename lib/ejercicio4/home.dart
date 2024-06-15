// ignore_for_file: prefer_const_constructors, unused_element

import 'package:flutter/material.dart';

// vistas
import 'package:design_app_flutter/ejercicio4/views/login.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Iniciar Sesion', style: TextStyle(fontWeight: FontWeight.w700),),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Login(),
    );
  }
}