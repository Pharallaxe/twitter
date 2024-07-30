import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("Message"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
            color: Colors.blue,
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                customTopText("Nouveau"),
                customTopText("Accueil"),
                customTopText("Rechercher"),
              ],
              )
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            customBottomText("Fil"),
            customBottomText("Notification"),
            customBottomText("Message"),
            customBottomText("Moi"),
          ],
        ),
      ),
    );
  }
}

// Fonction qui retourne un widget Text stylisé
Widget customBottomText(String text) {
  return Text(
    text,
    style: TextStyle(
      fontSize: 16.0,
      color: Colors.black,
      fontWeight: FontWeight.bold,
    ),
  );
}

Widget customTopText(String text) {
  return Text(
    text,
    style: TextStyle(
      fontSize: 18.0,
      color: Colors.white,
      fontWeight: FontWeight.bold,
    ),
  );
}
