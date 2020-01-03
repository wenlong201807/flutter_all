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