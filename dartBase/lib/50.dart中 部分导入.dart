/*
部分导入
   如果只需要导入库的一部分，有两种模式
  1.只导入需要的部分，使用show关键字，如下例子所示：
     import 'package:lib1/lib1.dart' show foo;
  2.隐藏不需要的部分，使用hide关键字，如下例子所示：
     import 'package:lib1/lib1.dart' hide foo;
*/

import './myMath.dart' show getName; // 只引入这一个方法，另外两个不能在这里使用
import './myMath.dart' hide getSex; // 只引藏这一个方法，另外两个能在这里使用

void main() {
  // getSex();
  // getAge();
  getName();
}
