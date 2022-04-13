import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../models/usuario_model.dart';

class UsuarioController extends GetxController{
  var exists = false.obs;
  var user = Usuario().obs;

  get profesionesLength => user.value.profesiones!.length;

  void setUsuario(Usuario user){
    this.user.value = user;
    exists.value = true;
  }

  void cambiarEdad(int edad){
    user.update((val) {
      val!.edad = edad;
    });
  }

  void agregarProfesion(String profesion){
    user.value.profesiones!.add(profesion);
    user.refresh();
  }
}