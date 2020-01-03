/*
dart中的泛型接口：
实现数据缓存的功能：有文件缓存，和内存缓存。
内存缓存和文件缓存按照接口的约束条件实现
1.定义一个泛型接口， 约束实现它的子类必须有getByKey(key)和setByKey(key,value)
2.要求setByKey的时候的value的类型和实例化子类的时候指定的类型一致
*/

// abstract class ObjectCache {
//   getByKey(String key);
//   void setByKey(String key, Object value);
// }

// abstract class StringCache {
//   getByKey(String key);
//   void setByKey(String key, String value);
// }

// //**** */ 定义泛型类型，消除代码冗余问题，而且可以支持类型校验

abstract class Cache<T> {
  getByKey(String key);
  void setByKey(String key, T value);
}

// 定义文件缓存类
class FileCache<T> implements Cache {
  @override
  getByKey(String key) {
    return null;
  }

  @override
  void setByKey(String key,  value) {
    // TODO: implement setByKey
    print('我是文件缓存 把key=${key} value=${value}的数据写入到了文件缓存中');
  }
}

class MemoryCache<T> implements Cache {
  @override
  getByKey(String key) {
    // TODO: implement getByKey
    return null;
  }

  @override
  void setByKey(String key,  value) {
    print('我是内存缓存 把key=${key} value=${value}的数据写入到了内存缓存中');
  }
}

void main() {
  // MemoryCache m = new MemoryCache<String>();
  // m.setByKey('index', '首页数据--内存缓存的');
  MemoryCache m = new MemoryCache<Map>();
  m.setByKey('index66', {"name":"zhu","age":22});
}
