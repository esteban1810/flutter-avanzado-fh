import 'dart:async';

import 'package:estados_app/models/usuario_model.dart';

class _UsuarioService{
  Usuario? _usuario;
  final StreamController<Usuario> _streamController = StreamController.broadcast();

  Usuario? get usuario => _usuario;
  bool get existsUser => usuario!=null;

  Stream get stream =>_streamController.stream;

  void cargarUsuario(Usuario usuario){
    _usuario = usuario;
    _streamController.add(usuario);
  }

  void cambiarEdad(int edad){
    _usuario!.edad = edad;
    _streamController.add(_usuario!);
  }

  close(){
    _streamController.close();
  }
}

final usuarioService = _UsuarioService();