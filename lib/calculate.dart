import 'package:flutter/cupertino.dart';

List<int> number_list = [];
List<int> buffer_list = [];
List<String> operator_list = [];

double result = 0;
String result_str = 'Number';

void add_item(var a) {
    int value;

    //print(a);

    if (a is int) {
        buffer_list.add(a);
    }

    if (a is String) {
        if (a == '=') {
            if (buffer_list.isEmpty) {result_out();}

            value = int.parse(buffer_list.join());
            print(value);

            number_list.add(value);

            result_out();

            buffer_list.clear();
        } else {
            operator_list.add(a);
        }

    }

    print(buffer_list);
}

int addition_number(int a, int b) {
    return a + b;
}

int substract_number(int a, int b) {
    return a - b;
}

int multiply_number(int a, int b) {
    return a * b;
}

double divide_number(int a, int b) {
    return a / b;
}

void result_out() {
    print(number_list);
    print(buffer_list);
    print(operator_list);

    print(result);
    
    result_str = result.toString();

    print(result_str);
}