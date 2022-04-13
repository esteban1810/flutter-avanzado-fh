import 'package:estados_app/controllers/usuario_controller.dart';
import 'package:estados_app/screens/screens_page2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/usuario_model.dart';

class Page1Screen extends StatelessWidget {
   
  const Page1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final usuarioController = Get.put(UsuarioController());

    return Scaffold(
      appBar: AppBar(
        title: const Text('Page1Screen'),
      ),
      body: Obx(
        ()=> usuarioController.exists.value ?
              const _CustomBody() :
              const Center(child: Text('No se pudo'),)
      ),
      // const Center(child: Text('No existe Usuario')),
      // body: Obx(() => 
      // // usuarioController.exists ?
      // //                   const _CustomBody() :
      //                   const Center(child: Text('No existe usuario')),
      //       ),
      // const _CustomBody(),
      floatingActionButton: FloatingActionButton(
        // onPressed: () => Navigator.pushNamed(context, '/page2'),
        onPressed: () => Get.toNamed('/page2',arguments: {'nombre':'Esteban Sevilla','edad':22}),
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
        children:  const [
          Text('General',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
          Divider(),
          ListTile(
            title: Text('Nombre:'),
          ),
          ListTile(
            title: Text('Edad:'),
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