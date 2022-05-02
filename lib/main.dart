import 'package:flutter/material.dart';
import 'package:barandiaran/gridviewarticulos.dart';
import 'package:barandiaran/pagina2.dart';

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
      initialRoute: '/',
      routes: {
        // Cuando naveguemos hacia la ruta "/", crearemos el Widget FirstScreen
        '/': (context) => PaginaInicial(),
        // Cuando naveguemos hacia la ruta "/second", crearemos el Widget SecondScreen
        '/second': (context) => PaginaInicial2(),
      },
    );
  }
} //widget asin estado
