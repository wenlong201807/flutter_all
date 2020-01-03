import 'Db.dart';

class Mysql implements Db {
  @override
  String uri;

  Mysql(this.uri);
  @override
  add(String data) => print("这是mysql的add方法" + data);

  @override
  asve() {
    return null;
  }

  @override
  delete() {
    return null;
  }
}