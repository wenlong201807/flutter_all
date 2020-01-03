void main() {
  // var list = ["11", "22"];
  // list.forEach((value) {
  //   print(value);
  //   var aa = value + '66';
  //   print(aa);
  // });
  // 箭头函数写法
  // list.forEach((value) =>{
  //   print(value) // 只能打印一行，没有分号结尾
  // });

// map应用
  // List list = [4, 5, 2, 9, 3, 7, 6, 1];
  // var newList = list.map((v) {
  //   if (v > 3) {
  //     return v * 2;
  //   }
  //   return v;
  // });
  // print(newList.toList());
// map 箭头函数使用
  // var newListaa = list.map((v) => v > 4 ? v * 4 : v);
  // print(newListaa.toList());

// 判断一个数，是否是偶数
  bool isEvenNumber(int n) {
    if (n % 2 == 0) {
      return true;
    }
    return false;
  }

  print(isEvenNumber(58));

  // 打印小于n的偶数，并计算所有偶数的和
  printNum(int n) {
    var result = 0;
    for (var i = 1; i < n; i++) {
      if (isEvenNumber(i)) {
        print(i);
        result += i;
      }
    }
    return result;
  }
  print(printNum(58));



  
}
