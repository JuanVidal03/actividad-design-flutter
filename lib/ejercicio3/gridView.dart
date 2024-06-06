// ignore_for_file: non_constant_identifier_names, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';

Widget gridView(BuildContext context) {
  return GridView.count(
    primary: false,
    padding: const EdgeInsets.all(20),
    crossAxisSpacing: 10,
    mainAxisSpacing: 10,
    crossAxisCount: 3,
    // iteracion de los elemntos
    children: List.generate(
      items.length,
      // para agregar el evento del click
      (index) => InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => navegacion(index)),
          );
        },
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                items[index]['icon'],
                size: 40,
                color: Colors.orange,
              ),
              Text(items[index]['title']!),
            ],
          ),
        ),
      ),
  ));
}


// vitas de citas medicas
class CitasMedicas extends StatelessWidget {
  const CitasMedicas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Citas Medicas')
      ),
      body: Center(
        child: Text('Contenido de las citas medicas'),
      ),
    );
  }
}



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




Widget navegacion(int index) {
  switch (items[index]['title'].toLowerCase()) {
    case 'citas medicas':
      return CitasMedicas();
    case 'urgencias':
      // Replace with your Urgencias screen widget creation
      return Urgencias();
    // Add cases for other titles and their corresponding screens
    default:
      return Text('Unknown Screen');
  }
}





/// list map con los items del menu
List <Map<String, dynamic>> items = [
  {
    'icon': Icons.add_box_rounded,
    'title': 'Citas Medicas'
  },
  {
    'icon': Icons.add_box_rounded,
    'title': 'Urgencias'
  },
  {
    'icon': Icons.co_present_rounded,
    'title': 'Espcialistas'
  },
  {
    'icon': Icons.people_alt_sharp,
    'title': 'Farmacia'
  },
  {
    'icon': Icons.face,
    'title': 'Pacientes'
  },
  {
    'icon': Icons.health_and_safety,
    'title': 'Terapias'
  },
  {
    'icon': Icons.science,
    'title': 'Laboratorio'
  },
  {
    'icon': Icons.bloodtype,
    'title': 'Sangre'
  },
  {
    'icon': Icons.directions_walk,
    'title': 'Rehabilitacion'
  },
  {
    'icon': Icons.loupe,
    'title': 'Consultas'
  },
  {
    'icon': Icons.pause_presentation,
    'title': 'Informes'
  },
  {
    'icon': Icons.calendar_month,
    'title': 'Calendario'
  },
  {
    'icon': Icons.payment,
    'title': 'Pagos'
  },
  {
    'icon': Icons.contact_emergency,
    'title': 'Contactos'
  },
  {
    'icon': Icons.info,
    'title': 'Informacion'
  },
];