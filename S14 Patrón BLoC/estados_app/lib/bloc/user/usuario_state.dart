part of 'usuario_bloc.dart';

@immutable
abstract class UsuarioState{
  final bool exists;
  final Usuario? user;

  const UsuarioState({
    this.exists = false, 
    this.user
  });
}

class UsuarioInitialState extends UsuarioState{
}