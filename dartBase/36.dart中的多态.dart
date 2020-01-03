/*
dart 中的多态
  1. 允许将子类类型的指针赋值给父类类型的指针，
       同一个函数调用会有不同的结果
  2. 子类的实例赋值给父类的引用
  3.  多态就是定义一个方法不去实现，让继承它的子类去实现，
      每一个子类有不同的表现

*/

abstract class Animal {
  eat(); // 抽象方法
  hh() {
    print("父类。。。hh()");
  }
}

class Dog extends Animal {
  @override
  eat() {
    // 子类必须要有抽象父类的方法
    print('小狗在吃骨头');
  }

  run() {
    print("dog。。。run");
  }
}

class Cat extends Animal {
  @override
  eat() {
    // 子类必须要有抽象父类的方法
    print('小猫在吃鱼');
  }
}

void main() {
  // Dog d = new Dog();
  // d.eat();
  // d.run();

  // Cat c = new Cat();
  // c.eat();
  // // c.run(); ** 没有的

  // 子类的实例，赋值给父类的引用
  Animal d = new Dog();
  d.eat();
  // 此时的d 没有了自己的run（）方法
  // 因为指针指到了父类中，父类中没有run(),
  d.hh(); // 指针在父类，可以调用父类中的属性，方法
}
