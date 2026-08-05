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

        List<int> z = [];

        int i = 0;
        int j = 0;

        if (!list.contains(int) || !list.contains(String)) {return;}

        while (list.contains(int)) {
            if (list[i] is int) {
                if (z.isEmpty) {
                    j = i;

                    continue;
                }

                z.add(list[i]);
            } else if (list[i] is String) {
                if (z.isEmpty) {
                    j = i++;

                    continue;
                }
                
                int.tryParse(z.join(''));
                list.replaceRange(j, i,[z[0].replaceAll(RegExp(r'\[\]'), '')]);
            }

            i++;
        }

        while (list.contains('.')) {    
            z.add(list.indexOf('.', i));

            i++;
        }

        if (z.isNotEmpty) {
            i = 0;

            while (z.isNotEmpty) {
                double a = z[i] as double;
                double b = z[i] as double;

                i++;
            }
        }

        while (list.length < 1) {
            if (list.contains('*') || list.contains('/')) {
                
            } else if (list.contains('+') || list.contains('-')) {

            }

            i++;
        }
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