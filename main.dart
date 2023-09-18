import 'dart:io';

// void main() {
//   List<String> tasks = [];

//   while (true) {
//     print("Введите задачу (или 'q' для завершения): ");
//     String input = stdin.readLineSync()!;

//     if (input.toLowerCase() == 'q') {
//       break;
//     }

//     tasks.add(input);
//   }

//   print("Список задач:");
//   for (int i = 0; i < tasks.length; i++) {
//     print("${i + 1}. ${tasks[i]}");
//   }
// }

void main() {
  print("Калькулятор индекса массы тела (BMI)");
  print("Введите свой вес (кг): ");
  double weight = double.parse(stdin.readLineSync()!);

  print("Введите свой рост (метры): ");
  double height = double.parse(stdin.readLineSync()!);

  double bmi = calculateBMI(weight, height);
  print("Ваш BMI: $bmi");

  String result = getBMIResult(bmi);
  print("Интерпретация BMI: $result");
}

double calculateBMI(double weight, double height) {
  return weight / (height * height);
}

String getBMIResult(double bmi) {
  if (bmi < 18.5) {
    return "Недостаточная масса тела";
  } else if (bmi < 24.9) {
    return "Нормальная масса тела";
  } else if (bmi < 29.9) {
    return "Избыточная масса тела (предожирение)";
  } else if (bmi < 34.9) {
    return "Ожирение I степени";
  } else if (bmi < 39.9) {
    return "Ожирение II степени";
  } else {
    return "Ожирение III степени";
  }
}

