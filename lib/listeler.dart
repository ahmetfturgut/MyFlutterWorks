import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class EtkinListe extends StatelessWidget {
  List<Ogrenci> tumOgrenciler = [];
  @override
  Widget build(BuildContext context) {
    ogrenciVerileriniGetir();
    return ListView.builder(
      itemCount: 15,
      itemBuilder: (contex, index) => Card(
        elevation: 4,
        child: ListTile(
          leading: Icon(Icons.perm_contact_calendar),
          title: Text(tumOgrenciler[index]._isim),
          subtitle: Text(tumOgrenciler[index]._aciklama),
          trailing: Icon(Icons.add),
          onTap: () {
            alertDialogShow(contex,index);
            toastMEsaj(index, true);
          },
          onLongPress: () {
            alertDialogShow(contex,index);
            toastMEsaj(index, false);
          },
        ),
      ),
    );
  }

  void ogrenciVerileriniGetir() {
    tumOgrenciler = List.generate(
        300,
        (i) => Ogrenci("Süedamı seviyorum $i ", "Süedamı çok seviyorum $i ",
            i % 2 == 0 ? true : false));
  }

  void alertDialogShow(BuildContext ctx,i) {
    showDialog(
        context: ctx,
        barrierDismissible: false,
        builder: (ctx) {
          return AlertDialog(
            title: Text("Alert dialog"),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text("Öğrenci adı: ${tumOgrenciler[i]._isim}",style: TextStyle(fontSize: 12)),
                  Text("Öğrenci açıklaması: ${tumOgrenciler[i]._aciklama}",style: TextStyle(fontSize: 12)),
                  
                ],
              ),
            ),
            backgroundColor: Colors.blue.shade200,
            actions: <Widget>[
              ButtonBar(
                children: <Widget>[
                  FlatButton(
                    onPressed: () {
                      Navigator.of(ctx).pop();
                    },
                    child: Text("Tamam"),
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.of(ctx).pop();
                    },
                    child: Text("Kapat"),
                  )
                ],
              ),
            ],
          );
        });
  }

  void toastMEsaj(index, data) {
    Fluttertoast.showToast(
        msg: data
            ? "kısa basıldı :" + tumOgrenciler[index].toString()
            : "uzun basıldı:" + tumOgrenciler[index].toString(),
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIos: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }
}

class Ogrenci {
  String _isim;
  String _aciklama;
  bool _cinsiyet;

  Ogrenci(this._isim, this._aciklama, this._cinsiyet);
  @override
  String toString() {
    return "seçilen $_isim açıklaması $_aciklama ";
  }
}
