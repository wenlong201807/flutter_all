/*
async和await
这两个关键字的使用只需要记住两点：
1.只有async方法才能使用await关键字去调用方法
2.如果调用别的async方法，必须使用await关键字

async是让方法变成异步
await是等待异步执行完成
*/

void main()async {
  // var result = testAsync();
  // print(result);
  var result1 = await testAsync();
  print(result1);
}

testAsync() {
  return 'hello dart';
}
testAsync1() async{
  return 'hello dart';
}
