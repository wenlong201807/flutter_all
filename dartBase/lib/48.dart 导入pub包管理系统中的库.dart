/*
1.从下面网址找到要用的库
     https://pub.dev/packages
     https://pub.flutter-io.cn/packages
     https://pub.dartlang.org/flutter/

2.创建一个pubspec.yaml文件，内容如下
    name:xxx
    description:A new flutter module project.
    dependencies:
      http:^0.12.0+2
      date_format:^1.6.0

3.配置dependencies

4.运行 pub get 获取远程库

5.看文档引入库使用
*/

import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:date_format/date_format.dart';

void main() async {
   print(formatDate(DateTime(1989, 2, 21), [yyyy, '-', mm, '-', dd]));
  var url = 'http://www.phonegap100.com/appapi.php?a=getPortalList&catid=20&page=1';

  // Await the http get response, then decode the json-formatted response.
  var response = await http.get(url);
  if (response.statusCode == 200) {
    var jsonResponse = convert.jsonDecode(response.body);
    var itemCount = jsonResponse['totalItems'];
    print(itemCount);
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }
}
