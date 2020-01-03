// mixins 的实例类型是什么？
// 很简单，mixins的类型就是其超类的子类型。

class A {
  String info = "this is a";
  void printA() {
    print('a');
  }
}

class B {
  void printB() {
    print('b');
  }
}

class C with A, B {
  // c 具有了A,B的所有方法和属性
  // c只能继承自Object
}

void main() {
  // var c = new C();
  // print(c is C);
  // print(c is A);
  // print(c is B);

  var a = new A();
  print(a is Object);
}
