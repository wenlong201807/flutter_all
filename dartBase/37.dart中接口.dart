/*

和java 一样，dart中也有接口，但是和java还是有区别的

 1. dart的接口没有interface关键字定义接口，而是普通类或者抽象类都可以作为接口被实现
    同样使用implements关键字进行实现。
 2. 但是，dart中接口有点奇怪，如果实现的类是普通类，会将普通类和抽象类中的属性的方法全部需要覆写一遍
 3. 而因为抽象类可以定义抽象方法，普通类不可以，
      所以一般如果要实现想java接口那样的方式，一般会使用抽象类
      建议使用抽象类定义接口。

案例：定义一个db库，支持mysq,mssql,mongodb
     mysq,mssql,mongodb 三个类里面都有同样的方法


*/

// import 'lib/Mysql.dart';
import 'lib/Mssql.dart';

void main() {
  // Mysql m = new Mysql('xxxxx');
  // m.add('666');

  Mssql ms = new Mssql();
  ms.uri = "127.0.0.1:80";
  ms.add('增加的数据');
  ms.remove();
}
