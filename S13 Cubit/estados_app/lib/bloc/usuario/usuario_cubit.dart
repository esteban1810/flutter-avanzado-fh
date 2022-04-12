
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../models/usuario_model.dart';
part 'usuario_state.dart';

class UsuarioCubit extends Cubit<UsuarioState>{
  UsuarioCubit() : super(UsuarioInitial());

  void selectUser(Usuario user){
    emit(UsuarioActivo(user));
  }
}