    import 'package:calculator/main.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widget_previews.dart';

class Calculation {
    static double result_double = 0;
    static ValueNotifier<String> result_str = ValueNotifier<String>(decimal_logic(result_double));

    static String decimal_logic(double item) {
       return item.toString().replaceAll(RegExp(r'\.0$'), '');
    }

    static void update_result(double item) {
      result_double = item;
      result_str.value = decimal_logic(item); 
    }

    static void calculate_divider(List<dynamic> list) {
        /*
        for (var item in list) {
            print('Item: $item');
        }
        */
        
        List new_list = combined_list(list);

        print('new_list: $new_list');
        
        num? a, b;
        String? operation;

        bool is_a = true;

        int? coordinate_a, coordinate_b, coordinate_operation;

        while (new_list.length != 1) {
            for (var i = 0; i < new_list.length; i++) {
                var item = new_list[i];

            int multiply_coordinate, division_coordinate; 

            if (!new_list.contains('*')) {
                multiply_coordinate = new_list.indexOf('*');
            } else {
                multiply_coordinate = -1;
            }

            if (!new_list.contains('/')) {
                division_coordinate = new_list.indexOf('/');
            } else {
                division_coordinate = -1;
            }

            if (multiply_coordinate > division_coordinate) {
                new_list.replaceRange(coordinate_a!, coordinate_b! + 1, [calculate_multiply(a!, b!)]);
            } else if (multiply_coordinate < division_coordinate) {
                new_list.replaceRange(coordinate_a!, coordinate_b! + 1, [calculate_divide(a!, b!)]);
            }
                //var result;

                if (item is int || item is double) {
                    if (is_a) {
                        a = item;
                        coordinate_a = i;

                        is_a = false;
                    } else {
                        b = item;
                        coordinate_b = i;

                        is_a = true;
                    }
                } else if (item is String) {
                    operation = item;
                    coordinate_operation = i;
                }

                if (a != null && b != null && operation != null) {
                    print(coordinate_a);
                    print(coordinate_b);
                    print(coordinate_operation);

                    if (operation == '+') {
                        //result = calculate_add(a, b);

                        new_list.replaceRange(coordinate_a!, coordinate_b! + 1, [calculate_add(a, b)]);
                    } else if (operation == '-') {
                        //result = calculate_add(a, b);

                        new_list.replaceRange(coordinate_a!, coordinate_b! + 1, [calculate_substract(a, b)]);
                    } else if (operation == '*') {
                        //result = calculate_add(a, b);

                        new_list.replaceRange(coordinate_a!, coordinate_b! + 1, [calculate_multiply(a, b)]);
                    } else if (operation == '/') {
                        //result = calculate_add(a, b);

                        new_list.replaceRange(coordinate_a!, coordinate_b! + 1, [calculate_divide(a, b)]);
                    }

                    a = null;
                    b = null;
                    operation = null;

                    break;
                }
            }

            print('new_list output: $new_list');
        }

        //result_double = new_list[0].toDouble();
        update_result(new_list[0].toDouble());
    }

    static combined_list(List list) {
        List<dynamic> new_list = [];
        //List<int> current = [];
        List<dynamic> current = [];
        
        for (var i = 0; i < list.length; i++) {
            var item = list[i];

            if (item is int) {
                current.add(item);
            } else if (item == '.') {
                current.add(item);
            } else if (item == '-') {
                bool is_negative = false;

                if (i == 0 || list[i - 1] == '+' || list[i - 1] == '-') {
                    is_negative = true;
                }

                if (is_negative) {
                    current.add(item);
                } else {
                    if (current.isNotEmpty) {
                        if (current.contains('.')) {
                            new_list.add(double.parse(current.join('')));
                        } else {
                            new_list.add(int.parse(current.join('')));
                        }

                        current.clear();
                    }

                    new_list.add(item);
                }
            } else if (item == '%') {
                double percentage = (double.parse(current.join(''))) / 100;

                new_list.add(percentage);
                current.clear();
            } else if (item is String) {
                if (current.isNotEmpty) {
                    if (current.contains('.')) {
                        new_list.add(double.parse(current.join('')));
                    } else {
                        new_list.add(int.parse(current.join('')));
                    }

                    current.clear();
                }

                new_list.add(item);
            }
        }

        if (current.isNotEmpty) {
            if (current.contains('.')) {
                new_list.add(double.parse(current.join('')));
            } else {
                new_list.add(int.parse(current.join('')));
            }
        }

        return new_list;
    }

    static calculate_add(num a, num b) {
        return a + b;
    }

    static calculate_substract(num a, num b) {
        return a - b;
    }

    static calculate_multiply(num a, num b) {
        return a * b;
    }

    static calculate_divide(num a, num b) {
        if (b == 0) {
            return result_str.value = 'Cannot divide numbers by 0';
        }

        return a / b;
    }
}