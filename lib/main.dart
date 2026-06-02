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

class MyHomePage extends StatefulWidget {
    const MyHomePage({super.key});

    final List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0];

    @override
    State<MyHomePage> createState() => _MyHomePageState;
}

class _MyHomePageState extends State<MyHomePage> {
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
                    Flexible(
                        child:
                            GridView.count(
                                crossAxisCount: 10,
                                children: [
                                    Center(
                                        for (int i = 0; i < len(numbers); i++) {
                                            Text(numbers)
                                        }
                                    ),
                                ],
                            ),
                    ),
                ],
            ),
        );
    }
}