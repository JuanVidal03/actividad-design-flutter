// ignore_for_file: prefer_const_constructors

import 'package:design_app_flutter/ejercicio5/components/ImageText.dart';
import 'package:flutter/material.dart';

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
        title: Text('Imagenes Deslizantes!'),
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: PageView(
          children: [
            ImageText(
              'https://images.pexels.com/photos/1438081/pexels-photo-1438081.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
              'Aprendiz',
              'Inscribete al Sena'
            ),
            ImageText(
              'https://images.pexels.com/photos/1462630/pexels-photo-1462630.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
              'Preparate',
              'El futuro es hoy'
            ),
            ImageText(
              'https://images.pexels.com/photos/6963944/pexels-photo-6963944.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
              'Programacion de software',
              'Despierta tu mente'
            ),
          ],
        ),
      )
    );
  }
}