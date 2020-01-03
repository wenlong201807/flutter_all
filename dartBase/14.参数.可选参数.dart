void main() {
  print("参数，可选参数，默认参数");

  var n1 = sumNum(5);
  print(n1);
  var n2 = sumNum(50);
  print(n2);
  print(printUserInfo("wenlong", 20));
  print(printUserInfoaa("wenaa", 22));
  print(printUserInfoaabb("wenaa", "女", 25));
  print(printUserInfoaabbcc("wenaacc", sex: "女dg", age: 2545));
  fn2(fn1);
  fnn();
}

int sumNum(int n) {
  var sum = 0;
  for (var i = 0; i < n; i++) {
    sum += i;
  }
  return sum;
}

//带参数
String printUserInfo(String username, int age) {
  return "姓名： $username----年零：$age";
}

//可选参数
String printUserInfoaa(String username, [int age]) {
  if (age != null) {
    return "姓名： $username----年零：$age";
  }
  return "姓名： $username----年零保密";
}

//默认参数
String printUserInfoaabb(
  String username, [
  String sex = "男",
  int age,
]) {
  if (age != null) {
    return "姓名： $username-性别：$sex---年零：$age";
  }
  return "姓名： $username--性别：$sex--年零保密";
}

// 定义一个命名参数的方法
String printUserInfoaabbcc(String username, {String sex = "男", int age}) {
  if (age != null) {
    return "姓名： $username-性别：$sex---年零：$age";
  }
  return "姓名： $username--性别：$sex--年零保密";
}

//实现一个，把一个方法当作另一个函数的的参数的方法
fn1() {
  print("fn1--func");
}

fn2(fn) {
  fn();
  print("我是执行fn2函数内容的打印行");
}

var fnn = (){
  print("我是匿名方法");
};
