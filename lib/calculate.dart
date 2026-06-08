List<double> number = [];
List<int> buffer = [];
List<String> operator = [];

double? result = 0;

void add_item(var number) {
    if (number is String) {
        number = double.parse(buffer.join('')) as List<double>;
        operator.add(number);
    }

    buffer.add(number);
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
    print(number);
    print(buffer);
    print(operator);

    print(result);
}