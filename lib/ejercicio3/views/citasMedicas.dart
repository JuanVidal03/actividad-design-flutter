// vitas de citas medicas
// ignore_for_file: prefer_const_constructors, unused_local_variable

import 'package:flutter/material.dart';

class CitasMedicas extends StatelessWidget {
  const CitasMedicas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Citas Medicas'),
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        padding: EdgeInsets.only(top: 25, bottom:25, left: 15, right: 15),
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index){
          // guardando el contador en una variable
          var item = items[index];
          IconData icon = item['icon'];
          String title = item['title'];
          // renderizndo los elementos
          return Card(
            child: ListTile(
              title: Text(title),
              leading: Icon(icon),
              iconColor: Colors.orange,
            )
          );
        },
      ),
    );
  }
}




// elementos a renderizar
List <Map<String, dynamic>> items = [
  {
    'icon': Icons.assignment_add,
    'title': 'Medicina General',
  },
  {
    'icon': Icons.sentiment_satisfied_alt_rounded,
    'title': 'Odontologia',
  },
  {
    'icon': Icons.person,
    'title': 'Psicologia',
  },
  {
    'icon': Icons.heart_broken,
    'title': 'Cardiologia',
  },
  {
    'icon': Icons.science_rounded,
    'title': 'Neurologia',
  }
];