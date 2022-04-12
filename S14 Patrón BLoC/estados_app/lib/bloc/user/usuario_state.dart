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

class UsuarioInitialState extends UsuarioState{}

class UsuarioSetState extends UsuarioState{
  const UsuarioSetState(Usuario user):super(exists:true,user:user);
}