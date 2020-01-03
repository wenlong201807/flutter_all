/*
延迟加载功能：
    也称为懒加载，可以在需要的时候在进行加载。
    懒加载的最大的好处是可以减少app的启动时间。

    懒加载使用deferred as 关键字来指定，如下例子所示：
    import 'package:deferred/hello.dart' deferred as hello;

    当需要使用的时候，需要使用loadLibrary()方法来加载
 
    great() async{
      await hello.loadLibrary();
      hello.printGreeting();
    }

    *****其他的还有库的分片，part  export关键子的使用
*/
