void main() {
  List myList = ["香蕉", "苹果", "西瓜"];
  // myList.forEach((value) {
  //   print("$value----");
  // });

  // 箭头函数写法
  myList.forEach((value) => {print("$value----")});

  // List mList = [1, 2, 3];
  // var newList = mList.map((v) {
  //   return v * 2;
  // });
  // print(newList);
  // print(newList.toList());

  // List mList = [1, 2, 3, 5];
  // var newList = mList.where((v) {
  //   return v > 2;
  // });
  // print(newList);
  // print(newList.toList());

  // List mList = [1, 2, 3, 5, 8, 10, 6];
  // var newList = mList.any((v) {
  //   // 只要有一个满足条件，就返回true
  //   return v > 2;
  // });
  // print(newList);

    List mList = [1, 2, 3, 5, 8, 10, 6];
  var newList = mList.every((v) {
    // 所有的满足时，才返回true
    return v > 2;
  });
  print(newList);
}
