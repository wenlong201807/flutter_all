void main() {
  List list1 = new List();
  list1.add(12);
  print(list1);

  List list = new List<String>(); // 指定添加数据类型
  list.add('我是字符串');
  print(list);

  List list2 = new List<int>(); // 指定添加数据类型
  list2.add(66);
  print(list2);

  // 应用
  // PrintClass p = new PrintClass();
  // p.add(3);
  // p.add(6);
  // p.add(9);
  // p.printInfo();

  // 修改成泛型类之后
  PrintClass p = new PrintClass<int>();
  p.add(3);
  p.add(6);
  p.printInfo();

    // 修改成泛型类之后
  PrintClass p1 = new PrintClass<String>();
  p1.add('asdff');
  p1.add('adsfgasdg');
  p1.printInfo();
}

// 案例：把下面类型转换成泛型类，要求list里面可以增加int类型的数据，也可以增加string类型的数据
// class PrintClass {
//   List list = new List<int>();
//   void add(int value) {
//     this.list.add(value);
//   }

//   void printInfo() {
//     for (var i = 0; i < this.list.length; i++) {
//       print(this.list[i]);
//     }
//   }
// }

// 修改成泛型类之后
class PrintClass<T> {
  List list = new List<T>();
  void add(T value) {
    this.list.add(value);
  }

  void printInfo() {
    for (var i = 0; i < this.list.length; i++) {
      print(this.list[i]);
    }
  }
}
