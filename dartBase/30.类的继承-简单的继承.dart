/*
面向对象三大特性：封装，继承，多态
dart中的类的继承：
1.子类使用extends关键词来继承父类
2.子类会继承父类里面的可见的属性和方法，但是不会继承构造函数
3.子类能复写父类的方法getter和setter

*/

class Person {
  String name;
  num age;
  // Person(this.name, this.age); // 默认构造函数
  void printInfo() {
    print("${this.name}---${this.age}");
  }
}

class Web extends Person {

}

void main() {
  Web w = new Web();
  print(w.name);
  w.printInfo();
}
