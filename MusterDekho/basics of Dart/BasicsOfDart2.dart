import 'dart:io';

void main() {


//# BMI Calculator:

  print("Enter W (in KG):");
  int w = int.parse(stdin.readLineSync()!);

  print("Enter H (in CM):");
  int h = int.parse(stdin.readLineSync()!);

print("calculate BMI");
double BMI = w / (h * h) * 10000;

print("Your BMI is: $BMI");

  if (BMI < 18.5) {
    print("Category: Underweight");
  }

  else if (BMI < 25) {
    print("Category: Fit");
  }

  else if (BMI < 30) {
    print("Category: Overweight");
  }

  else {
    print("Category: Obese");
  }

  }