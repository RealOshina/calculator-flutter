import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:window_manager/window_manager.dart';

void main() async {
    WidgetsFlutterBinding.ensureInitialized();

    await windowManager.ensureInitialized();

    if (Platform.isWindows || Platform.isMacOS || Platform.isLinux) {
        const WindowOptions windowOptions = WindowOptions(
            size: Size(420, 600),
            center: true,
        );

        //await windowManager.setSize(const Size(420, 600));
        //await windowManager.setResizable(false);

        //SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

        windowManager.waitUntilReadyToShow(windowOptions, () async {
            await windowManager.show();
            await windowManager.focus();
        });
    }

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
                                height: 100,
                                alignment: Alignment.topCenter,
                                color: Color.fromARGB(255, 211, 211, 211),
                                child: const Align(
                                    child:
                                        Text('Number', 
                                            textAlign: TextAlign.center, 
                                            style: TextStyle(fontSize: 42)),
                                ),
                            ),
                    ),
                    Flexible(
                        child:
                            Container(
                                alignment: Alignment.center,
                                //color: Color.fromARGB(255, 211, 211, 211),
                                color: Colors.yellow,
                                padding: const EdgeInsets.all(25),

                                child: Align(
                                        child: GridView.count(
                                            crossAxisCount: 4,
                                            mainAxisSpacing: 10,
                                            crossAxisSpacing: 10,
                                            childAspectRatio: 1,

                                            shrinkWrap: true,
                                            physics: NeverScrollableScrollPhysics(),

                                            children: [
                                                    // Row 1
                                                    ElevatedButton(
                                                        style: ElevatedButton.styleFrom(
                                                            backgroundColor: Colors.grey,
                                                            foregroundColor: Colors.black,
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius: BorderRadius.circular(12),
                                                            ),
                                                        ),

                                                        onPressed:() {
                                                            print('1');
                                                        },

                                                        child: const Text('1'),
                                                    ),
                                                    ElevatedButton(
                                                        style: ElevatedButton.styleFrom(
                                                            backgroundColor: Colors.orange,
                                                            foregroundColor: Colors.black,
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius: BorderRadius.circular(12),
                                                            ),
                                                        ),

                                                        onPressed:() {
                                                            print('2');
                                                        },

                                                        child: const Text('2')
                                                    ),
                                                    ElevatedButton(
                                                        style: ElevatedButton.styleFrom(
                                                            backgroundColor: Colors.orange,
                                                            foregroundColor: Colors.black,
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius: BorderRadius.circular(12),
                                                            ),
                                                        ),

                                                        onPressed:() {
                                                            print('3');
                                                        },

                                                        child: const Text('3')
                                                    ),
                                                    ElevatedButton(
                                                        style: ElevatedButton.styleFrom(
                                                            backgroundColor: Colors.orange,
                                                            foregroundColor: Colors.black,
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius: BorderRadius.circular(12),
                                                            ),
                                                        ),

                                                        onPressed:() {
                                                            print('+');
                                                        },

                                                        child: const Text('+')
                                                    ),

                                                    // Row 2
                                                    ElevatedButton(
                                                        style: ElevatedButton.styleFrom(
                                                            backgroundColor: Colors.grey,
                                                            foregroundColor: Colors.black,
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius: BorderRadius.circular(12),
                                                            ),
                                                        ),

                                                        onPressed:() {
                                                            print('4');
                                                        },

                                                        child: const Text('4'),
                                                    ),
                                                    ElevatedButton(
                                                        style: ElevatedButton.styleFrom(
                                                            backgroundColor: Colors.orange,
                                                            foregroundColor: Colors.black,
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius: BorderRadius.circular(12),
                                                            ),
                                                        ),

                                                        onPressed:() {
                                                            print('5');
                                                        },

                                                        child: const Text('5')
                                                    ),
                                                    ElevatedButton(
                                                        style: ElevatedButton.styleFrom(
                                                            backgroundColor: Colors.orange,
                                                            foregroundColor: Colors.black,
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius: BorderRadius.circular(12),
                                                            ),
                                                        ),

                                                        onPressed:() {
                                                            print('6');
                                                        },

                                                        child: const Text('6')
                                                    ),
                                                    ElevatedButton(
                                                        style: ElevatedButton.styleFrom(
                                                            backgroundColor: Colors.orange,
                                                            foregroundColor: Colors.black,
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius: BorderRadius.circular(12),
                                                            ),
                                                        ),

                                                        onPressed:() {
                                                            print('-');
                                                        },

                                                        child: const Text('-')
                                                    ),

                                                    // Row 3
                                                    ElevatedButton(
                                                        style: ElevatedButton.styleFrom(
                                                            backgroundColor: Colors.grey,
                                                            foregroundColor: Colors.black,
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius: BorderRadius.circular(12),
                                                            ),
                                                        ),

                                                        onPressed:() {
                                                            print('7');
                                                        },

                                                        child: const Text('7'),
                                                    ),
                                                    ElevatedButton(
                                                        style: ElevatedButton.styleFrom(
                                                            backgroundColor: Colors.orange,
                                                            foregroundColor: Colors.black,
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius: BorderRadius.circular(12),
                                                            ),
                                                        ),

                                                        onPressed:() {
                                                            print('8');
                                                        },

                                                        child: const Text('8')
                                                    ),
                                                    ElevatedButton(
                                                        style: ElevatedButton.styleFrom(
                                                            backgroundColor: Colors.orange,
                                                            foregroundColor: Colors.black,
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius: BorderRadius.circular(12),
                                                            ),
                                                        ),

                                                        onPressed:() {
                                                            print('9');
                                                        },

                                                        child: const Text('9')
                                                    ),
                                                    ElevatedButton(
                                                        style: ElevatedButton.styleFrom(
                                                            backgroundColor: Colors.orange,
                                                            foregroundColor: Colors.black,
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius: BorderRadius.circular(12),
                                                            ),
                                                        ),

                                                        onPressed:() {
                                                            print('*');
                                                        },

                                                        child: const Text('*')
                                                    ),

                                                    // Row 4
                                                    ElevatedButton(
                                                        style: ElevatedButton.styleFrom(
                                                            backgroundColor: Colors.grey,
                                                            foregroundColor: Colors.black,
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius: BorderRadius.circular(12),
                                                            ),
                                                        ),

                                                        onPressed:() {
                                                            print('C');
                                                        },

                                                        child: const Text('C'),
                                                    ),
                                                    ElevatedButton(
                                                        style: ElevatedButton.styleFrom(
                                                            backgroundColor: Colors.orange,
                                                            foregroundColor: Colors.black,
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius: BorderRadius.circular(12),
                                                            ),
                                                        ),

                                                        onPressed:() {
                                                            print('0');
                                                        },

                                                        child: const Text('0')
                                                    ),
                                                    ElevatedButton(
                                                        style: ElevatedButton.styleFrom(
                                                            backgroundColor: Colors.orange,
                                                            foregroundColor: Colors.black,
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius: BorderRadius.circular(12),
                                                            ),
                                                        ),

                                                        onPressed:() {
                                                            print('=');
                                                        },

                                                        child: const Text('=')
                                                    ),
                                                    ElevatedButton(
                                                        style: ElevatedButton.styleFrom(
                                                            backgroundColor: Colors.orange,
                                                            foregroundColor: Colors.black,
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius: BorderRadius.circular(12),
                                                            ),
                                                        ),

                                                        onPressed:() {
                                                            print('/');
                                                        },

                                                        child: const Text('/')
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