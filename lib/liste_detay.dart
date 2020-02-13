import 'package:flutter/material.dart';

class listDetay extends StatelessWidget {
  int gelenSayi = 0;

  listDetay(this.gelenSayi);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Lİste Detay",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[Text("seçilen eleman $gelenSayi")],
        ),
      ),
    );
  }
}
