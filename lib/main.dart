import 'package:flutter/material.dart';
import 'package:flutter_app_yeni/aSayfasi.dart'; 

import 'form_islemleri.dart';
import 'navigaston_islemleri.dart';

void main() {
  runApp(MaterialApp(
    title: "Flutter dersleri",
    theme: ThemeData(primarySwatch: Colors.orange),
   
    routes: {
      '/': (contex) => NavigasyonIslemleri(),
      '/aPage': (contex) => aSayfasi(),   
      '/formİslemleri':(contex)=>formIslemleri()

    },
    // home:  NavigasyonIslemleri()
  ));
}
