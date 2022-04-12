import 'package:estados_app/bloc/usuario/usuario_cubit.dart';
import 'package:estados_app/models/usuario_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Page2Screen extends StatelessWidget {
   
  const Page2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
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
              Usuario user = Usuario(nombre: 'Pedro E', edad: 22, profesiones: ['Programador','Tester']);
              context.read<UsuarioCubit>().selectUser(user);
            },
            color: Colors.blue,
            child: const Text(
              'Establecer Usuario',
              style: TextStyle(color: Colors.white),
            ),
          ),
          MaterialButton(
            onPressed: (){
              context.read<UsuarioCubit>().cambiarEdad(30);
            },
            color: Colors.blue,
            child: const Text(
              'Cambiar Edad',
              style: TextStyle(color: Colors.white),
            ),
          ),
          MaterialButton(
            onPressed: (){
              context.read<UsuarioCubit>().agregarProfesion(null);
            },
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