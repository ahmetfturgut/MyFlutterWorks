import 'package:flutter/material.dart';
//input işlemleri
class formIslemleri extends StatefulWidget {
  @override
  _formIslemleriState createState() => _formIslemleriState();
}

class _formIslemleriState extends State<formIslemleri> {
  var inputVal = "";
  var maxLine;
  FocusNode _fNode;
  @override
  void initState() {
    super.initState();
    _fNode = FocusNode();

    _fNode.addListener(() {
      setState(() {
        if (_fNode.hasFocus) {
          maxLine = 3;
        } else {
          maxLine = 1;
        }
      });
    });
  }

  @override
  void dispose() {
    _fNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text("Input işlemleri"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          FocusScope.of(context).requestFocus(_fNode);
        },
        child: Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: ListView(
          children: <Widget>[
            TextField(
              textInputAction: TextInputAction.done,
              maxLength: 20,
              maxLines: maxLine,
              focusNode: _fNode,
              autofocus: false,
              decoration: InputDecoration(
                hintText: "Metni Buraya Giriniz",
                labelText: "Başlık",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                prefixIcon: Icon(Icons.edit),
                suffixIcon: Icon(Icons.email),
              ),
              onSubmitted: (s) {
                setState(() {
                  inputVal = s;
                });
              },
            ),
            TextField(
              textInputAction: TextInputAction.done,
              maxLength: 20,
              maxLines: 1,
              autofocus: false,
              decoration: InputDecoration(
                hintText: "Metni Buraya Giriniz",
                labelText: "Başlık",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                prefixIcon: Icon(Icons.edit),
                suffixIcon: Icon(Icons.email),
              ),
              onSubmitted: (s) {
                setState(() {
                  inputVal = s;
                });
              },
            ),
            Container(
              color: Colors.teal.shade400,
              margin: EdgeInsets.all(10),
              width: double.infinity,
              height: 200,
              child: Align(child: Text(inputVal)),
            ),
          ],
        ),
      ),
    );
  }
}
