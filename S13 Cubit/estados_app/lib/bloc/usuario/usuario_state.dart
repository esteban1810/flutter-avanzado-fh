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