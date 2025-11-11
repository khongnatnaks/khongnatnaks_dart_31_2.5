//---------------การเขียนโปรแกรมเชิงวัตถุ (OOP) - ตอนที่ 2---------------//
import 'dart:math';

//ข้อ 1 (class)
class Vehicle {
  void move() {
    print("Moving...");
  }
}

class Car extends Vehicle {
  // ตอนนี้ยังไม่ได้ override
}

//ข้อ 2 (class) (ไม่มี)
class Car2 extends Vehicle {
  @override
  void move() {
    print("Driving the car...");
  }
}

//ข้อ 3 (class)
class Car3 extends Vehicle {
  @override
  void move() {
    print("Driving the car...");
  }
}

//ข้อ 4 (enum)
enum TrafficLight { red, yellow, green }

//ข้อ 5 (class)
mixin Flyer {
  void fly() {
    print("I am flying!");
  }
}

class Bird with Flyer {}

//ข้อ 6 (class)
class Person {
  String name;
  Person(this.name);
}

class Student extends Person {
  int studentId;
  Student(String name, this.studentId) : super(name);
}

//ข้อ 7 (class)
abstract class Database {
  // abstract class
}

//ข้อ 8 (class)
abstract class Database8 {
  void connect(); // abstract method ไม่มี {}
}

//ข้อ 9 (class)
class MySQLDatabase extends Database {
  @override
  void connect9() {
    print("Connecting to MySQL...");
  }
}

//ข้อ 10 (class)
class Logger {
  void log(String message) {}
}

class ConsoleLogger implements Logger {
  @override
  void log(String message) {
    print("LOG: $message");
  }
}

//ข้อ 11 (class)
class Animal {
  void eat() {
    print("Animal is eating.");
  }
}

class Dog extends Animal {
  @override
  void eat() {
    super.eat(); // เรียกแม่ก่อน
    print("Dog is eating bones.");
  }
}
//ข้อ 12 (class) (ไม่มี)

//ข้อ 13 (class)
mixin Walker {
  void walk() {
    print("I am walking!");
  }
}

mixin Swimmer {
  void swim() {
    print("I am swimming!");
  }
}

class Duck with Walker, Swimmer {}

//ข้อ 14 (class) (ไม่มี)

//ข้อ 15 (class)
abstract class Shape {
  String color;

  Shape(this.color);

  double getArea(); // abstract method
}

class Circle extends Shape {
  double radius;

  Circle(this.radius, String color) : super(color);

  @override
  double getArea() => pi * radius * radius;
}

void main() {
  //ข้อ 1 (ว่าง)

  //ข้อ 2
  Car2 myCar2 = Car2();
  myCar2.move(); // Moving...

  //ข้อ 3
  Car3 myCar3 = Car3();
  myCar3.move(); // Driving the car...

  //ข้อ 4 (ว่าง)

  //ข้อ 5
  Bird bird = Bird();
  bird.fly(); // I am flying!

  //ข้อ 6
  Student s = Student("Alice", 101);
  print("${s.name}, ID: ${s.studentId}"); // Alice, ID: 101

  //ข้อ 7
  // var db = Database(); // ❌ Error!

  //ข้อ 8 (ว่าง)

  //ข้อ 9
  MySQLDatabase db = MySQLDatabase();
  db.connect9(); // Connecting to MySQL...

  //ข้อ 10
  ConsoleLogger logger = ConsoleLogger();
  logger.log("Hello World"); // LOG: Hello World

  //ข้อ 11
  Dog dog = Dog();
  dog.eat();

  //ข้อ 12
  //extends = สืบทอด, implements = ทำตามสัญญา (interface) ✅

  //ข้อ 13
  Duck duck = Duck();
  duck.walk(); // I am walking!
  duck.swim(); // I am swimming!

  //ข้อ 14
  void checkLight(TrafficLight light) {
    switch (light) {
      case TrafficLight.red:
        print("STOP");
        break;
      case TrafficLight.yellow:
        print("WAIT");
        break;
      case TrafficLight.green:
        print("GO");
        break;
    }
  }

  checkLight(TrafficLight.red); // STOP
  checkLight(TrafficLight.yellow); // WAIT
  checkLight(TrafficLight.green); // GO

  //ข้อ 15
  Circle circle = Circle(5, "Red");
  print("Color: ${circle.color}, Area: ${circle.getArea()}");
  // Color: Red, Area: 78.53981633974483
}
