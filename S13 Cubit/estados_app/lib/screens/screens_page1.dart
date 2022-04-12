import 'package:estados_app/bloc/usuario/usuario_cubit.dart';
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
            onPressed: context.read<UsuarioCubit>().borrarUsuario, 
            icon: const Icon(Icons.exit_to_app)
          )
        ],
      ),
      body: const _BlocBuilder(),
      // const _CustomBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, '/page2'),
        child: const Icon(Icons.next_week_outlined),
      ),
    );
  }
}

class _BlocBuilder extends StatelessWidget {
  const _BlocBuilder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UsuarioCubit,UsuarioState>(
      builder: (BuildContext context,UsuarioState state) { 
        switch(state.runtimeType){
          case UsuarioInitial:
            return const Center(child: Text('No hay usuario'),);
          case UsuarioActivo:
            return  _CustomBody(usuario: (state as UsuarioActivo).usuario,);
          default:
            return const Center(child: Text('Estado Desconocido'),);
        }
      },
    );
  }
}

class _CustomBody extends StatelessWidget {
  final Usuario usuario;
  
  const _CustomBody({
    Key? key, required this.usuario, 
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
            title: Text('Nombre: ${usuario.nombre}'),
          ),
          ListTile(
            title: Text('Edad: ${usuario.edad}'),
          ),
          const Text('Profesiones',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
          const Divider(),
          ...usuario.profesiones.map((e)=>ListTile(
            title: Text(e),
          )).toList()
        ]),
    );
  }
}