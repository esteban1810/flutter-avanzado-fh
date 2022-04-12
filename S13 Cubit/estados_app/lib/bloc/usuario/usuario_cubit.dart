
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../models/usuario_model.dart';
part 'usuario_state.dart';

class UsuarioCubit extends Cubit<UsuarioState>{
  UsuarioCubit() : super(UsuarioInitial());

  void selectUser(Usuario user){
    emit(UsuarioActivo(user));
  }

  void cambiarEdad(int edad){
    final currentState = state;
    if(currentState is UsuarioActivo){
      Usuario user = currentState.usuario.copyWith(edad: 52);
      emit(UsuarioActivo(user));
    }
  }
}