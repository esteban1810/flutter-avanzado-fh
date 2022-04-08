
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
}