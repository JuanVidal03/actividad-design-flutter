// ignore_for_file: prefer_const_constructors, unused_field, sort_child_properties_last, deprecated_member_use, sized_box_for_whitespace, avoid_print

import 'package:flutter/material.dart';
// componentes
import 'package:design_app_flutter/ejercicio4/components/button.dart';
import 'package:design_app_flutter/ejercicio4/components/input.dart';
import 'package:design_app_flutter/ejercicio4/views/register.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  // controladores para los valores
  final _email = TextEditingController();
  final _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
          padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // correo
                inputText(_email, 'Ingresa tu nombre de usuario', false, 0),
                // password
                inputText(_password, 'Ingresa tu contraseña', true, 20),
                
                // boton de enviar
                formButton('Ingresar', sendForm, 15),
                // boton de registrarse
                formButton('Registrarse', navitageRegister, 5),
                // boton de olvidar password
                formButton('¿Olvido su contraseña?', sendForm, 5),
              ],
            )
          )
        );
  }

  // visualizar los valores del formulario en consola
  void sendForm(){
    final email = _email.text;
    final password = _password.text;
    print(email);
    print(password);
    _email.clear();
    _password.clear();
  }

  // ir a la pagina de registrarse
  void navitageRegister(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Register()) 
    );
  }
}