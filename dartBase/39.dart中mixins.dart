/*
mixins 的中文意思是混入，就是在类中混入其他功能

在dart中，可以使用mixins实现类似多继承的功能

因为在mixins使用的条件，随着dart版本一直在变，
// 这里讲的dart2.x 中使用的mixins的条件：
1.作为mixins的类只能继承子Object，不能继承其他类
2.作为mixins的类不能有构造函数
3.一个类可以mixins多个mixins类
4.mixins绝对不是继承，也不是接口，而是一种全新的特性
*/

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

// 没法实现多继承
// class C extends A,B{

// }

// 但是可以是先类似多继承的
class C with A, B {
  // c 具有了A,B的所有方法和属性
  // c只能继承自Object
}

void main() {
  var c = new C();
  print(c.info);
  c.printA();
  c.printB();
}
