import 'package:flutter/material.dart';

class FormandTextFormField extends StatefulWidget {
  @override
  _FormandTextFormFieldState createState() => _FormandTextFormFieldState();
}

class _FormandTextFormFieldState extends State<FormandTextFormField> {
  var _name, _email, _pass, _cins, cinsiyet;
  bool switchState = false;
  var otoControl = false;
  double sliderDeger = 0;
  var termAndConditions = false;
  List<String> sehirler = ["Ankara", "İstanbul", "Sakarya", "Kocaeli"];
  String secilenSehir = "Ankara";
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(primaryColor: Colors.indigo, accentColor: Colors.red),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.save),
        ),
        appBar: AppBar(
          title: Text("Form ve TextForm İşlemleri"),
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Form(
              key: formKey,
              autovalidate: otoControl,
              child: ListView(
                children: <Widget>[
                  SizedBox(height: 10),
                  TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.account_circle),
                        hintText: "Adınız ve Soyadınız",
                        labelText: "Ad Soyad",
                        border: OutlineInputBorder()),
                    validator: (var name) {
                      if (name.length < 6) {
                        return "Lütfen adınızı soyadınızı tam giriniz";
                      } else {
                        return null;
                      }
                    },
                    onSaved: (name) => _name = name,
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.account_circle),
                        hintText: "Email Adresiniz",
                        labelText: "Email",
                        border: OutlineInputBorder()),
                    validator: _emailKontrol,
                    onSaved: (email) => _email = email,
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        hintText: "Şifreniz",
                        labelText: "Şifre",
                        border: OutlineInputBorder()),
                    validator: (var pass) {
                      if (pass.length < 6) {
                        return "En az 6 karakter giriniz";
                      } else {
                        return null;
                      }
                    },
                    onSaved: (pass) => _pass = pass,
                  ),
                  // SizedBox(height: 10),
                  // RadioListTile(
                  //     value: "Erkek",
                  //     groupValue: cinsiyet,
                  //     onChanged: (cins) => _cins = cins),
                  // SizedBox(height: 10),
                  // RadioListTile(
                  //     value: "Kadın",
                  //     groupValue: cinsiyet,
                  //     onChanged: (cins) => _cins = cins),
                  SizedBox(height: 10),
                  CheckboxListTile(
                      title: Text("Okudum Anladım"),
                      subtitle: Text("Onaylıyorum"),
                      activeColor: Colors.blue,
                      value: termAndConditions,
                      onChanged: (deger) {
                        setState(() {
                          termAndConditions = deger;
                        });
                      }),
                  SizedBox(height: 10),
                  SwitchListTile(
                      value: switchState,
                      title: Text("Switch"),
                      subtitle: Text("Switch subtitle"),
                      secondary: Icon(Icons.refresh),
                      onChanged: (deger) {
                        setState(() {
                          debugPrint("$deger");
                          switchState = deger;
                        });
                      }),
                  Slider(
                    value: sliderDeger,
                    onChanged: (deger) {
                      setState(() {
                        sliderDeger = deger;
                      });
                    },
                    min: 0,
                    max: 20,
                    divisions: 30,
                    label: sliderDeger.toString(),
                  ),
                  DropdownButton<String>(
                    items: sehirler.map((sehir) {
                      return DropdownMenuItem(
                        child: Text(sehir),
                        value: sehir,
                      );
                    }).toList(),
                    onChanged: (s) {
                      setState(() {
                        secilenSehir = s;
                      });
                    },
                    value: secilenSehir,
                  ),
                  RaisedButton.icon(
                    icon: Icon(Icons.save),
                    label: Text("KAYDET"),
                    color: Colors.blue,
                    onPressed: _checkLogin,
                  )
                ],
              )),
        ),
      ),
    );
  }

  void _checkLogin() {
    if (formKey.currentState.validate() && termAndConditions) {
      formKey.currentState.save();
      debugPrint("Şifre: $_pass Ad Soyad: $_name Email: $_email");
    } else {
      setState(() {
        otoControl = true;
      });
    }
  }

  String _emailKontrol(String mail) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(mail))
      return 'Geçersiz mail';
    else
      return null;
  }
}
