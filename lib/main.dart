import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: Column(
                children: [
                    Flexible(
                        child: 
                            Container(
                                height: 80,
                                alignment: Alignment.topCenter,
                                color: Color.fromARGB(255, 211, 211, 211),
                                child: const Align(
                                    child:
                                        Text('Number', 
                                            textAlign: TextAlign.center, 
                                            style: TextStyle(fontSize: 24)),
                                ),
                            ),
                    ),
                ],
            ),
        );
    }
}