import 'package:estados_app/services/usuario_service.dart';
import 'package:flutter/material.dart';

class Page1Screen extends StatelessWidget {
   
  const Page1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page1Screen'),
      ),
      body: usuarioService.existsUser ? 
              const _CustomBody() : 
              const Center(child: Text('El usuario no ha sido configurado')),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, '/page2'),
        child: const Icon(Icons.next_week_outlined),
      ),
    );
  }
}

class _CustomBody extends StatelessWidget {
  const _CustomBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text('General',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
          Divider(),
          ListTile(
            title: Text('Nombre'),
          ),
          ListTile(
            title: Text('Edad'),
          ),
          Text('Profesiones',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
          Divider(),
          ListTile(
            title: Text('Profesion 1'),
          ),
          ListTile(
            title: Text('Profesion 1'),
          ),
          ListTile(
            title: Text('Profesion 1'),
          ),
        ]),
    );
  }
}