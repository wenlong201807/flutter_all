import 'dart:math';

void main() {
  // 匿名方法的写法***传值方式和有名方法一样
  var fnn = () {
    print("我是匿名方法");
  };
  fnn();

  // 自执行方法
  ((String kk) {
    print("$kk---传参方式看看");
  })("aa");

  // 递归方法
  var sum = 1;
  fn(int n) {
    sum *= n;
    if (n == 1) {
      return;
    }
    fn(n - 1);
  }

  fn(6);
  print(sum);

  // 通过递归，求100的和
  var sunnn = 0;
  fnnn(int n) {
    sunnn += n;
    if (n == 0) {
      return;
    }
    fnnn(n - 1);
  }

  fnnn(100);
  print(sunnn);
}
