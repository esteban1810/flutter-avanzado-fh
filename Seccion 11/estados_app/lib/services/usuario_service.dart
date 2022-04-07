import 'package:estados_app/models/usuario_model.dart';

class _UsuarioService{
  Usuario? _usuario;

  Usuario? get usuario => _usuario;
  bool get existsUser => usuario!=null;

  void cargarUsuario(Usuario usuario){
    _usuario = usuario;
  }
}

final usuarioService = _UsuarioService();