import 'package:flutter/material.dart';
import 'package:barandiaran/gridviewarticulos.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Ejemplo GridView', //Pestaña de web
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ), //Tema color global
        home: const MyHomePage());
  }
} //widget asin estado
