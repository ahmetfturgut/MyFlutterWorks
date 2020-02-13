import 'package:flutter/material.dart';

import 'bSayfasi.dart';

class aSayfasi extends StatelessWidget {
   String baslik="B sayfası";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "A Sayfası",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
                child: Text("B sayfasına git"),
                color: Colors.blue,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (contex)=>bSayfasi(baslik)));
                }),
          ],
        ),
      ),
    );
  }
}
