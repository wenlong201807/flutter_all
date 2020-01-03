// 一个类中，可以写多个构造函数
class Person {
  String name;
  int age;
  // Person(String name, int age) {
  //   // 与类名相同的一个函数，即为默认构造函数
  //   // 默认构造函数，是实例化的时候，自动触发该方法
  //   this.name = name;
  //   this.age = age;
  // }

  // 简写版默认构造函数**实例化的时候调用
  Person(this.name, this.age);
  //命名构造函数
  Person.now() {
    print("我是命名构造函数");
  }
  Person.setInfo(String name, int age) {
    this.name = name;
    this.age = age;
  }
  void printInfo() {
    print("${this.name}----${this.age}");
  }
}

void main() {
  // 实例化DateTime，调用它的命名构造函数
  var d = new DateTime.now();
  print(d); //2019-12-29 10:46:31.891229
  // 实例化的时候调用默认构造函数
  Person p = new Person("张三", 22);
  print(p.name);
  p.printInfo();
  // 实例化的时候调用命名构造函数**可以写多个
  Person p3 = new Person.now();
  print(p3.name); // null // 没有赋值，默认为null
// 同一个类，可以定义多个命名构造函数
  Person p23 = new Person.setInfo("李四", 23);
  print(p23.name);
  p23.printInfo();
}
