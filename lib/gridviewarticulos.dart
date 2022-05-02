import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
} //widget con estado siempre se tendra myhomepage el keys

class _MyHomePageState extends State<MyHomePage> {
  List<String> images = [
    "assets/images/E1.jpg",
    "assets/images/E2.jpg",
    "assets/images/E3.jpg",
    "assets/images/E4.jpg",
    "assets/images/E5.jpg",
    "assets/images/E3.jpg",
    "assets/images/E1.jpg",
    "assets/images/E4.jpg",
  ]; //Lista de imagenes
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("My App FARMACIA"),
          centerTitle: true,
          backgroundColor: Colors.indigo,
          automaticallyImplyLeading: true,
          actions: [
            IconButton(
              icon: const Icon(Icons.add_box_rounded),
              onPressed: () {
                print("Soy lupita");
              },
            ),
            IconButton(
              icon: const Icon(Icons.add_business),
              onPressed: () {
                print("Soy lupita");
              },
            ),
            IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {},
            )
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
