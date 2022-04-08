
import 'package:flutter/material.dart';

import '../models/usuario_model.dart';

class UsuarioService with ChangeNotifier{
  Usuario? _usuario;

  bool get existsUsuario => _usuario!=null;
  Usuario? get getUsuario => _usuario;

  set setUsuario(Usuario usuario){
    _usuario = usuario;
    notifyListeners();
  }

  void cambiarEdad(int edad){
    _usuario!.edad = edad;
    notifyListeners();
  }

  void eliminarUsuario(){
    _usuario = null;
    notifyListeners();
  }

  void agregarProfesion(){
    _usuario!.profesiones.add('Profesión ${_usuario!.profesiones.length+1}');
    notifyListeners();
  }
}