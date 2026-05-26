// class and object basics in dart:
class data{

String name = "Deven";
int age = 20;

}
void main() {

  data d = data(); // classname obj_name = classname();

  print("Name: ${d.name}");
  print("Age: ${d.age}");
}

// inheritance in dart:
class parent{
  void display(){
    print("This is parent class");
  }
}

class child extends parent{
  void show(){
    print("This is child class");
  }
}

void main() {

  child c = child();
  c.display();

// hybrid inheritance in dart:
// mixin is special feature that gives same attributes to multiples classes and use 'with' keyword

mixin Jump {
  void jump() {
    print("Jumping");
  }
}

class A with Jump {
  void display(){
    print("This is class A");
  }
}

void main() {
  A a = A();
  a.display();
  a.jump();
}

//# Encapsulation in dart:

class BankAccount {
  int _balance = 1000;

  void display() {
    print(_balance);
  }
}

class A extends BankAccount {
  void display() {
    print("This is class A");
  }
}

void main() {
  A b = A();

  b.display();
}
