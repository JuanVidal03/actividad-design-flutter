// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Urgencias extends StatelessWidget {
  const Urgencias({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Urgencias')
      ),
      body: Center(
        child: Text('Contenido de las urgencias'),
      ),
    );
  }
}