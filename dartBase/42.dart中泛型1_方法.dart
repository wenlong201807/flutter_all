// 通俗理解：泛型就是解决  类  接口  方法  复用性
//   以及对不特定数据类型的支持（类型校验）

// 只能返回string类型数据
import 'dart:ffi';

String getData(String value) {
  return value;
}

// 同时支持返回  string类型和int类型  （代码冗余）
// String getData1(String value) {
//   return value;
// }

// int getData2(int value) {
//   return value;
// }

// 同时返回 string类型和int类型
// 不指定类型可以解决这个问题
getData3(value) {
  /// 这个是问题版本
  return value;
}

// 不指定类型放弃了类型检查，
// 我们现在想实现的是传入什么，返回什么，
// 比如传入的number ，那么返回number
T getData4<T>(T value) { // 传入参数，返回数据类型都指定了
  /// 这个是问题版本
  return value;
}

 getData5<T>(T value) { // 传入参数指定了，返回数据类型没有指定
  /// 这个是问题版本
  return value;
}
void main() {
  print(getData4<int>(66));
  print(getData4<String>('我是字符串'));
  print(getData4<bool>(true));
}
