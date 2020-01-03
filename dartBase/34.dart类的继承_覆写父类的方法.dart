import 'dart:io';

import '19.自定义类.dart';
import '30.类的继承-简单的继承.dart';

class Person {
  String name;
  num age;
  Person(this.name, this.age);
  void printInfo() {
    print("${this.name}---${this.age}");
  }

  work() {
    print("${this.name}在工作，，，");
  }
}

class Web extends Person {
  Web(String name, num age) : super(name, age);
  run() {
    print('run..');
    // 子类里面调用父类的方法
    super.work();
    // 使用父类的属性
    this.name;
    print(this.name);
  }

// 重写父类的printInfo方法
  @override // 覆写父类方法一般加上这个词
  void printInfo() {
    print("姓名：${this.name}---年龄：${this.age}");
  }

  // @override
  // work() {
  //   print("zizi....${this.name}在工作，，，");
  // }
}

void main() {
  Web w = new Web("里斯", 55);
  // 子类父类都有同名方法，执行子类的方法
  w.printInfo();
  // w.work();
  w.run();
}
