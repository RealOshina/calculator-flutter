import 'package:calculator/logic/input.dart';
import 'package:flutter/material.dart';

import '../main.dart';

import '../logic/calculation.dart';

class Buttons {
    static buttons_grid() {
      return Expanded(
          child: GridView.count(
                  primary: false,
                  padding: const EdgeInsets.all(20),
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  crossAxisCount: 4,
                  children: [
                      //Row 1

                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color.fromARGB(255, 96, 96, 96),
                              foregroundColor: const Color.fromARGB(255, 120, 119, 119),
                              minimumSize: const Size(100, 100),
                              shape: CircleBorder(),
                          ),
                          onPressed: () {
                              Input.add_item('delete');
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
                              Input.add_item('AC');
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
                              Input.add_item('%');
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
                              Input.add_item('/');
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
                              Input.add_item(7);
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
                              Input.add_item(8);
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
                              Input.add_item(9);
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
                              Input.add_item('*');
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
                              Input.add_item(4);
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
                              Input.add_item(5);
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
                              Input.add_item(6);
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
                              Input.add_item('-');
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
                              Input.add_item(1);
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
                              Input.add_item(2);
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
                              Input.add_item(3);
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
                              Input.add_item('+');
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
                              Input.add_item('±');
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
                              Input.add_item(0);
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
                              Input.add_item('.');
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
                              Input.add_item('=');
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
        );
    }
}