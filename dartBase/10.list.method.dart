void main() {
  // List myList = ["香蕉", "苹果", "西瓜"];
  // print(myList.length);
  // print(myList.isEmpty);
  // print(myList.isNotEmpty);
  // print(myList.reversed); // 默认转字符串
  // print(myList.reversed.toString());
  // print(myList.reversed.toList());

  // List myList = ["香蕉", "苹果", "西瓜"];
  // myList.add("桃子");
  // myList.addAll(["sad", "asdff"]);
  // print(myList);
  // print(myList.indexOf("sad")); // 返回索引
  // print(myList.remove("sad"));
  // print(myList);

  List myList = ["香蕉", "苹果", "西瓜"];
  myList.fillRange(2, 3, "bb");
  print(myList);
  myList.insert(2,  "aa1");
  print(myList);
  myList.insertAll(1,  ["aa2","UUU"]);
  print(myList);
}
