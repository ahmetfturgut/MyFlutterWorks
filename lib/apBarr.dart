import 'package:flutter/material.dart';

class MyHomPageAppBar extends StatefulWidget {
  final String title;
  int sayac = 0;
  MyHomPageAppBar({this.title});

  @override
  State<StatefulWidget> createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomPageAppBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            setState(() {
              _sayacDegeriArttir();
            });
          },
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                  child: Text("Artır"),
                  color: Colors.green,
                  onPressed: _sayacDegeriArttir),
              Text("Butona basılma sayısı"),
              Text(
                "${widget.sayac}",
                style: Theme.of(context).textTheme.display1.copyWith(
                    color: widget.sayac < 0 ? Colors.red : Colors.blue),
              ),
              RaisedButton(
                  child: Text("Azalt"),
                  color: Colors.green,
                  onPressed: _sayacDegeriAzalt),
            ],
          ),
        ));
  }

  void _sayacDegeriArttir() {
    setState(() {
      widget.sayac++;
      debugPrint("Sayac değeri : ${widget.sayac}");
    });
  }

  void _sayacDegeriAzalt() {
    setState(() {
      widget.sayac--;
      debugPrint("Sayac değeri : ${widget.sayac}");
    });
  }
}
