/*
当引入两个库中相同名称标识的时候，如果是java，通常我们通过写上完整的包名路径来指定使用

import 'package:lib1/lib1.dart';
import 'package:lib2/lib2.dart' as lib2;

Element element1 = new Element(); // Uses Element from lib1.
lib2.Element element2 = new lib2.Element(); // Uses Element from lib2.
*/

import './Person1.dart';
import './Person2.dart' as lib;  // 取别名，避免不同库中的同名冲突

void main(List<String> args) {
  Person p1 = new Person("张三", 22);
  p1.printInfo();

  lib.Person p2 = new lib.Person("王五", 62);
  p2.printInfo();
}
