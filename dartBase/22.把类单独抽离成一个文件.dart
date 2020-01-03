import 'lib/Person.dart';
// 模块化，多人开发优势立即显示
void main() {
  Person p1 = new Person.setInfo("wen", 25);
  p1.printInfo();
}
