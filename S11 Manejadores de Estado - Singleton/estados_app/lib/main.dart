import 'package:estados_app/screens/screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: '/page1',
      routes: {
        '/page1':(context) => const Page1Screen(),
        '/page2':(context) => const Page2Screen()
      },
    );
  }
}