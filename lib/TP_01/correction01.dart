import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Message"),
        centerTitle: true,
      ),
      body: Column(children: [
        Container(
          decoration : BoxDecoration(gradient: LinearGradient(colors: [Color(0xFF3e60ac), Color(0xFF55a4e0)])),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Accueil", style: TextStyle(color: Colors.white)),
                Text("Nouveau", style: TextStyle(color: Colors.white)),
                Text("Rechercher", style: TextStyle(color: Colors.white))
              ],),
          ),
        )
      ],)
    );
  }
}
