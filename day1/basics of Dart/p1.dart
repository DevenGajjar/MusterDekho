// calss based mini project:

import 'dart:io';

class Vehicle {
  String name;
  bool available = true;

  Vehicle(this.name);

  void rent() {
    if (available) {
      available = false;
      print("$name rented");
    } else {
      print("$name already rented");
    }
  }

  void show() {
    print("$name - ${available ? "Available" : "Rented"}");
  }
}

class Car extends Vehicle {
  Car(String name) : super(name);
}

class Bike extends Vehicle {
  Bike(String name) : super(name);
}

void main() {
  List<Vehicle> vehicles = [
    Car("BMW"),
    Bike("RE"),
  ];

  while (true) {
    print("\n1. Show Vehicles");
    print("2. Rent Vehicle");
    print("3. Exit");

    int choice = int.parse(stdin.readLineSync()!);

    if (choice == 1) {
      for (int i = 0; i < vehicles.length; i++) {
        print("${i + 1}. ");
        vehicles[i].show();
      }
    }

    else if (choice == 2) {
      print("Enter vehicle number:");

      int num = int.parse(stdin.readLineSync()!);

      vehicles[num - 1].rent();
    }

    else if (choice == 3) {
      break;
    }
  }
}