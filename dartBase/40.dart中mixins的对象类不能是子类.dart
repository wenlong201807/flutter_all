/*
mixins 的中文意思是混入，就是在类中混入其他功能

在dart中，可以使用mixins实现类似多继承的功能

因为在mixins使用的条件，随着dart版本一直在变，
// 这里讲的dart2.x 中使用的mixins的条件：
1.作为mixins的类只能继承子Object，不能继承其他类
        任意类型，都是Object类型
2.作为mixins的类不能有构造函数
3.一个类可以mixins多个mixins类
4.mixins绝对不是继承，也不是接口，而是一种全新的特性
*/

class Person {
  String pp = "i am person";
  Person(this.pp);
  printInfo() {
    print("这是一个Person类---${this.pp}");
  }
}

class A extends Person {
  // A 为Person 的子类，不能作为mixins的object类使用
  String info = "this is a";

  A(String pp) : super(pp);
  void printA() {
    print('a');
  }
}

class K {
  // A 为Person 的子类，不能作为mixins的object类使用
  String info = "this is a";
  void printA() {
    print('a');
  }

  run() {
    print('run----k');
  }
}

class B {
  void printB() {
    print('b');
  }

  run() {
    print('run----b');
  }
}

// 没法实现多继承
// class C extends A,B{

// }

// 但是可以是先类似多继承的
class C with B {
  //B,A
  // c 具有了A,B的所有方法和属性
  // c只能继承自Object
  // A是继承了某个类的子类，不能作为mixins的Object
}

class D extends Person with K, B {
  // k,b 都有共同的方法或者属性时，会使用后面的  这里的后面的是b的
  D(String pp) : super(pp); // 传入参数即可
// Person 可以有构造函数
}

void main() {
  // var c = new C();
  // print(c.info);
  // c.printA();
  // c.printB();

  var d = new D('hhhh');
  d.printInfo();
  print(d.pp);
  d.printB();
  d.run();
}
