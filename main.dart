import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//All credits to https://www.youtube.com/watch?v=v5Tc_VXbpnk by Mitch Koko

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
          child: Container(
        width: 200,
        height: 200,
        child: const Icon(
          Icons.android,
          size: 100,
        ),
        decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: const BorderRadius.all(Radius.circular(100)),
            boxShadow: const [
              BoxShadow(
                color: Color.fromARGB(255, 138, 138, 138),
                offset: Offset(4.0, 4.0),
                blurRadius: 15.0,
                spreadRadius: 1.0,
              ),
              BoxShadow(
                color: Color(0xFFFFFFFF),
                offset: Offset(-4.0, -4.0),
                blurRadius: 15.0,
                spreadRadius: 1.0,
              ),
            ],
            gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromARGB(255, 240, 239, 239),
                  Color.fromARGB(255, 224, 224, 224),
                  Color.fromARGB(255, 189, 189, 189),
                  Color.fromARGB(255, 158, 158, 158),
                ],
                stops: [
                  0.1,
                  0.3,
                  0.8,
                  1
                ])),
      )),
    );
  }
}
