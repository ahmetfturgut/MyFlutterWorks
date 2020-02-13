import 'package:flutter/material.dart';

class bSayfasi extends StatelessWidget {
  var gelenBaslik;
  bSayfasi(this.gelenBaslik);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          gelenBaslik,
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          Text(gelenBaslik)
          ],
        ),
      ),
    );
  }
}
