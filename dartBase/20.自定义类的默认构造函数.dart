

class Person {
  String name;
  int age;
  // Person(String name, int age) {
  //   // 与类名相同的一个函数，即为默认构造函数
  //   // 默认构造函数，是实例化的时候，自动触发该方法
  //   this.name = name;
  //   this.age = age;
  // }
  
  // 简写版默认构造函数
  Person(this.name,this.age);
  void printInfo() {
    print("${this.name}----${this.age}");
  }
}

void main() {
  Person p = new Person("张三", 22);
  print(p.name);
  p.printInfo();
// 同一个类，可以实例化多次
  Person p2 = new Person("李四", 23);
  print(p2.name);
  p2.printInfo();
}
