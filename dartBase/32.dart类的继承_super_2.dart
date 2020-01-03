/*
面向对象三大特性：封装，继承，多态
dart中的类的继承：
1.子类使用extends关键词来继承父类
2.子类会继承父类里面的可见的属性和方法，但是不会继承构造函数
3.子类能复写父类的方法getter和setter

*/

import '30.类的继承-简单的继承.dart';

class Person {
  String name;
  num age;
  Person(this.name, this.age);
  void printInfo() {
    print("${this.name}---${this.age}");
  }
}

class Web extends Person {
  String sex;
  Web(String name, num age, String sex) : super(name, age) {
    // 初始化构造函数；
    this.sex = sex; // 把当前值，赋值给web自己的sex属性
  }
  run() {
    print("${this.name}---${this.age}---${this.sex}");
  }
}

void main() {
  // Person p = new Person("zhangsan", 22);
  // p.printInfo();
  // Person p1 = new Person("zhangsan11", 2211);
  // p1.printInfo();

  Web w = new Web("asd", 55, '男');
  // 如果自己有这个方法，优先执行自己的方法，
  // 不执行其他，如果自己没有这个方法，
  // 那么从父类中寻找这个方法
  w.printInfo();
  w.run(); 
}
