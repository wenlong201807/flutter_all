// dart中一个类实现多个接口

abstract class A {
  String name;
  printA();
}

abstract class B {
  printB();
}

class C implements A, B {
  // 一个类实现多个接口的写法
  @override
  String name;

  @override
  printA() {
    print("aaa");
  }

  @override
  printB() {
  print("bbb");
  }
}

void main() {
  C c = new C();
  c.printA();
  c.printB();
}
