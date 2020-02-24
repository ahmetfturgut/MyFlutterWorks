import 'package:flutter/material.dart';
import 'package:flutter_app_yeni/input_islemleri.dart';
import 'package:flutter_app_yeni/liste_safyasi.dart';
import 'package:flutter_app_yeni/stepper.dart';

import 'aSayfasi.dart';
import 'bSayfasi.dart';
import 'form_islemleri.dart';

class NavigasyonIslemleri extends StatelessWidget {
  String baslik = "B sayfası";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Navigasyon İşlemleri",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
                child: Text("A sayfasına git"),
                color: Colors.blue,
                onPressed: () {
                  Navigator.pushNamed(context, '/aPage');
                }),
            RaisedButton(
                child: Text("B sayfasına git"),
                color: Colors.red,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => bSayfasi(baslik),
                    ),
                  );
                }),
            RaisedButton(
                child: Text("C sayfasına git geri dön"),
                color: Colors.red,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => cSayfasi(),
                    ),
                  ).then((gelen) {
                    debugPrint("Gelen değer $gelen");
                  });
                }),
                RaisedButton(
                child: Text("Liste Sayfası"),
                color: Colors.orange,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>listeSayfasi()));
                }),
                 RaisedButton(
                child: Text("İnput İşlemleri"),
                color: Colors.orange,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>formIslemleri()));
                }),
                 RaisedButton(
                child: Text("Form İşlemleri"),
                color: Colors.orange,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>FormandTextFormField()));
                }),
                 RaisedButton(
                child: Text("Stepper İşlemleri"),
                color: Colors.orange,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>stapperPage()));
                }),
          ],
        ),
      ),
      )
    );
  }
}

class cSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "C sayfası",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("C sayfası"),
            RaisedButton(
                child: Text("Geri Dön"),
                color: Colors.green,
                onPressed: () {
                  Navigator.pop(context, 50);
                })
          ],
        ),
      ),
    );
  }
}
