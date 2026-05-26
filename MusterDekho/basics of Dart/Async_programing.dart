//Async programming in dart:
// void main() {
//   print("Downloading...");

//   Future.delayed(Duration(seconds: 5), () {
//     print("Downloaded");
//   });

//   print("Done");
// }


// My day - 2

// Error handleing in dart:

import 'dart:io';

void checkAge(int age) {

  if (age < 18) {
    throw Exception("Underage");
  }

  print("Allowed");
}

void main() {
  print("Enter your age:");
  try {
    checkAge(int.parse(stdin.readLineSync()!));
  } catch (e) {
    print(e);
  }
}