
import 'package:bloc/bloc.dart';
import 'package:estados_app/models/usuario_model.dart';
import 'package:meta/meta.dart';

part 'usuario_state.dart';
part 'usuario_event.dart';

class UsuarioBloc extends Bloc<UsuarioEvent,UsuarioState>{
  UsuarioBloc() : super(UsuarioInitialState()){
    on<ActivateUsuario>((event, emit) => emit(UsuarioSetState(event.user)));


    on<ChangeUsuario>((event, emit){
      if(state.user!=null){
        final user = state.user!.copyWith(edad: event.edad);
        emit(UsuarioSetState(user));
      }
    });

  }
}