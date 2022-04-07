import 'package:estados_app/models/usuario_model.dart';
import 'package:estados_app/services/usuario_service.dart';
import 'package:flutter/material.dart';

class Page2Screen extends StatelessWidget {
   
  const Page2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page2Screen'),
      ),
      body:  Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MaterialButton(
            onPressed: (){
              usuarioService.cargarUsuario(Usuario(nombre: 'Esteban Sevilla', edad: 22, profesiones: ['Desarrollador']));
            },
            color: Colors.blue,
            child: const Text(
              'Establecer Usuario',
              style: TextStyle(color: Colors.white),
            ),
          ),
          MaterialButton(
            onPressed: (){
              usuarioService.usuario!.edad = 10;
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