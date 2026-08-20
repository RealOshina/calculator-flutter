import 'package:flutter/foundation.dart';

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
    }

    static combined_list(List list) {
        List<dynamic> new_list = [];
        //List<int> current = [];
        List<String> current = [];
        
        for (var item in list) {
            if (item is int) {
                current.add(item);
            } else if (item == '.') {
                current.add(item);
            } else if (item is String) {
                if (current.isNotEmpty) {
                    new_list.add(int.parse(current.join('')));
                    current.clear();
                }

                new_list.add(item);
            }
        }

        if (current.isNotEmpty) {
            new_list.add(int.parse(current.join('')));
        }

        return new_list;
    }

    static calculate_add(double a, b) {
        return a + b;
    }

    static calculate_substract(double a, b) {
        return a - b;
    }

    static calculate_multiply(double a, b) {
        return a * b;
    }

    static calculate_divide(double a, b) {
        if (b == 0) {
            return result_str.value = 'Cannot divide numbers by 0';
        }

        return a / b;
    }
}