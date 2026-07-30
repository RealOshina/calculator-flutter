import 'calculation.dart';

class Input {
    static var calculation_list = [];

    static add_item(dynamic item) {
        if (item is String && item == '=') {
          Calculation.calculate_divider(calculation_list);
          calculation_list.clear();

          return;
        }
        print(item);
        print(calculation_list.length);
        
        calculation_list.add(item);
        return;
    }
}