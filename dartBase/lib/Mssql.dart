import 'Db.dart';

class Mssql implements Db {
  @override
  String uri;

  @override
  add(String data) {
    print("Mssql。。。。add。。" + data);
  }

  @override
  asve() {
    return null;
  }

  @override
  delete() {
    return null;
  }

  // 子类可以再自定义自己的方法或者属性
  remove() {
    print('mssql...remove.');
  }
}
