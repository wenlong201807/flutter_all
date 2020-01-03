void main() {
  var str = 66;
  if (str is String) {
    print("我是字符串");
  } else if (str is int) {
    print("我是整形");
  } else {
    print("其他类型");
  }
}
