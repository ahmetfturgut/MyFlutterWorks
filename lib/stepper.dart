import 'package:flutter/material.dart';

class stapperPage extends StatefulWidget {
  @override
  _stapperPageState createState() => _stapperPageState();
}

class _stapperPageState extends State<stapperPage> {
  var _aktifStep = 0;
  var isim, mail, sifre;
  List<Step> tumStepler;
  @override
  void initState() {
    super.initState();
    tumStepler = _tumStepler();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stepper örnek"),
      ),
      body: SingleChildScrollView(
        child: Stepper(
          steps: tumStepler,
          currentStep: _aktifStep,
          onStepTapped: (tiklanilanStep) {
            setState(() {
              _aktifStep = tiklanilanStep;
            });
          },
          onStepContinue: () {
            setState(() {
              if (_aktifStep < tumStepler.length - 1) {
                _aktifStep++;
              }
            });
          },
          onStepCancel: () {
            setState(() {
              if (_aktifStep > 0) {
                _aktifStep--;
              } else {
                _aktifStep = 0;
              }
            });
          },
        ),
      ),
    );
  }
}

_tumStepler() {
  var stepler = [
    Step(
      title: Text("Ad Soyad başlık"),
      subtitle: Text("Ad Soyad Altbaşlık"),
      state: StepState.indexed,
      isActive: true,
      content: TextFormField(
        decoration: InputDecoration(
          labelText: "Ad Soyad Giriniz",
          hintText: "Ad Soyad hint",
          border: OutlineInputBorder(),
        ),
        validator: (deger) {
          if (deger.length < 6) {
            return "En az 6 karekter giriniz";
          }
        },
      ),
    ),
    Step(
      title: Text("Email başlık"),
      subtitle: Text("Email Altbaşlık"),
      state: StepState.indexed,
      isActive: true,
      content: TextFormField(
        decoration: InputDecoration(
          labelText: "Email Giriniz",
          hintText: "Email hint",
          border: OutlineInputBorder(),
        ),
        validator: (deger) {
          if (deger.length < 6) {
            return "En az 6 karekter giriniz";
          }
        },
      ),
    ),
    Step(
      title: Text("Şifre başlık"),
      subtitle: Text("Şifre Altbaşlık"),
      state: StepState.indexed,
      isActive: true,
      content: TextFormField(
        decoration: InputDecoration(
          labelText: "Şifre Giriniz",
          hintText: "Şifre hint",
          border: OutlineInputBorder(),
        ),
        validator: (deger) {
          if (deger.length < 6) {
            return "En az 6 karekter giriniz";
          }
        },
      ),
    ),
  ];
  return stepler;
}
