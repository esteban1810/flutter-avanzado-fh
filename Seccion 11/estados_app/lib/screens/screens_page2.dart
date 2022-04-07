import 'package:flutter/material.dart';

class Page2Screen extends StatelessWidget {
   
  const Page2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page2Screen'),
      ),
      body: const Center(
         child: Text('Page2Screen'),
      ),
    );
  }
}