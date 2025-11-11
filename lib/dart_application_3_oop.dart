void main() {
  //ข้อ1
  List<String> animals = ["Tiger", "Lion", "Cat"];
  print(animals[1]);

  //ข้อ2
  animals.add("Dog");
  print(animals);

  //ข้อ3
  print("จำนวนสมาชิกใน List คือ ${animals.length}");

  // ข้อ4
  Map<String, int> studentScore = {"math": 90, "english": 85};

  print(studentScore["math"]);

  // ข้อ5
  Set<int> uniqueNumbers = {10, 20, 10, 30, 20};
  print(uniqueNumbers);

  // ข้อ6
  List<String> colors = ["Red", "Green", "Blue"];
  colors.removeAt(1);
  print(colors);

  // ข้อ7
  List<int> numbers = [5, 10, 15, 10];
  int index = numbers.indexOf(10);
  print("เลข 10 อยู่ที่ Index $index");

  //ข้อ8
  List<String> names = [];
  names.add("John");
  //names.add(123); // ❌ Error: The argument type 'int' can't be assigned to the parameter type 'String'.
  print(names);

  //ข้อ9
  for (String animal in animals) {
    print("Animal: $animal");
  }

  //ข้อ10
  bool hasScience = studentScore.containsKey("science");
  print(hasScience);

  //ข้อ11
  List<int> listA = [1, 2];
  List<int> listB = [3, 4];
  List<int> combined = [0, ...listA, ...listB, 5];
  print(combined);

  //ข้อ12
  bool isPremiumUser = false;
  List<String> features = [
    "Basic Feature",
    if (isPremiumUser) "Premium Feature",
  ];
  print(features);

  //ข้อ13
  List<int> original = [1, 2, 3];
  List<int> squares = [for (var n in original) n * n];
  print(squares);

  //ข้อ14
  studentScore.forEach((subject, score) {
    print("Subject: $subject, Score: $score");
  });

  //ข้อ15
  //Set ใน Dart จะเก็บ ค่าไม่ซ้ำกัน (unique) เท่านั้น ดังนั้นเมื่อเราพยายามใส่ [10, 20, 10, 30, 20]
  //10 → เพิ่มครั้งแรก
  //20 → เพิ่มครั้งแรก
  //10 → ซ้ำกับที่มีอยู่  ถูกละทิ้ง
  //30 → เพิ่มครั้งแรก
  //20 → ซ้ำกับที่มีอยู่  ถูกละทิ้ง
  //จึงเหลือเพียง {10, 20, 30}.
  //💡 สรุป: Set จะ ไม่เก็บค่าซ้ำ ทำให้สมาชิกที่ซ้ำถูกละทิ้งอัตโนมัติ.

  //---------------ฟังก์ชัน (Functions)---------------//
  //ข้อ1
  void printMyName() {
    print("T");
  }

  printMyName();

  //ข้อ2
  int getCurrentYear() {
    return DateTime.now().year;
  }

  int year = getCurrentYear();
  print(year);

  //ข้อ3
  int multiply(int a, int b) {
    return a * b;
  }

  //ข้อ4
  void sayGoodbye() => print("Goodbye!");
  sayGoodbye();

  //ข้อ5
  int result = multiply(10, 5);
  print(result);

  //ช้อ6
  void showUserDetails({String? name, int? age}) {
    print("Name: $name, Age: $age");
  }

  showUserDetails(name: "Alice", age: 25);
  showUserDetails(name: "Bob"); // age จะเป็น null
  showUserDetails(age: 30); // name จะเป็น null

  //ข้อ7
  showUserDetails(age: 30, name: "David");

  //ข้อ8
  void greet({required String name, String greeting = "Hello"}) {
    print("$greeting, $name");
  }

  greet(name: "Alice");
  greet(name: "Bob", greeting: "Hi");

  //ข้อ9
  void showUserDetails1({required String name, int? age}) {
    print("Name: $name, Age: $age");
  }

  showUserDetails1(name: "David", age: 30);
  showUserDetails1(name: "Alice");

  //ข้อ10
  List<int> numbers1 = [1, 2, 3];
  numbers1.forEach((number) {
    print("Number: $number");
  });

  //ข้อ11
  bool isEven(int number) => number % 2 == 0;
  print(isEven(4)); // true
  print(isEven(7)); // false

  //ข้อ12
  void logMessage(String message, [String level = "INFO"]) {
    print("[$level] $message");
  }

  logMessage("Error found"); // ใช้ค่า default ของ level
  logMessage("Critical error", "ERROR"); // ส่งค่า level ใหม่

  //ข้อ13
  void processNumbers(List<int> list, Function(int) action) {
    for (var number in list) {
      action(number);
    }
  }

  //ข้อ14
  void printSquare(int n) {
    print(n * n);
  }

  processNumbers(numbers, printSquare);

  //ข้อ15
  processNumbers(numbers, (n) {
    print("Value: $n");
  });
}
