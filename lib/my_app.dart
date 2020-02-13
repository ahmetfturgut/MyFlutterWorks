import 'package:flutter/material.dart';
import './apBarr.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: "material title ",
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: MyHomPageAppBar(title:"Uygulamam"),
    );
  }
  
}