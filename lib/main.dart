import 'package:flutter/material.dart';
import 'package:barandiaran/gridviewarticulos.dart';

void main() {
  runApp(Farmacia());
}

class Farmacia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Ejemplo GridView', //Pestaña de web
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: {
          // Cuando naveguemos hacia la ruta "/", crearemos el Widget FirstScreen
          // Cuando naveguemos hacia la ruta "/second", crearemos el Widget SecondScreen
          '/second': (context) => Paginainicial2(),
        }, //Tema color global
        home: const PaginaInicial());
  }
} //widget asin estado
