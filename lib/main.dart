// ignore_for_file: dead_code

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Yes No App",
      debugShowCheckedModeBanner: false,
      //theme
      home:  Scaffold(
        appBar: AppBar(
          title: const Text("Material App Bar"),
        ),
        body: Center(
          child: FilledButton.tonal(
            onPressed: ( ) { },  
            child: const Text("clik me")),
        ),
      ),
    );
  }
}

       