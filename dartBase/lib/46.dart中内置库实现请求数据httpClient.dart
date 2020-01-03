/*
async和await
这两个关键字的使用只需要记住两点：
1.只有async方法才能使用await关键字去调用方法
2.如果调用别的async方法，必须使用await关键字

async是让方法变成异步
await是等待异步执行完成
*/

import 'dart:io';
import 'dart:convert';

void main() async {
  var result = await getDataFromZhihuAPI();
  print(result);
}

// api接口：http://news-at.zhihu.com/api/3/stories/latest
getDataFromZhihuAPI() async {
// 1.创建HttpClient对象
  var httpClient = new HttpClient();
//2.创建Uri对象
  var uri = new Uri.http('news-at.zhihu.com', '/api/3/stories/latest');
//3.发起请求，等待请求
  var request = await httpClient.getUrl(uri);
//4.关闭请求，等待响应
  var response = await request.close();
//5.解码响应内容
  return await response.transform(utf8.decoder).join();
}
