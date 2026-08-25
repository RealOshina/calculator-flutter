import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';

import 'ui/result.dart';
import 'ui/buttons.dart';

import 'logic/input.dart';
import 'logic/calculation.dart';

String calculation_text = '';

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

    Input.calculation_list.clear();
    Calculation.update_result(0);
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
    /*
    @override
    void init_state() {
        super.initState();
        calculation_text = Input.calculation_list_str;
    }
    
    void display_result() {
      setState(() {
        calculation_text = Input.calculation_list_str;
      });
    }
    */
    
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: Colors.black87,
            body: Column(
                children: [
                    Result.calculation_box(),

                    const SizedBox(height: 1),

                    Result.result_box(),
                    
                    const SizedBox(height: 1),

                    Buttons.buttons_grid(),
                ]
            )
        );
    }
}