class Person {
  String name = "张三";
  int age = 20;
  void printInfo() {
    print("${this.name}----${this.age}");
  }

  void setInfo(int age) { // 指定参数类型
    this.age = age;
  }
}

void main() {
  // 实例化一个类
  Person p = new Person();
  print(p.name); // 使用类的属性
  p.printInfo(); // 使用类的方法
  p.setInfo(66);
  p.printInfo(); // 使用类的方法
}
