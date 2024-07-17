import 'package:flutter/material.dart';
import 'package:myapp/screen/about.dart';
import 'package:myapp/screen/home.dart';
import 'package:myapp/screen/kartun.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "home": (context) => const Home(),
        '/about': (context) => const About(),
        '/kartun': (context) => kartun(),
      },
      initialRoute: "home",
      home: Scaffold(
        appBar: AppBar(
          title: Text('Kartun Terbaik'),
          centerTitle: true,
          backgroundColor: Color.fromARGB(205, 234, 47, 196),
        ),
        body: Home(),
      ),
    );
  }
}
