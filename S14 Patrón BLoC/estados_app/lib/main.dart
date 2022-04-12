import 'package:estados_app/bloc/user/usuario_bloc.dart';
import 'package:estados_app/screens/screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (BuildContext context)=>UsuarioBloc())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: '/page1',
        routes: {
          '/page1':(context) => const Page1Screen(),
          '/page2':(context) => const Page2Screen()
        },
      ),
    );
  }
}