
import 'dart:io';
void main() {

// testing Dart:

  print("Enter a number:");
int num = int.parse(stdin.readLineSync()!);

if(num % 2 == 0){
  print("Even");
}
else{
  print("Odd");

}


// # password checker:

  print("Enter your password:");

  String password = stdin.readLineSync()!;

  bool hasUpper = false;
  bool hasLower = false;
  bool hasNumber = false;

  for (int i = 0; i < password.length; i++) {
    String ch = password[i];

    if (ch.contains(RegExp(r'[A-Z]'))) {
      hasUpper = true;
    }

    if (ch.contains(RegExp(r'[a-z]'))) {
      hasLower = true;
    }

    if (ch.contains(RegExp(r'[0-9]'))) {
      hasNumber = true;
    }
  }

  if (password.length >= 8 &&
      hasUpper &&
      hasLower &&
      hasNumber) {
    print("Strong Password");
  } else {
    print("Weak Password");
  }



}









