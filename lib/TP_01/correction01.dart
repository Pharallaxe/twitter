import 'package:flutter/material.dart';
import 'package:twitter/TP_01//app-theme.dart';
import 'package:twitter/TP_01//footer.dart';
import 'package:twitter/TP_01//header.dart';
import 'package:twitter/TP_01//message-card.dart';

import 'auth-page.dart';

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
        appBarTheme: AppTheme.appBarTheme,

      ),
      initialRoute: "/",
      routes: {
        "/" : (context) => AuthPage(),
        "/messages" : (context) => MyHomePage()
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Message"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          HeaderWidget(),
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    MessageCard(),
                  ],
                ),
              )),
          FooterWidget()
        ],
      ),
    );
  }
}