/*
dart 中的抽象类
dart抽象类主要用于定义标准，子类可以继承抽象类，也可以实现抽象类接口

1.抽象类通过abstract  关键字来定义
2.dart中的抽象方法不能用abstract声明，dart中没有方法体的方法，我们称为抽象方法
3.如果子类继承抽象类必须的实现里面的抽象方法
4.如果把抽象类当作接口实现的话，必须的实现抽象类里面定义的多有属性和方法。
5.抽象类不能被实例化，只有继承它的子类可以

extends 抽象类 和 implements的区别；
1.如果要复用抽象类里面的方法，并且要用抽象方法约束子类的话，我们就用extends继承抽象类
2.如果只是把抽象类当作标准的话，我们就用implements实现首相类

案例：
   定义一个Animal类，要求它的子类必须包含eat方法

*/

abstract class Animal {
  eat(); // 抽象方法
  run(); // 抽象方法
  printInfo() {
    print('我是抽象类里面的普通方法');
  }
}

class Dog extends Animal {
  @override
  eat() {
    // 子类必须要有抽象父类的方法
    // TODO: implement eat
    // return null;
    print('小狗在吃骨头');
  }

  @override
  run() {
    // TODO: implement run
    print('小狗在pao');
  }
}

class Cat extends Animal {
  @override
  eat() {
    // 子类必须要有抽象父类的方法
    // TODO: implement eat
    // return null;
    print('小猫在吃鱼');
  }

  @override
  run() {
    // TODO: implement run
    print('小mao在跑');
  }
}

void main() {
  Dog d = new Dog();
  d.eat();
  d.run();
  d.printInfo(); // 抽象类里面的普通方法都可以调用
  Cat c = new Cat();
  c.eat();
  c.run();
  c.printInfo();
}
