part of 'usuario_cubit.dart';

abstract class UsuarioState{}

class UsuarioInitial extends UsuarioState{
  final exists = false;

  @override
  String toString() {
    // TODO: implement toString
    return 'USUARIO: {exists:false}';
  }
}


class UsuarioActivo extends UsuarioState{
  final exists = true;
  final Usuario usuario;

  UsuarioActivo(this.usuario);
  

  @override
  String toString() {
    // TODO: implement toString
    return 'USUARIO: {exists:true}';
  }
}