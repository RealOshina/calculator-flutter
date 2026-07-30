class Calculation {
    static double result_double = 0;
    static String result_str = decimal_logic();

    static String decimal_logic() {
        return result_double.toString().replaceAll(RegExp(r'\.0$'), '');
    }

    static void calculate_divider(List<dynamic> list) {
        /*
        for (var item in list) {
            print('Item: $item');
        }
        */

        String operation = '';
        
        double a = 0;
        double b = 0;

        List<double> buffer_answer = [];

        int counter = 0;

        dynamic operations = {
            '+': calculate_add(a, b),
            '-': calculate_substract(a, b),
            '*': calculate_multiply(a, b),
            '/': calculate_divide(a, b)     
        };
      
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
        double c;

        try {
            a / b;
        } on UnsupportedError {
            result_str = 'Cannot divide number with 0';
        }

        return;
    }
}