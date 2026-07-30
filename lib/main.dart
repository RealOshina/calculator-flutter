import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';

void main() {
    WidgetsFlutterBinding.ensureInitialized();

    WindowOptions windowOptions = const WindowOptions(
        size: Size(400, 650),
    );
    
    windowManager.waitUntilReadyToShow(windowOptions, () async {
        await windowManager.setMinimumSize(const Size(400, 650));
        
        await windowManager.show();
        await windowManager.focus();
    });

    runApp(const MyApp());
}

class MyApp extends StatelessWidget {
    const MyApp({super.key});

    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'calculator',
            home: const HomePage(),
        );
    }
}

class HomePage extends StatefulWidget {
    const HomePage({super.key});

    @override
    HomePageState createState() => HomePageState();
}


class HomePageState extends State<HomePage> {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: Colors.black87,
            body: Column(
                children: [
                    Container(
                        margin: const EdgeInsets.only(top: 40, left: 20, right: 20),
                        alignment: Alignment.centerRight,
                        width: double.infinity,
                        height: 32,
                        //color: Colors.amber,
                        child: FittedBox(
                            fit: BoxFit.scaleDown,
                            alignment: Alignment.centerRight,
                            child: Align(
                                child: Text(
                                    'Greeting!',
                                    textAlign: TextAlign.right,
                                    maxLines: 1,
                                    style: TextStyle(
                                        fontSize: 28,
                                        color: Colors.grey,    
                                    )
                                )
                            )
                        )
                    ),

                    const SizedBox(height: 1),
                    
                    Container(
                        margin: const EdgeInsets.only(left: 20, right: 20),
                        alignment: Alignment.centerRight,
                        width: double.infinity,
                        height: 72,
                        //color: Colors.amber,
                        child: FittedBox(
                            fit: BoxFit.scaleDown,
                            alignment: Alignment.centerRight,
                            child: Align(
                                child: Text(
                                    'Hello World!',
                                    textAlign: TextAlign.right,
                                    maxLines: 1,
                                    style: TextStyle(
                                        fontSize: 64,
                                        color: Colors.white,
                                    )
                                )
                            )
                        )
                    ),
                    
                    /*

                    Align(
                        alignment: Alignment.topRight,
                        child: Text(
                            '1',
                            textAlign: TextAlign.right,
                            
                            maxLines: 1,
                            style: TextStyle(
                                fontSize: 42,
                                color: Colors.white,
                            )
                        ),
                    ),
                    */
                    
                    const SizedBox(height: 1),

                    /*
                    Expanded(
                        child: Container(
                            margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(8)
                            ),
                            child: GridView.count(
                                primary: false,
                                padding: const EdgeInsets.all(20),
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 10,
                                crossAxisCount: 4,
                                children: <Widget>[
                                    ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: const Color.fromARGB(255, 112, 112, 112),
                                            foregroundColor: Colors.white,
                                            minimumSize: const Size(100, 100),
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(12),
                                            )
                                        ),
                                        onPressed: () {
                                            print('1');
                                        },
                                        child: Text('1'),
                                    )
                                ],
                            ),
                         ),
                    )
                    */
                    Expanded(
                        child: GridView.count(
                                primary: false,
                                padding: const EdgeInsets.all(20),
                                crossAxisSpacing: 8,
                                mainAxisSpacing: 8,
                                crossAxisCount: 4,
                                children: <Widget>[
                                    //Row 1

                                    ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: const Color.fromARGB(255, 96, 96, 96),
                                            foregroundColor: const Color.fromARGB(255, 120, 119, 119),
                                            minimumSize: const Size(100, 100),
                                            shape: CircleBorder(),
                                        ),
                                        onPressed: () {
                                            print('delete');
                                        },
                                        child: Icon(Icons.backspace_rounded, size: 24, color: Colors.white)
                                    ),

                                    ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: const Color.fromARGB(255, 96, 96, 96),
                                            foregroundColor: Colors.white,
                                            minimumSize: const Size(100, 100),
                                            shape: CircleBorder(),
                                        ),
                                        onPressed: () {
                                            print('All Clear');
                                        },
                                        child: Text(
                                            'AC',
                                            style: TextStyle(
                                                fontSize: 24
                                            ),
                                        ),
                                    ),

                                    ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: const Color.fromARGB(255, 96, 96, 96),
                                            foregroundColor: Colors.white,
                                            minimumSize: const Size(100, 100),
                                            shape: CircleBorder(),
                                        ),
                                        onPressed: () {
                                            print('3');
                                        },
                                        child: Text(
                                            '%',
                                            style: TextStyle(
                                                fontSize: 24
                                            ),
                                        ),
                                    ),

                                    ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.orange,
                                            foregroundColor: Colors.white,
                                            minimumSize: const Size(100, 100),
                                            shape: CircleBorder(),
                                        ),
                                        onPressed: () {
                                            print('÷');
                                        },
                                        child: Text(
                                            '÷',
                                            style: TextStyle(
                                                fontSize: 32
                                            ),
                                        ),
                                    ),

                                    //Row 2

                                    ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: const Color.fromARGB(255, 54, 54, 54),
                                            foregroundColor: Colors.white,
                                            minimumSize: const Size(100, 100),
                                            shape: CircleBorder(),
                                        ),
                                        onPressed: () {
                                            print('7');
                                        },
                                        child: Text(
                                            '7',
                                            style: TextStyle(
                                                fontSize: 24
                                            ),
                                        ),
                                    ),

                                    ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: const Color.fromARGB(255, 54, 54, 54),
                                            foregroundColor: Colors.white,
                                            minimumSize: const Size(100, 100),
                                            shape: CircleBorder(),
                                        ),
                                        onPressed: () {
                                            print('8');
                                        },
                                        child: Text(
                                            '8',
                                            style: TextStyle(
                                                fontSize: 24
                                            ),
                                        ),
                                    ),

                                    ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: const Color.fromARGB(255, 54, 54, 54),
                                            foregroundColor: Colors.white,
                                            minimumSize: const Size(100, 100),
                                            shape: CircleBorder(),
                                        ),
                                        onPressed: () {
                                            print('X');
                                        },
                                        child: Text(
                                            '9',
                                            style: TextStyle(
                                                fontSize: 24
                                            ),
                                        ),
                                    ),

                                    ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.orange,
                                            foregroundColor: Colors.white,
                                            minimumSize: const Size(100, 100),
                                            shape: CircleBorder(),
                                        ),
                                        onPressed: () {
                                            print('X');
                                        },
                                        child: Text(
                                            'X',
                                            style: TextStyle(
                                                fontSize: 22
                                            ),
                                        ),
                                    ),


                                    //Row 3

                                    ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: const Color.fromARGB(255, 54, 54, 54),
                                            foregroundColor: Colors.white,
                                            minimumSize: const Size(100, 100),
                                            shape: CircleBorder(),
                                        ),
                                        onPressed: () {
                                            print('4');
                                        },
                                        child: Text(
                                            '4',
                                            style: TextStyle(
                                                fontSize: 24
                                            ),
                                        ),
                                    ),

                                    ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: const Color.fromARGB(255, 54, 54, 54),
                                            foregroundColor: Colors.white,
                                            minimumSize: const Size(100, 100),
                                            shape: CircleBorder(),
                                        ),
                                        onPressed: () {
                                            print('5');
                                        },
                                        child: Text(
                                            '5',
                                            style: TextStyle(
                                                fontSize: 24
                                            ),
                                        ),
                                    ),

                                    ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: const Color.fromARGB(255, 54, 54, 54),
                                            foregroundColor: Colors.white,
                                            minimumSize: const Size(100, 100),
                                            shape: CircleBorder(),
                                        ),
                                        onPressed: () {
                                            print('6');
                                        },
                                        child: Text(
                                            '6',
                                            style: TextStyle(
                                                fontSize: 24
                                            ),
                                        ),
                                    ),

                                    ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.orange,
                                            foregroundColor: Colors.white,
                                            minimumSize: const Size(100, 100),
                                            shape: CircleBorder(),
                                        ),
                                        onPressed: () {
                                            print('-');
                                        },
                                        child: Text(
                                            '-',
                                            style: TextStyle(
                                                fontSize: 32
                                            ),
                                        ),
                                    ),

                                   //Row 4

                                    ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: const Color.fromARGB(255, 54, 54, 54),
                                            foregroundColor: Colors.white,
                                            minimumSize: const Size(100, 100),
                                            shape: CircleBorder(),
                                        ),
                                        onPressed: () {
                                            print('1');
                                        },
                                        child: Text(
                                            '1',
                                            style: TextStyle(
                                                fontSize: 24
                                            ),
                                        ),
                                    ),

                                    ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: const Color.fromARGB(255, 54, 54, 54),
                                            foregroundColor: Colors.white,
                                            minimumSize: const Size(100, 100),
                                            shape: CircleBorder(),
                                        ),
                                        onPressed: () {
                                            print('2');
                                        },
                                        child: Text(
                                            '2',
                                            style: TextStyle(
                                                fontSize: 24
                                            ),
                                        ),
                                    ),

                                    ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: const Color.fromARGB(255, 54, 54, 54),
                                            foregroundColor: Colors.white,
                                            minimumSize: const Size(100, 100),
                                            shape: CircleBorder(),
                                        ),
                                        onPressed: () {
                                            print('3');
                                        },
                                        child: Text(
                                            '3',
                                            style: TextStyle(
                                                fontSize: 24
                                            ),
                                        ),
                                    ),

                                    ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.orange,
                                            foregroundColor: Colors.white,
                                            minimumSize: const Size(100, 100),
                                            shape: CircleBorder(),
                                        ),
                                        onPressed: () {
                                            print('+');
                                        },
                                        child: Text(
                                            '+',
                                            style: TextStyle(
                                                fontSize: 30
                                            ),
                                        ),
                                    ),

                                    //Row 5

                                    ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: const Color.fromARGB(255, 54, 54, 54),
                                            foregroundColor: Colors.white,
                                            minimumSize: const Size(100, 100),
                                            shape: CircleBorder(),
                                        ),
                                        onPressed: () {
                                            print('±');
                                        },
                                        child: Text(
                                            '±',
                                            style: TextStyle(
                                                fontSize: 24
                                            ),
                                        ),
                                    ),

                                    ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: const Color.fromARGB(255, 54, 54, 54),
                                            foregroundColor: Colors.white,
                                            minimumSize: const Size(100, 100),
                                            shape: CircleBorder(),
                                        ),
                                        onPressed: () {
                                            print('0');
                                        },
                                        child: Text(
                                            '0',
                                            style: TextStyle(
                                                fontSize: 24
                                            ),
                                        ),
                                    ),

                                    ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: const Color.fromARGB(255, 54, 54, 54),
                                            foregroundColor: Colors.white,
                                            minimumSize: const Size(100, 100),
                                            shape: CircleBorder(),
                                        ),
                                        onPressed: () {
                                            print('.');
                                        },
                                        child: Text(
                                            '.',
                                            style: TextStyle(
                                                fontSize: 24
                                            ),
                                        ),
                                    ),

                                    ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.orange,
                                            foregroundColor: Colors.white,
                                            minimumSize: const Size(100, 100),
                                            shape: CircleBorder(),
                                        ),
                                        onPressed: () {
                                            print('=');
                                        },
                                        child: Text(
                                            '=',
                                            style: TextStyle(
                                                fontSize: 30
                                            ),
                                        ),
                                    ),
                                ],
                            ),
                         ),
                ],
            ),
        );
    }
}