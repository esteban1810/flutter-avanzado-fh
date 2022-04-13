import 'package:estados_app/screens/screen.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: '/page1',
      getPages: [
        GetPage(name: '/page1', page: ()=>const Page1Screen()),
        GetPage(name: '/page2', page: ()=>const Page2Screen())
      ],
      // routes: {
      //   '/page1':(context) => const Page1Screen(),
      //   '/page2':(context) => const Page2Screen()
      // },
    );
  }
}