import 'package:estados_app/services/usuario_service.dart';
import 'package:flutter/material.dart';

import '../models/usuario_model.dart';

class Page1Screen extends StatelessWidget {
   
  const Page1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page1Screen'),
      ),
      body: usuarioService.existsUser ? 
              _CustomBody(usuario: usuarioService.usuario!) : 
              const Center(child: Text('El usuario no ha sido configurado')),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, '/page2'),
        child: const Icon(Icons.next_week_outlined),
      ),
    );
  }
}

class _CustomBody extends StatelessWidget {
  final Usuario usuario;
  
  const _CustomBody({
    Key? key, 
    required this.usuario,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          const Text('General',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
          const Divider(),
          ListTile(
            title: Text('Nombre: ${usuario.nombre}'),
          ),
          ListTile(
            title: Text('Edad: ${usuario.edad}'),
          ),
          const Text('Profesiones',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
          const Divider(),
          const ListTile(
            title: Text('Profesion 1'),
          ),
          const ListTile(
            title: Text('Profesion 1'),
          ),
          const ListTile(
            title: Text('Profesion 1'),
          ),
        ]),
    );
  }
}