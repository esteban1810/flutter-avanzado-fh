part of 'usuario_bloc.dart';

@immutable
abstract class UsuarioState{
  final bool exists;
  final Usuario? user;

  UsuarioState(
    this.exists, 
    this.user
  );
}

