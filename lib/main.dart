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

    @override
    State<MyHomePage> createState() => _MyHomePageState();
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
                                padding: const EdgeInsets.symmetric(vertical: 50),
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
                    Expanded(
                        child:
                            Container(
                                alignment: Alignment.topCenter,
                                //color: Color.fromARGB(255, 211, 211, 211),
                                color: Colors.yellow,
                                padding: const EdgeInsets.symmetric(vertical: 20),
                                child: Align(
                                        child: GridView.count(
                                            crossAxisCount: 3,
                                            shrinkWrap: true,
                                            physics: NeverScrollableScrollPhysics(),

                                            children: [
                                                    ElevatedButton(
                                                        style: ElevatedButton.styleFrom(
                                                            backgroundColor: Colors.grey,
                                                            foregroundColor: Colors.black,
                                                            elevation: 5,
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius: BorderRadius.circular(12),
                                                            ),
                                                            minimumSize: const Size(50, 50),
                                                            maximumSize: const Size(80, 80),
                                                        ),

                                                        onPressed:() {
                                                            print('1');
                                                        },

                                                        child: const Text('1')
                                                    ),
                                                    ElevatedButton(
                                                        style: ElevatedButton.styleFrom(
                                                            backgroundColor: Colors.orange,
                                                            foregroundColor: Colors.black,
                                                            //elevation: 5,
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius: BorderRadius.circular(12),
                                                            ),
                                                        ),

                                                        onPressed:() {
                                                            print('2');
                                                        },

                                                        child: const Text('2')
                                                    ),
                                            ],
                                        ),
                                    ),
                                ),
                            ),
                ],
            ),
        );
    }
}