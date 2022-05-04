import 'dart:async';

import 'package:dna_prefixes/suffix_array.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dna prefixes',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
@override
  void initState() {
    // TODO: implement initState
  Timer(Duration(seconds: 3), () {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
      return ReadText();
    }));
  });

}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        height: double.infinity,
        width: double.infinity,
        child: Image.asset('images/1200px-DNA_methylation.jpg',fit: BoxFit.fill),
      ),
    );
  }
}
