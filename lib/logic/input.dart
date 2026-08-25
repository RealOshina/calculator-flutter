import 'package:calculator/main.dart';
import 'package:flutter/material.dart';

import 'calculation.dart';

class Input {
    static var calculation_list = [];
    static final ValueNotifier<String> calculation_list_str = ValueNotifier<String>(calculation_list.toString());

    static add_item(dynamic item) {
        if (item is String && item == '=') {
            Calculation.calculate_divider(calculation_list);
            calculation_list.clear();

            return;
        }

        if (item is String && item == 'delete') {
          if (calculation_list.isEmpty) {
          } else {
            calculation_list.removeAt(calculation_list.length - 1);
            calculation_list_str.value = calculation_list.toString();
          }

          return;
        }

        if (item is String && item == 'AC') {
          if (calculation_list.isEmpty) {
          } else {
            calculation_list.clear();
            calculation_list_str.value = calculation_list.toString();
          }

          Calculation.update_result(0);

          return;
        }

        print(item);
        //print(calculation_list.length);
        
        calculation_list.add(item);

        calculation_list_str.value = calculation_list.toString();

        return;
    }
}