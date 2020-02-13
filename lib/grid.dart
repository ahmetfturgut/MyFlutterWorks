import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class gridListe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
         
          backgroundColor: Colors.red,
          expandedHeight: 200,
          floating: false,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            title: Text("Sliver App Bar"),
            centerTitle: true,
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate(ListeElemanlari()),
        )
      ],
    );
  }
}

List<Widget> ListeElemanlari(){
return[
    Container(
              height: 120,
              color: Colors.amber,
              alignment: Alignment.center,
              child: Text("merhaba"),
            ),
              Container(
              height: 120,
              color: Colors.teal,
              alignment: Alignment.center,
              child: Text("merhaba"),
            ),
              Container(
              height: 120,
              color: Colors.orange,
              alignment: Alignment.center,
              child: Text("merhaba"),
            ),
              Container(
              height: 120,
              color: Colors.purple,
              alignment: Alignment.center,
              child: Text("merhaba"),
            ),
              Container(
              height: 120,
              color: Colors.blueAccent,
              alignment: Alignment.center,
              child: Text("merhaba"),
            ),
              Container(
              height: 120,
              color: Colors.blue,
              alignment: Alignment.center,
              child: Text("merhaba"),
            ),
            Container(
              height: 120,
              color: Colors.blue.shade100,
              alignment: Alignment.center,
              child: Text("merhaba"),
            ),
            Container(
              height: 120,
              color: Colors.blue.shade200,
              alignment: Alignment.center,
              child: Text("merhaba"),
            ),
            Container(
              height: 120,
              color: Colors.blue.shade300,
              alignment: Alignment.center,
              child: Text("merhaba"),
            ),
            Container(
              height: 120,
              color: Colors.purple.shade200,
              alignment: Alignment.center,
              child: Text("merhaba"),
            ),
            Container(
              height: 120,
              color: Colors.orange.shade300,
              alignment: Alignment.center,
              child: Text("merhaba"),
            ),
];
}