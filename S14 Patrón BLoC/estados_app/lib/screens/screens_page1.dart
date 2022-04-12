import 'package:estados_app/bloc/user/usuario_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/usuario_model.dart';

class Page1Screen extends StatelessWidget {
   
  const Page1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page1Screen'),
        actions: [
          IconButton(
            onPressed: (){
              BlocProvider.of<UsuarioBloc>(context).add(DeleteUsuario());
            }, 
            icon: const Icon(Icons.delete_outline)
          ),
        ],
      ),
      body: BlocBuilder<UsuarioBloc, UsuarioState>(
        builder: (context, state) {
          return !state.exists ?
                    const Center(child: Text('No hay usuarios'),) :
                    _CustomBody(user: state.user!,);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, '/page2'),
        child: const Icon(Icons.next_week_outlined),
      ),
    );
  }
}

class _CustomBody extends StatelessWidget {
  final Usuario user;
  
  const _CustomBody({
    Key? key, 
    required this.user, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('General',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
          const Divider(),
          ListTile(
            title: Text('Nombre: ${user.nombre}'),
          ),
          ListTile(
            title: Text('Edad: ${user.edad}'),
          ),
          const Text('Profesiones',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
          const Divider(),
          ...user.profesiones.map((e) => ListTile(title: Text(e))).toList()
        ]),
    );
  }
}