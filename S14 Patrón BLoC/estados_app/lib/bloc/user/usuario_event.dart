part of 'usuario_bloc.dart';

abstract class UsuarioEvent{}

class ActivateUsuario extends UsuarioEvent{
  final Usuario user;
  ActivateUsuario(this.user);
}


class ChangeUsuario extends UsuarioEvent{
  final int edad;

  ChangeUsuario(this.edad);

}

class AddProfesionUsuario extends UsuarioEvent{
  final String profesion;

  AddProfesionUsuario(this.profesion);
}


class DeleteUsuario extends UsuarioEvent{}