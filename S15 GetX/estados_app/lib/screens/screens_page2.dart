import 'package:estados_app/controllers/usuario_controller.dart';
import 'package:estados_app/models/usuario_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Page2Screen extends StatelessWidget {
   
  const Page2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    print(Get.arguments);

    var usuarioController = Get.find<UsuarioController>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Page2Screen')
      ),
      body:  Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MaterialButton(
            onPressed: (){
              usuarioController.setUsuario(Usuario(edad: 22,nombre: 'Pedro Gutiérrez',profesiones: ['Programador']));
            },
            color: Colors.blue,
            child: const Text(
              'Establecer Usuario',
              style: TextStyle(color: Colors.white),
            ),
          ),
          MaterialButton(
            onPressed: (){
              usuarioController.cambiarEdad(30);
            },
            color: Colors.blue,
            child: const Text(
              'Cambiar Edad',
              style: TextStyle(color: Colors.white),
            ),
          ),
          MaterialButton(
            onPressed: (){},
            color: Colors.blue,
            child: const Text(
              'Añadir Profesion',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
      ),
    );
  }
}