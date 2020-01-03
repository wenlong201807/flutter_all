/*
?   条件运算符（了解）
as  类型转换
is  类型判断
..  级联操作（连缀**必须记住）
*/


class Person {
  String name;
  num age;
  Person(this.name, this.age);
  void printInfo() {
    print("${this.name}---${this.age}");
  }
}

void main() {
  // Person p;
  // p.printInfo(); // null

  // 保证程序正常运行
  // Person p;
  // p?.printInfo();

  Person p1 = new Person("张三", 22);
  p1?.printInfo();

  if (p1 is Person) {
    p1.name = "sadf";
  }
  p1.printInfo();
  print(p1 is Object);

  var p2;
  p2 = '';
  p2 = new Person("里斯", 33);
  (p2 as Person).printInfo();

  // Person p3 = new Person("wangwu", 66);
  // p3.printInfo();
  // p3.name = "asdf";
  // p3.age = 99;
  // p3.printInfo();
  // 连缀操作
  Person p3 = new Person("wangwu", 66);
  p3
    ..printInfo()
    ..name = "asdf"
    ..age = 99
    ..printInfo();
}
