import 'package:flutter/material.dart';

 class FormandTextFormField extends StatefulWidget {
   @override
   _FormandTextFormFieldState createState() => _FormandTextFormFieldState();
 }
 
 class _FormandTextFormFieldState extends State<FormandTextFormField> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.save),),
       appBar: AppBar(
         title: Text("Form ve TextForm İşlemleri"),
       ),
       body: Text("data"),
       
     );
   }
 }