part of 'usuario_bloc.dart';

abstract class UsuarioEvent{}

class ActivateUsuario extends UsuarioEvent{
  final Usuario user;

  ActivateUsuario(this.user);
}