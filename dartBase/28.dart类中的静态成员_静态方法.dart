/*
dart 中的静态成员：
1.使用static 关键字来实现类级别的变量和函数
2.静态方法不能访问静态成员，非静态方法可以访问静态成员
*/

class Person {
  static String name = "张三";
  int age = 20;
  static void show() {
    print(name);
  }

  void printInfo() {
    // 调用非静态方法，需要new实例化获取对象
    // 非静态方法可以访问静态成员，以及非静态成员
    print("非静态方法");
    print(name); // 访问静态属性
    print(this.age); // 访问非静态属性
    // 非静态方法可以直接调用静态方法
    show();
  }

  static void printUserInfo() {
    // 静态方法***没法访问非静态属性，没法访问非静态方法 
    print(name); // 静态属性
    show(); // 静态方法
  }
}

void main() {
  // var p = new Person();
  // p.show();

  // 访问静态属性，静态方法，直接使用类名+.访问
  // 访问非静态属性，方法，需要通过new关键词，实例化类，才能访问

  // // 访问静态属性
  // print(Person.name);
  // // 访问静态方法
  // Person.show();

  Person p = new Person();
  p.printInfo();
  Person.printUserInfo(); // 静态方法调用，不需要new实例化，直接使用类名+.即可
}
