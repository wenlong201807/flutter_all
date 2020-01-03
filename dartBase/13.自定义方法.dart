void printInfo() {
  print("我是自定义方法");
}

void main() {
  print("调用系统内置的方法");
  printInfo();

  int getNum() {
    var myNum = 123;
    return myNum;
  }

  var nn = getNum();
  print(nn);
}
