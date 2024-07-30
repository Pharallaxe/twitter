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
        body: Column(
          children: [HeaderWidget(), BodyWidget(), FooterWidget()],
        ));
  }
}

class HeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient:
              LinearGradient(colors: [Color(0xFF3e60ac), Color(0xFF55a4e0)])),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomTopText("Accueil"),
            CustomTopText("Nouveau"),
            CustomTopText("Rechercher")
          ],
        ),
      ),
    );
  }
}

class FooterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomBottomText("Fil"),
            CustomBottomText("Notification"),
            CustomBottomText("Message"),
            CustomBottomText("Moi")
          ],
        ),
      ),
    );
  }
}

class BodyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(children: [ContenuWidget(), ContenuWidget()]),
    );
  }
}

class CustomTopText extends StatelessWidget {
  final String text;

  CustomTopText(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
            fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.white));
  }
}

class CustomBottomText extends StatelessWidget {
  final String text;

  CustomBottomText(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
            fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.black));
  }
}

class ContenuWidget extends StatelessWidget {
  BoxDecoration ombre() {
    return BoxDecoration(
      color: Colors.grey[200],
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.3),
          offset: Offset(5, 5),
          blurRadius: 5,
        ),
      ],
    );
  }

  Padding image() {
    // Remplacez l'URL par celle de votre image
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Image.network(
        'https://img-cdn.pixlr.com/image-generator/history/65bb506dcb310754719cf81f/ede935de-1138-4f66-8ed7-44bd16efc709/medium.webp',
        // URL de l'image
        width: 100, // Largeur de l'image
        height: 100, // Hauteur de l'image

        fit: BoxFit.cover, // Ajustement de l'image
      ),
    );
  }

  Container actions() {
    return Container(
      height: 50,
      decoration : BoxDecoration(
        color: Colors.blueAccent,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10), // Arrondi en bas à gauche
          bottomRight: Radius.circular(10), // Arrondi en bas à droite
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        // Espacement entre les boutons
        children: [
          Text("Répondre", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)),
          Text("Retweet", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)),
          Text("Favoris", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: ombre(),
        child: Column(
          children: [
            Row(
              children: [
                image(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // Alignement à gauche
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Shiba@gmail.com"),
                        SizedBox(height: 40),
                        Text("56s"),
                      ],
                    ),
                    SizedBox(height: 16),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed",
                      style: TextStyle(fontSize: 12), // Style du texte
                    ),
                  ],
                ),
              ],
            ),
            actions()
          ],
        ),
      ),
    );
  }
}
