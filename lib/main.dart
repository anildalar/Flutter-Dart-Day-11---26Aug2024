import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //1. Property

  //2. Constructor

  //3.method
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('Header')),
        body: Container(
          child: DottedBorder(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                DottedBorder(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Text('A')])),
                DottedBorder(child: Column(children: [Text('B')])),
                DottedBorder(child: Column(children: [Text('C')]))
              ])),
        ),
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home1'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home2'),
        ]),
      ),
    );
  }
}
