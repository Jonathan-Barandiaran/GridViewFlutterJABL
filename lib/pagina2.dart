import 'package:flutter/material.dart';

class PaginaInicial2 extends StatefulWidget {
  const PaginaInicial2({Key? key}) : super(key: key);
  @override
  _PaginaInicial2 createState() => _PaginaInicial2();
} //widget con estado siempre se tendra myhomepage el keys

class _PaginaInicial2 extends State<PaginaInicial2> {
  List<String> images = [
    "assets/images/E1.jpg",
    "assets/images/E2.jpg",
  ]; //Lista de imagenes
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Inicio"),
          centerTitle: true,
          backgroundColor: Colors.indigo,
          automaticallyImplyLeading: true,
          actions: [
            IconButton(
              icon: const Icon(Icons.add_box_rounded),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.add_business),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {
                // Navega a la segunda pantalla usando una ruta con nombre
                Navigator.pushNamed(context, '/');
              },
            ),
          ],
          elevation: 8,
          shadowColor: Colors.blue,
        ),
        body: GridView.custom(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          childrenDelegate: SliverChildBuilderDelegate(
            (BuildContext, index) {
              return Image.asset(
                images[index],
                fit: BoxFit.cover,
              );
            },
            childCount: 8,
          ),
          padding: const EdgeInsets.all(10),
          shrinkWrap: true,
        ));
  }
}
