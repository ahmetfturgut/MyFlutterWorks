import 'package:flutter/material.dart';

import 'liste_detay.dart';

class listeSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Liste Sayfası",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: (){
               Navigator.push(context, MaterialPageRoute(builder: (contex)=>listDetay(index)));
              },
              child: Center(
                child: Card(
                  elevation: 4,
                  child:Text("eleman $index") ,
                  color: Colors.teal.shade400,
                )
                
                 
              ),
            );
          },
          itemCount: 60,
        ));
  }
}
