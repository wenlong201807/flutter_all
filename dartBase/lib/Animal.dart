/*
dart中和其他的面向对象语言不一样，dart中没有public,private,protected这些访问修辞词
但是我么可以使用   _   把一个属性或者方法定义成私有的
*/

class Animal {
  String _name; // 编程私有属性，必须要抽成独立的文件，私有的属性或者方法就不能直接被外部访问
  int age;
  // 默认简写构造函数
  Animal(this._name, this.age);

  void printInfo() {
    print("${this._name}----${this.age}");
  }

  String getName() {
    // 私有属性可以通过公有方法间接被玩不访问

    // 通过共有方法，将私有方法暴露给外部使用
    this._run();
    return this._name;
  }

  // 私有方法，一般只能在内部访问，如果需要在外部被访问，需要借助共有方法调用对应的私有方法，再被访问
  void _run() {
    this._run(); // 类里面方法的互相调用
    print("我是私有方法，一般只能再内部被访问");
  }
}
