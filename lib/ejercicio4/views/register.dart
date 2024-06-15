// ignore_for_file: prefer_const_constructors, unused_field, unused_element, avoid_unnecessary_containers

import 'package:flutter/material.dart';

// componentes 
import 'package:design_app_flutter/ejercicio4/components/input.dart'; 



class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

// controladores de los inputs
final _nombreCompleto = TextEditingController();
final _nomrbeUsuario = TextEditingController();
final _password = TextEditingController();
final _passwordConfirm = TextEditingController();
final _email = TextEditingController();
final _telefono = TextEditingController();

class _RegisterState extends State<Register> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Registrate por primera vez!',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        
      ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: ListView.builder(
            itemCount: inputs.length,
            itemBuilder: (BuildContext context, int index){

              var input = inputs[index];
              return inputText(input['controller'], input['inputName'], input['isPassword'], input['margin']);

            }
          ),
        ),
      ),
    );
  }
}



// inputs a renderizar
List <Map<String, dynamic>> inputs = [
  {
    'controller': _nombreCompleto,
    'inputName': 'Nombre Completo',
    'isPassword': false,
    'margin': 20.0
  },
  {
    'controller': _nomrbeUsuario,
    'inputName': 'Nombre de Usuario',
    'isPassword': false,
    'margin': 20.0
  },
  {
    'controller': _password,
    'inputName': 'Contraseña',
    'isPassword': true,
    'margin': 20.0
  },
  {
    'controller': _passwordConfirm,
    'inputName': 'Confirmar Contraseña',
    'isPassword': true,
    'margin': 20.0
  },
  {
    'controller': _email,
    'inputName': 'Correo Electronico',
    'isPassword': false,
    'margin': 20.0
  },
  {
    'controller': _telefono,
    'inputName': 'Numero Telefonico',
    'isPassword': false,
    'margin': 20.0
  }
];