import 'dart:async';

import 'package:estados_app/models/usuario_model.dart';

class _UsuarioService{
  Usuario? _usuario;
  StreamController<Usuario> _streamController = StreamController();

  Usuario? get usuario => _usuario;
  bool get existsUser => usuario!=null;

  StreamController<Usuario> get streamController =>_streamController;

  void cargarUsuario(Usuario usuario){
    _usuario = usuario;
    _streamController.add(usuario);
  }

  void cambiarEdad(int edad){
    _usuario!.edad = edad;
    _streamController.add(_usuario!);
  }
}

final usuarioService = _UsuarioService();