//---------------การเขียนโปรแกรมเชิงวัตถุ (OOP) - ตอนที่ 1---------------//
import 'dart:math';

//ข้อ 1 (class)
class Car {
  // คลาสว่าง
}

//ข้อ 2 (class)
class Car2 {
  String? color;
  int? year;
}

//ข้อ 3 (class)
class Car3 {
  String? color;
  int? year;

  void drive() {
    print("The car is driving...");
  }
}

//ข้อ 4 (class)
class Car4 {
  String? color;
  int? year;

  void drive() {
    print("Driving the ${color ?? 'unknown'} car...");
  }
}

//ข้อ 5 (class)
class Car5 {
  String? color;
  int? year;

  void drive() {
    print("Driving the ${color ?? 'unknown'} car...");
  }

  static const int numberOfWheels = 4;
}

//ข้อ 6 (class)
class Book {
  String title;
  int pages;

  Book(this.title, this.pages);
}
//ข้อ 7 (class) (เหมือนกับข้อ 6)

//ข้อ 8 (class)
class MathHelper {
  static int add(int a, int b) => a + b;
}
//ข้อ 9 (class) (ไม่มี)

//ข้อ 10 (class)
class User {
  String username;

  // Constructor หลัก
  User(this.username);

  // Named Constructor
  User.guest() : username = "Guest";
}

//ข้อ 11 (class)

class Circle {
  double radius;

  Circle(this.radius);

  // Getter สำหรับพื้นที่
  double get area => pi * radius * radius;
}

//ข้อ 12 (class)
class BankAccount {
  double _balance = 0; // private

  // Setter deposit
  set deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
    }
  }
}

//ข้อ 13 (class)
class BankAccount13 {
  double _balance = 0;

  set deposit(double amount) {
    if (amount > 0) _balance += amount;
  }

  double get balance => _balance;
}

//ข้อ 14 (ไม่มี)

//ข้อ 15
class DatabaseConnection {
  static int connectionCount = 0;

  DatabaseConnection() {
    connectionCount++;
  }
}

//ข้อ 16 (ไม่มี)

void main() {
  //ข้อ 1
  Car myCar = Car();

  //ข้อ 2
  Car2 myCar2 = Car2();
  myCar2.color = "Red";
  print(myCar2.color); // Red

  //ข้อ 3
  Car3 myCar3 = Car3();
  myCar3.drive();

  //ข้อ 4
  Car4 myCar4 = Car4();
  myCar4.color = "Red";
  myCar4.drive();

  //ข้อ 5
  print(Car5.numberOfWheels);

  //ข้อ 6 (ว่าง)

  //ข้อ 7
  Book myBook = Book("Dart Basics", 200);
  print("${myBook.title}, ${myBook.pages} pages"); // Dart Basics, 200 pages

  //ข้อ 8 (ว่าง)

  //ข้อ 9
  int result = MathHelper.add(15, 30);
  print(result); // 45

  //ข้อ 10
  User guestUser = User.guest();
  print(guestUser.username); // Guest

  //ข้อ 11
  Circle circle = Circle(5);
  print(circle.area); // 78.53981633974483 (π*5*5)

  //ข้อ 12 (ว่าง)

  //ข้อ 13 (ว่าง)

  //ข้อ 14
  BankAccount13 myAccount = BankAccount13();

  myAccount.deposit = 100; // เพิ่ม 100
  myAccount.deposit = -50; // ไม่ถูกเพิ่ม เพราะ < 0

  print(myAccount.balance); // 100

  //ข้อ 15
  DatabaseConnection(); // 1
  DatabaseConnection(); // 2
  DatabaseConnection(); // 3

  print(DatabaseConnection.connectionCount); // 3
}
