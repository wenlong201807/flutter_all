import 'lib/Animal.dart';

void main() {
  Animal a = new Animal("小狗", 3);
  // print(a._name); // 私有属性无法直接被访问
  print(a.age);
  print(a.getName());// 私有属性可以通过公有方法间接被玩不访问
  
}
